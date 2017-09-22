.class Lcom/android/settings/dndmode/x;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic abe:Lcom/android/settings/dndmode/v;

.field final synthetic abf:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/v;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/dndmode/x;->abe:Lcom/android/settings/dndmode/v;

    iput-object p2, p0, Lcom/android/settings/dndmode/x;->abf:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 163
    check-cast p1, Lmiui/preference/RadioButtonPreference;

    .line 164
    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/dndmode/x;->abf:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 166
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->abe:Lcom/android/settings/dndmode/v;

    invoke-static {v1}, Lcom/android/settings/dndmode/v;->b(Lcom/android/settings/dndmode/v;)V

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->abe:Lcom/android/settings/dndmode/v;

    invoke-static {v1}, Lcom/android/settings/dndmode/v;->d(Lcom/android/settings/dndmode/v;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 172
    iput v0, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 173
    iput v0, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 174
    iget-object v0, p0, Lcom/android/settings/dndmode/x;->abe:Lcom/android/settings/dndmode/v;

    invoke-static {v0}, Lcom/android/settings/dndmode/v;->a(Lcom/android/settings/dndmode/v;)Lmiui/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dndmode/x;->abe:Lcom/android/settings/dndmode/v;

    invoke-static {v1}, Lcom/android/settings/dndmode/v;->c(Lcom/android/settings/dndmode/v;)V

    goto :goto_0
.end method

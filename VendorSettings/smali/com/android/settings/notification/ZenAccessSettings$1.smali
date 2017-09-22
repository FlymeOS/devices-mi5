.class Lcom/android/vendorsettings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic akA:Ljava/lang/CharSequence;

.field final synthetic akB:Lcom/android/vendorsettings/notification/ZenAccessSettings;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->akB:Lcom/android/vendorsettings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->akA:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 136
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->akB:Lcom/android/vendorsettings/notification/ZenAccessSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->a(Lcom/android/vendorsettings/notification/ZenAccessSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->e(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 140
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 143
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/vendorsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->akA:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->b(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/vendorsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;->akB:Lcom/android/vendorsettings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

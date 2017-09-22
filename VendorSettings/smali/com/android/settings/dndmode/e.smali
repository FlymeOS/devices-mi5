.class Lcom/android/settings/dndmode/e;
.super Ljava/lang/Object;
.source "AlarmContentFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aaj:Lcom/android/settings/dndmode/c;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/c;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/dndmode/e;->aaj:Lcom/android/settings/dndmode/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/settings/dndmode/e;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v1}, Lcom/android/settings/dndmode/c;->a(Lcom/android/settings/dndmode/c;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/android/settings/dndmode/e;->aaj:Lcom/android/settings/dndmode/c;

    invoke-static {v1}, Lcom/android/settings/dndmode/c;->a(Lcom/android/settings/dndmode/c;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 78
    iput-boolean v0, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/dndmode/e;->aaj:Lcom/android/settings/dndmode/c;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method

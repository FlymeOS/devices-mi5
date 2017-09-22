.class Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModePrioritySettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/ZenModePrioritySettings;->a(Lcom/android/vendorsettings/notification/ZenModePrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/vendorsettings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xa8

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 76
    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/vendorsettings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v1, v2, :cond_0

    .line 77
    sget-boolean v0, Lcom/android/vendorsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowEvents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 79
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 80
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModePrioritySettings$2;->alj:Lcom/android/vendorsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/notification/ZenModePrioritySettings;->a(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method

.class Lcom/android/settings/notification/ZenModePrioritySettings$5;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic alj:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->a(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xab

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v1, v2, :cond_0

    .line 141
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowRepeatCallers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 143
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 144
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModePrioritySettings;->a(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method

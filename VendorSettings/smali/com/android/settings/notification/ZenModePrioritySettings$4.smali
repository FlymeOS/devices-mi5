.class Lcom/android/settings/notification/ZenModePrioritySettings$4;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/cO;


# instance fields
.field final synthetic alj:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModePrioritySettings;->a(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 113
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xaa

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 115
    if-eq v0, v4, :cond_2

    move v2, v1

    .line 116
    :goto_1
    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 119
    goto :goto_0

    .line 115
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 121
    :cond_3
    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowCalls="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allowCallsFrom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 124
    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 125
    iput v0, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->alj:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->a(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method

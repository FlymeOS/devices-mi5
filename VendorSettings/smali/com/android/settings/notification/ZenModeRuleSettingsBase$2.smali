.class Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/vendorsettings/cO;


# instance fields
.field final synthetic alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-boolean v0, v0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->ald:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->alk:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v0, v1, :cond_0

    .line 119
    sget-boolean v1, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange zenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->alk:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase$2;->alq:Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method

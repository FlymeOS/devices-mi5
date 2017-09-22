.class final Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$5;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    iget-object v1, p1, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;->akL:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 325
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 328
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)I
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$5;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$5;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 317
    check-cast p1, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    check-cast p2, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$5;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)I

    move-result v0

    return v0
.end method

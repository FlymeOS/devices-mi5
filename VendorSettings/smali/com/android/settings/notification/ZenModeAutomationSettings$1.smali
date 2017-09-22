.class Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;
.super Lcom/android/vendorsettings/notification/ZenRuleNameDialog;
.source "ZenModeAutomationSettings.java"


# instance fields
.field final synthetic akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/vendorsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/vendorsettings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/vendorsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0xad

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 101
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 102
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 103
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 104
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 105
    iget-object v1, p2, Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;->alW:Landroid/net/Uri;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 106
    iget-object v1, p2, Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 107
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    invoke-virtual {v3, v1}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->a(Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$1;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    iget-object v3, p2, Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;->alV:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;->alY:Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

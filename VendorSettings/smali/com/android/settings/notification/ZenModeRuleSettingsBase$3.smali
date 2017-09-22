.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeRuleSettingsBase.java"


# instance fields
.field final synthetic alq:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->alq:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->alq:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 217
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->alq:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->b(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 218
    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$3;->alq:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method

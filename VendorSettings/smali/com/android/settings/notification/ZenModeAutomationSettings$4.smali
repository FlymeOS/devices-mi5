.class Lcom/android/settings/notification/ZenModeAutomationSettings$4;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# instance fields
.field final synthetic akH:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->akH:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 305
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->a(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alV:Ljava/lang/String;

    const-string v3, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    if-ne v2, v3, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->akH:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->b(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ServiceListing;->g(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling external condition provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->akH:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->b(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/notification/ServiceListing;->a(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

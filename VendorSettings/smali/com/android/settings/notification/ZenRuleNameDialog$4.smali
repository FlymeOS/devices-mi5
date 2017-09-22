.class Lcom/android/settings/notification/ZenRuleNameDialog$4;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# instance fields
.field final synthetic alT:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-static {}, Lcom/android/settings/notification/ZenRuleNameDialog;->tb()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Services reloaded: count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleNameDialog;->h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    aput-object v6, v2, v3

    aput-object v6, v1, v0

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 210
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->a(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v3}, Lcom/android/settings/notification/ZenRuleNameDialog;->h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v3

    aput-object v0, v3, v1

    .line 213
    add-int/lit8 v0, v1, 0x1

    .line 214
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->i(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    .line 220
    return-void

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    .line 218
    goto :goto_0
.end method

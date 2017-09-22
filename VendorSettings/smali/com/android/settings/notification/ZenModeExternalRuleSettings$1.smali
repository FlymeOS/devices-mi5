.class Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeExternalRuleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic alb:Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;

.field final synthetic alc:Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings;Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings$1;->alc:Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings$1;->alb:Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings$1;->alc:Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings$1;->alb:Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;

    iget-object v2, v2, Lcom/android/vendorsettings/notification/ZenRuleNameDialog$RuleInfo;->alY:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/vendorsettings/notification/ZenModeExternalRuleSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return v3
.end method

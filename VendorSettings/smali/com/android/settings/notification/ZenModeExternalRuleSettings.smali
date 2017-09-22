.class public Lcom/android/settings/notification/ZenModeExternalRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeExternalRuleSettings.java"


# instance fields
.field private akZ:Landroid/preference/Preference;

.field private ala:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "automatic.ruleType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "automatic.defaultConditionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "automatic.configurationActivity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 115
    new-instance v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 116
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alX:Landroid/content/ComponentName;

    .line 117
    const-string v4, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v4, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alV:Ljava/lang/String;

    .line 118
    iput-object v1, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alU:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alW:Landroid/net/Uri;

    .line 120
    if-eqz v3, :cond_0

    .line 121
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alY:Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected b(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 101
    const-string v0, "automatic.conditionId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 102
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->alk:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->d(Landroid/net/Uri;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected sG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sH()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected sJ()V
    .locals 5

    .prologue
    .line 67
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/ZenModeAutomationSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->alk:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v1, v2, v3}, Lcom/android/settings/notification/ServiceListing;->a(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 71
    sget-boolean v2, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->a(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    .line 73
    sget-boolean v2, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuleInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->akZ:Landroid/preference/Preference;

    .line 75
    if-nez v1, :cond_3

    .line 76
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->akZ:Landroid/preference/Preference;

    const v3, 0x7f0c0a88

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 81
    :goto_0
    const-string v2, "configure"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->ala:Landroid/preference/Preference;

    .line 82
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alY:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->ala:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 94
    :goto_1
    return-void

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->akZ:Landroid/preference/Preference;

    iget-object v3, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->ala:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeExternalRuleSettings;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method protected sK()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x91

    return v0
.end method

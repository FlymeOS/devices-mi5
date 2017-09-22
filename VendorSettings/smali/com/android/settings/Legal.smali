.class public Lcom/android/settings/Legal;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Legal.java"


# instance fields
.field private oQ:Landroid/preference/Preference;

.field private oR:Landroid/preference/Preference;

.field private oS:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/Legal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/settings/Legal;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 43
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/iC;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 45
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/iC;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 47
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/iC;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 50
    const-string v0, "miuiCopyright"

    invoke-virtual {p0, v0}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Legal;->oQ:Landroid/preference/Preference;

    .line 51
    const-string v0, "miuiUserAgreement"

    invoke-virtual {p0, v0}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Legal;->oR:Landroid/preference/Preference;

    .line 52
    const-string v0, "miuiPrivacyPolicy"

    invoke-virtual {p0, v0}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Legal;->oS:Landroid/preference/Preference;

    .line 53
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/Legal;->oQ:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 68
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Legal;->oR:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 71
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/settings/Legal;->oS:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 74
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const v1, 0x7f0c0530

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 62
    :cond_0
    return-void
.end method

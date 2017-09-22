.class public Lcom/android/vendorsettings/AccessControlFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "AccessControlFragment.java"


# instance fields
.field private a:Z

.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private final f:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/android/vendorsettings/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/b;-><init>(Lcom/android/vendorsettings/AccessControlFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->f:Landroid/database/ContentObserver;

    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 78
    const-string v0, "privacy_mode_enable"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "privacy_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vendorsettings/AccessControlFragment;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/AccessControlFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/vendorsettings/AccessControlFragment;->g()V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/AccessControlFragment;)Landroid/security/ChooseLockSettingsHelper;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->d:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/vendorsettings/AccessControlFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->a:Z

    .line 56
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 57
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AccessControlFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    const-string v0, "ac_enable"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v0, "ac_privacy_mode"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->e:Landroid/preference/CheckBoxPreference;

    .line 62
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/AccessControlFragment;->a(Landroid/preference/PreferenceScreen;)V

    .line 64
    const-string v0, "ac_category"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 65
    iget-boolean v2, p0, Lcom/android/vendorsettings/AccessControlFragment;->a:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "ac_enable_phone"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v2, "ac_set_apps"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 70
    const-string v3, "ac_visiblepattern"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lcom/android/vendorsettings/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string v0, "privacy_mode_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 111
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v2, 0x7f0c1002

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    const v2, 0x7f0c1003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 118
    const v2, 0x104000a

    new-instance v3, Lcom/android/vendorsettings/c;

    invoke-direct {v3, p0, v0}, Lcom/android/vendorsettings/c;-><init>(Lcom/android/vendorsettings/AccessControlFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/vendorsettings/d;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/d;-><init>(Lcom/android/vendorsettings/AccessControlFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "confirm_purpose"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_3
    const-string v0, "ac_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/ChooseAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/AccessControlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 153
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const-string v1, "confirm_purpose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :cond_5
    const-string v0, "ac_enable_phone"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.TRANSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, "enter_way"

    const-string v2, "00005"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 162
    :cond_6
    const-string v0, "ac_privacy_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/vendorsettings/ConfirmAccessControl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    if-nez v0, :cond_7

    .line 166
    const-string v0, "confirm_purpose"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 169
    :cond_7
    const-string v0, "confirm_purpose"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/vendorsettings/AccessControlFragment;->g()V

    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 96
    iget-boolean v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->a:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlFragment;->e:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    return-void
.end method

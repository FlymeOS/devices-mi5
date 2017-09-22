.class public Lcom/android/settings/MiuiSecurityChooseUnlock;
.super Lcom/android/settings/Settings;
.source "MiuiSecurityChooseUnlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    .line 235
    return-void
.end method

.method private static U(I)I
    .locals 2

    .prologue
    const/high16 v0, 0x10000

    .line 227
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 232
    :cond_0
    return p0
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;)I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 220
    if-ge p0, v0, :cond_0

    move p0, v0

    .line 223
    :cond_0
    return p0
.end method

.method private static a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/SettingsPreferenceFragment;)I
    .locals 4

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;)I

    move-result v0

    .line 210
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->U(I)I

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method private static a(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/MiuiSecurityChooseUnlock;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;)V

    .line 194
    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string v1, ":settings:show_fragment_title"

    const v2, 0x7f0c0540

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 204
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    return-object v1
.end method

.method public static a(ILcom/android/settings/SettingsPreferenceFragment;)V
    .locals 12

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 116
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 119
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 121
    const/4 v1, 0x0

    .line 122
    const-wide/16 v2, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 124
    new-instance v4, Lcom/android/settings/cZ;

    invoke-direct {v4, v8}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/cZ;->isHardwareDetected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 126
    instance-of v5, v8, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 127
    const-string v1, "has_challenge"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    const-string v2, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 134
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/SettingsPreferenceFragment;)I

    move-result v4

    .line 135
    const/high16 v5, 0x20000

    if-lt v4, v5, :cond_8

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 137
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 138
    const/4 v5, 0x4

    .line 140
    :cond_1
    const/high16 v9, 0x40000

    if-le v4, v9, :cond_2

    .line 141
    const/high16 v4, 0x40000

    .line 144
    :cond_2
    const/high16 v9, 0x20000

    if-eq v4, v9, :cond_3

    const/high16 v9, 0x30000

    if-ne v4, v9, :cond_6

    .line 146
    :cond_3
    const/4 v0, 0x4

    .line 150
    :goto_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 151
    const-string v10, "lockscreen.password_type"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v4, "lockscreen.password_max"

    invoke-virtual {v9, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v0, "user_id_to_set_password"

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_id_to_set_password"

    const/16 v10, -0x2710

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v0, "use_lock_password_to_encrypt_device"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v0, "set_keyguard_password"

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "set_keyguard_password"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    if-eqz v1, :cond_4

    .line 159
    const-string v0, "has_challenge"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v0, "challenge"

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    :cond_4
    if-eqz v6, :cond_7

    .line 163
    const/16 v0, 0xc9

    invoke-virtual {p1, v9, v0}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    :cond_5
    :goto_1
    return-void

    .line 148
    :cond_6
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_7
    const/16 v0, 0xca

    invoke-virtual {p1, v9, v0}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 167
    :cond_8
    const/high16 v0, 0x10000

    if-ne v4, v0, :cond_b

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPattern;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v4, "key_lock_method"

    const-string v5, "pattern"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v4, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string v4, "user_id_to_set_password"

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "user_id_to_set_password"

    const/16 v9, -0x2710

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v4, "set_keyguard_password"

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "set_keyguard_password"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    if-eqz v1, :cond_9

    .line 176
    const-string v1, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v1, "challenge"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    :cond_9
    if-eqz v6, :cond_a

    .line 180
    const/16 v1, 0xc9

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 182
    :cond_a
    const/16 v1, 0xca

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 184
    :cond_b
    const v0, 0x8000

    if-ne v4, v0, :cond_5

    .line 185
    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;I)V
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string v1, "set_keyguard_password"

    const-string v3, "set_keyguard_password"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0541

    invoke-static {p0, v0, p1, v2, v1}, Lcom/android/settings/dB;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 54
    return-void
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;IIII)V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "use_lock_password_to_encrypt_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "set_keyguard_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v1, "set_keyguard_password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0540

    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/settings/dB;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v1, "set_keyguard_password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/SettingsPreferenceFragment;)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/SettingsPreferenceFragment;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/android/settings/SettingsPreferenceFragment;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 57
    const/high16 v0, 0x20000

    invoke-static {p0, p1, v1, v1, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/SettingsPreferenceFragment;IIII)V

    .line 58
    return-void
.end method

.method public static b(Lcom/android/settings/SettingsPreferenceFragment;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    sparse-switch p1, :sswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 99
    :sswitch_0
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0544

    invoke-static {p0, v0, p2, v2, v1}, Lcom/android/settings/dB;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 107
    :sswitch_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0543

    invoke-static {p0, v0, p2, v2, v1}, Lcom/android/settings/dB;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(Lcom/android/settings/SettingsPreferenceFragment;I)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x4

    .line 61
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 63
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 64
    if-ge v2, v1, :cond_0

    move v0, v1

    .line 66
    :goto_0
    invoke-static {p0, p1, v0, v3, v4}, Lcom/android/settings/MiuiSecurityChooseUnlock;->a(Lcom/android/settings/SettingsPreferenceFragment;IIII)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 41
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

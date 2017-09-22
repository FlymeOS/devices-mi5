.class public Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "MiuiSecurityChooseUnlock.java"


# instance fields
.field private dr:Lcom/android/vendorsettings/aH;

.field private ec:Z

.field private rT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ec:Z

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 410
    if-eqz p2, :cond_1

    const-string v2, "miui_security_fragment_result"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 412
    :goto_0
    const/16 v3, 0xca

    if-ne p1, v3, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 415
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 416
    const-string v4, "miui_security_fragment_result"

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 418
    check-cast v0, Lcom/android/vendorsettings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 420
    :cond_0
    return-void

    :cond_1
    move v2, v0

    .line 410
    goto :goto_0

    :cond_2
    move v0, v1

    .line 416
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-class v0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    .line 406
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object p3, v0

    .line 397
    goto :goto_0

    .line 399
    :cond_2
    const/16 v1, 0xca

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$InternalActivity;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->finish()V

    goto :goto_1

    :cond_4
    move-object p3, v0

    .line 403
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v2, -0x2710

    const/high16 v6, 0x20000

    const/4 v5, 0x0

    const/16 v4, 0xca

    .line 254
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 256
    new-instance v0, Lcom/android/vendorsettings/aH;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dr:Lcom/android/vendorsettings/aH;

    .line 257
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "second_user_id"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 259
    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dr:Lcom/android/vendorsettings/aH;

    invoke-virtual {v0}, Lcom/android/vendorsettings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/vendorsettings/dB;->i(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dr:Lcom/android/vendorsettings/aH;

    invoke-virtual {v0}, Lcom/android/vendorsettings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/vendorsettings/dB;->b(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 263
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_4

    .line 265
    const/high16 v0, 0x10000

    invoke-static {v0, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 288
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 289
    const-string v2, "common_password_business_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    .line 290
    const-string v2, "set_keyguard_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ec:Z

    .line 291
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 292
    invoke-static {v1, v0, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->b(ILandroid/app/admin/DevicePolicyManager;Lcom/android/vendorsettings/SettingsPreferenceFragment;)I

    move-result v0

    .line 293
    if-eq v0, v7, :cond_c

    if-eqz v0, :cond_c

    .line 294
    if-eq v0, v6, :cond_2

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->dr:Lcom/android/vendorsettings/aH;

    invoke-virtual {v1}, Lcom/android/vendorsettings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/dB;->e(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    .line 297
    const/high16 v0, 0x50000

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_b

    .line 301
    invoke-static {v0, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    .line 343
    :goto_1
    return-void

    .line 267
    :cond_4
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 269
    :cond_5
    if-eq v0, v6, :cond_6

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_8

    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    .line 272
    invoke-static {v6, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 274
    :cond_7
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->b(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 276
    :cond_8
    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_9

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_9

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 279
    :cond_9
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_a

    .line 280
    const/high16 v0, 0x40000

    invoke-static {v0, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto/16 :goto_0

    .line 282
    :cond_a
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->c(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto/16 :goto_0

    .line 304
    :cond_b
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 306
    :sswitch_0
    const v0, 0x8000

    invoke-static {v0, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto :goto_1

    .line 309
    :sswitch_1
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_1

    .line 313
    :sswitch_2
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->b(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_1

    .line 316
    :sswitch_3
    invoke-static {p0, v4}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->c(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_1

    .line 324
    :cond_c
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->addPreferencesFromResource(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    if-eqz v0, :cond_d

    .line 333
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_password"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 336
    :cond_d
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "skip_pattern_unlock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 337
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_pattern"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    :cond_e
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "unlock_set_biometric_weak"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->rT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->ec:Z

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setKeyguardPasswordQuality(I)V

    .line 355
    :cond_1
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 356
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/16 v3, 0xca

    .line 361
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 362
    const/4 v0, 0x1

    .line 364
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const v1, 0x8000

    invoke-static {v1, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    .line 388
    :goto_0
    return v0

    .line 366
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 368
    const/high16 v1, 0x10000

    invoke-static {v1, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {p0, v3}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 372
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 374
    const/high16 v1, 0x20000

    invoke-static {v1, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-static {p0, v3}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->b(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 378
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 379
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 380
    const/high16 v1, 0x40000

    invoke-static {v1, p0}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->a(ILcom/android/vendorsettings/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 382
    :cond_5
    invoke-static {p0, v3}, Lcom/android/vendorsettings/MiuiSecurityChooseUnlock;->c(Lcom/android/vendorsettings/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 385
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

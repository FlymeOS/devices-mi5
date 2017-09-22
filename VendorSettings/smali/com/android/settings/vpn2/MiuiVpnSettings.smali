.class public Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;
.super Lcom/android/vendorsettings/vpn2/VpnSettings;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aR:Z

.field private avT:Z

.field private avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

.field private avV:Ljava/lang/String;

.field private avW:Landroid/preference/CheckBoxPreference;

.field private avX:Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

.field private avY:Z

.field private avZ:Z

.field private awa:Lcom/android/vendorsettings/vpn2/AppPreference;

.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private mD:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private sR:Landroid/os/UserManager;

.field private tj:Lcom/android/vendorsettings/vpn2/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;-><init>()V

    .line 97
    new-instance v0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$1;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    return-void
.end method

.method private a(Lcom/android/vendorsettings/vpn2/AppPreference;)V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    .line 304
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bl(Z)V

    return-void
.end method

.method private b(Lcom/android/vendorsettings/vpn2/AppPreference;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 682
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vO()V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avY:Z

    .line 685
    iput-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avZ:Z

    .line 687
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 688
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/AppPreference;->setChecked(Z)V

    .line 691
    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mD:Z

    return p1
.end method

.method private bl(Z)V
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/VpnUtils;->cm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 243
    const/4 v2, 0x0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_0
    if-eqz p1, :cond_2

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 253
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    const-string v3, "MiuiVpnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when updateVpnState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    .line 257
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/vpn2/VpnManager;->a(Lcom/android/internal/net/VpnProfile;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 259
    const-string v1, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when connect vpn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    :cond_2
    if-eqz v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private bm(Z)V
    .locals 2

    .prologue
    .line 447
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 448
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 449
    if-nez p1, :cond_0

    .line 450
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 451
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 452
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bo(Z)V

    .line 454
    :cond_0
    return-void

    .line 450
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private bn(Z)V
    .locals 1

    .prologue
    .line 457
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 458
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bo(Z)V

    .line 460
    return-void
.end method

.method private bo(Z)V
    .locals 3

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avT:Z

    return p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bn(Z)V

    return-void
.end method

.method private di(I)V
    .locals 2

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_0

    .line 636
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avW:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 638
    :goto_0
    return-void

    .line 633
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avW:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/android/internal/net/VpnProfile;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 667
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vO()V

    .line 669
    iput-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avY:Z

    .line 670
    iput-boolean v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avZ:Z

    .line 672
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 673
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vendorsettings/vpn2/VpnUtils;->a(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 677
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private vJ()V
    .locals 5

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v2, v0, v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    .line 284
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "MiuiVpnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when disconnect vpn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    instance-of v3, v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v3, :cond_1

    .line 292
    check-cast v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 293
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Lcom/android/vendorsettings/vpn2/AppPreference;)V

    goto :goto_2

    .line 297
    :cond_3
    return-void
.end method

.method private vK()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    new-instance v0, Lcom/android/vendorsettings/aH;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 311
    invoke-virtual {v0}, Lcom/android/vendorsettings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 313
    :sswitch_0
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c0544

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 321
    :sswitch_1
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c0543

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 311
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

.method private vL()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 441
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vpn_password_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    move v2, v0

    .line 443
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bn(Z)V

    .line 444
    return-void

    :cond_0
    move v2, v1

    .line 441
    goto :goto_0

    :cond_1
    move v0, v1

    .line 443
    goto :goto_1
.end method

.method private vN()V
    .locals 3

    .prologue
    .line 622
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 624
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method private vO()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/AppPreference;->setChecked(Z)V

    .line 649
    :cond_1
    iput-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avY:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avZ:Z

    .line 653
    iput-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 654
    iput-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 655
    return-void
.end method

.method private vP()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 658
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avU:Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setChecked(Z)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/AppPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 390
    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    .line 391
    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 392
    const-string v1, "profile_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    const-string v2, "profile_delete"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 394
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 399
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 400
    if-eqz v2, :cond_2

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v2, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dt:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 406
    const-string v0, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete vpn config, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dt:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 412
    if-eqz v0, :cond_3

    .line 413
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->update()V

    .line 430
    :goto_1
    iget-object v0, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avV:Ljava/lang/String;

    goto :goto_0

    .line 416
    :cond_3
    new-instance v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awh:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 417
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v1, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$2;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->c(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    const-string v0, "MiuiVpnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add vpn config, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    :cond_4
    if-nez p1, :cond_0

    .line 433
    const-string v0, "miui_security_fragment_result"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vL()V

    goto/16 :goto_0
.end method

.method protected a(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 6

    .prologue
    .line 490
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 491
    const-string v0, "profile"

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 492
    const-string v0, "profile_key"

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "profile_add"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-class v0, Lcom/android/vendorsettings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 495
    return-void
.end method

.method protected d(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    .line 487
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avQ:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vN()V

    .line 554
    iput-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avV:Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    .line 560
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 561
    if-eqz v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 563
    if-eqz v0, :cond_0

    .line 564
    iget v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setState(I)V

    .line 565
    iput-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 571
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    .line 572
    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 575
    if-eqz v0, :cond_1

    .line 576
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const-string v1, "MiuiVpnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when handling message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vP()V

    .line 588
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->di(I)V

    .line 590
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avQ:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 376
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 377
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bm(Z)V

    .line 386
    :cond_0
    :goto_1
    return-void

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_2
    if-nez p1, :cond_3

    .line 380
    if-ne p2, v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vL()V

    goto :goto_1

    .line 383
    :cond_3
    if-eqz p3, :cond_0

    .line 384
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->sR:Landroid/os/UserManager;

    .line 110
    new-instance v0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avX:Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->sR:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean v5, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->aR:Z

    .line 113
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 143
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 119
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    .line 121
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 123
    new-instance v0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avX:Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    .line 124
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 125
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vpn_password_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string v0, "vpn_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avW:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v1, "android.net.vpn.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    invoke-direct {p0, v4}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bo(Z)V

    .line 131
    if-nez v1, :cond_1

    .line 132
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const-string v2, "default_password"

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 499
    const v0, 0x7f0c092c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 502
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onDestroy()V

    .line 204
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->aR:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 478
    :cond_0
    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    move v0, v2

    .line 481
    :goto_1
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 601
    const-string v0, "vpn_password_enable"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :cond_0
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 610
    instance-of v0, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 611
    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 612
    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->e(Lcom/android/internal/net/VpnProfile;)Z

    .line 614
    :cond_0
    instance-of v0, p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 615
    check-cast p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 616
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->b(Lcom/android/vendorsettings/vpn2/AppPreference;)Z

    .line 618
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "vpn_password_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avX:Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 237
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vK()V

    goto :goto_0

    .line 221
    :cond_2
    const-string v1, "vpn_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 222
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 223
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 224
    if-eqz v0, :cond_5

    .line 225
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avY:Z

    if-eqz v0, :cond_3

    .line 226
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bl(Z)V

    goto :goto_0

    .line 227
    :cond_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avZ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awa:Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Lcom/android/vendorsettings/vpn2/AppPreference;)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0ec4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 233
    :cond_5
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vJ()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    const-string v1, "show_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mD:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avX:Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    iget-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mD:Z

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->aR:Z

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 165
    if-eqz v0, :cond_1

    .line 166
    const v1, 0x7f0c0651

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avT:Z

    if-eqz v0, :cond_4

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avT:Z

    .line 173
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->bn(Z)V

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vQ()I

    move-result v0

    if-nez v0, :cond_7

    .line 177
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vM()V

    .line 185
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avV:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avV:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 187
    if-eqz v0, :cond_6

    .line 188
    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->e(Lcom/android/internal/net/VpnProfile;)Z

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vpn_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->avW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/VpnUtils;->cm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 195
    :cond_9
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/vendorsettings/vpn2/VpnSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "show_dialog"

    iget-boolean v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->mD:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    const-string v1, "saved_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method protected vM()V
    .locals 8

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    .line 506
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 508
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 509
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 511
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->dt:Landroid/security/KeyStore;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v2}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->a(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 512
    new-instance v3, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awh:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 514
    invoke-virtual {v3, p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 515
    new-instance v4, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$3;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings$3;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->c(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awd:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v4, "MiuiVpnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show vpn config, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 529
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    new-instance v4, Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/android/vendorsettings/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 532
    invoke-virtual {v4, p0}, Lcom/android/vendorsettings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 537
    :cond_1
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnSettings;->vO()V

    .line 544
    return-void
.end method

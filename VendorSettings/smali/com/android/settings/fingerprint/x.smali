.class public Lcom/android/vendorsettings/fingerprint/x;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private abp:[B

.field private acl:Landroid/os/CancellationSignal;

.field private acm:Z

.field private acn:Z

.field private aco:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private acp:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private final acq:Ljava/lang/Runnable;

.field private dD:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private nM:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/android/vendorsettings/fingerprint/y;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/y;-><init>(Lcom/android/vendorsettings/fingerprint/x;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->aco:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 161
    new-instance v0, Lcom/android/vendorsettings/fingerprint/z;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/z;-><init>(Lcom/android/vendorsettings/fingerprint/x;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acp:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 177
    new-instance v0, Lcom/android/vendorsettings/fingerprint/A;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/A;-><init>(Lcom/android/vendorsettings/fingerprint/x;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->mHandler:Landroid/os/Handler;

    .line 525
    new-instance v0, Lcom/android/vendorsettings/fingerprint/C;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/C;-><init>(Lcom/android/vendorsettings/fingerprint/x;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acq:Ljava/lang/Runnable;

    .line 634
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;I)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/x;->cd(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/fingerprint/x;->f(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/x;->c(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/x;Z)Z
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/vendorsettings/fingerprint/x;->acm:Z

    return p1
.end method

.method private b(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .prologue
    .line 411
    new-instance v0, Lcom/android/vendorsettings/fingerprint/G;

    invoke-direct {v0}, Lcom/android/vendorsettings/fingerprint/G;-><init>()V

    .line 412
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 413
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fingerprint/G;->setArguments(Landroid/os/Bundle;)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/vendorsettings/fingerprint/G;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/fingerprint/G;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fingerprint/G;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qI()V

    return-void
.end method

.method private c(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->acp:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 518
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qG()V

    return-void
.end method

.method private static cc(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cd(I)V
    .locals 6

    .prologue
    .line 478
    invoke-static {p1}, Lcom/android/vendorsettings/fingerprint/x;->cc(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fingerprint/w;

    .line 480
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->el()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/w;->getView()Landroid/view/View;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 485
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 487
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 488
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vendorsettings/fingerprint/B;

    invoke-direct {v2, p0, v0}, Lcom/android/vendorsettings/fingerprint/B;-><init>(Lcom/android/vendorsettings/fingerprint/x;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/fingerprint/x;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private d(Landroid/preference/PreferenceGroup;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 329
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    .line 330
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 331
    :goto_0
    if-ge v1, v4, :cond_0

    .line 332
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 333
    new-instance v5, Lcom/android/vendorsettings/fingerprint/w;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/vendorsettings/fingerprint/w;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/vendorsettings/fingerprint/x;->cc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/fingerprint/w;->setKey(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vendorsettings/fingerprint/w;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {v5, v0}, Lcom/android/vendorsettings/fingerprint/w;->a(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 337
    invoke-virtual {v5, v2}, Lcom/android/vendorsettings/fingerprint/w;->setPersistent(Z)V

    .line 338
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    invoke-virtual {v5, p0}, Lcom/android/vendorsettings/fingerprint/w;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 342
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 343
    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 344
    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 345
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qI()V

    .line 348
    return-void
.end method

.method private el()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->nM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->nM:Landroid/graphics/drawable/Drawable;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->nM:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private eo()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->hu()Landroid/preference/PreferenceScreen;

    .line 376
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qG()V

    .line 377
    return-void
.end method

.method private f(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(ILjava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->eo()V

    .line 523
    return-void
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 321
    :cond_0
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->addPreferencesFromResource(I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 323
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->d(Landroid/preference/PreferenceGroup;)V

    .line 324
    return-object v0
.end method

.method private qF()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    .line 214
    return-void
.end method

.method private qG()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acm:Z

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/fingerprint/x;->aco:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 249
    :cond_0
    return-void
.end method

.method private qH()Z
    .locals 2

    .prologue
    .line 292
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 294
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qI()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0099

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 354
    iget-object v3, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_0

    move v3, v1

    .line 355
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0211

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_1
    const-string v4, "key_fingerprint_add"

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/fingerprint/x;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 358
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    if-nez v3, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    return-void

    :cond_0
    move v3, v2

    .line 354
    goto :goto_0

    .line 355
    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    move v0, v2

    .line 359
    goto :goto_2
.end method

.method private qJ()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 499
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 500
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 501
    new-instance v1, Lcom/android/vendorsettings/aH;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 502
    const/16 v2, 0x65

    const v3, 0x7f0c01eb

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/fingerprint/x;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/vendorsettings/aH;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/vendorsettings/ChooseLockGeneric;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "hide_disabled_prefs"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    const-string v1, "challenge"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 512
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    :cond_0
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 433
    const v0, 0x7f0c09c1

    return v0
.end method

.method protected c(ILjava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acl:Landroid/os/CancellationSignal;

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    .line 236
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qG()V

    .line 241
    :pswitch_1
    return-void

    .line 225
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acm:Z

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->acq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->acq:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected cb(I)V
    .locals 4

    .prologue
    .line 299
    invoke-static {p1}, Lcom/android/vendorsettings/fingerprint/x;->cc(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove preference with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find preference to remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/android/vendorsettings/fingerprint/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 439
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 441
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 443
    :cond_1
    if-eqz p3, :cond_2

    .line 444
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    if-nez v0, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 454
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    .line 262
    const-string v0, "launched_confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acn:Z

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    .line 271
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acn:Z

    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/x;->acn:Z

    .line 273
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qJ()V

    .line 275
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 458
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 459
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/x;->dD:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 461
    if-gez v0, :cond_0

    .line 462
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 382
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qF()V

    .line 383
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 421
    const/4 v0, 0x1

    .line 422
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 423
    const-string v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :goto_0
    return v0

    .line 426
    :cond_0
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 400
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->startActivityForResult(Landroid/content/Intent;I)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 401
    :cond_1
    instance-of v0, p2, Lcom/android/vendorsettings/fingerprint/w;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 402
    check-cast v0, Lcom/android/vendorsettings/fingerprint/w;

    .line 403
    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/w;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 404
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/x;->b(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 405
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->eo()V

    .line 372
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 387
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/x;->abp:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 389
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/vendorsettings/fingerprint/x;->acn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/x;->qH()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c020f

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fingerprint/x;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->ay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/fingerprint/x;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/vendorsettings/fingerprint/FingerprintSettings$LearnMoreSpan;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/x;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 289
    return-void

    .line 282
    :cond_0
    const v1, 0x7f0c020e

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x31

    return v0
.end method

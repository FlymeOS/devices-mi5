.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aN:Landroid/os/UserManager;

.field private aR:Z

.field private je:Landroid/net/wifi/WifiManager;

.field private tS:Lcom/android/settings/wifi/ad;

.field private tT:Landroid/preference/CheckBoxPreference;

.field private tU:[Ljava/lang/String;

.field private tV:[Ljava/lang/String;

.field private tW:Landroid/preference/Preference;

.field private uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private ua:Lcom/android/settings/wifi/ac;

.field private ub:Landroid/net/wifi/WifiConfiguration;

.field private uc:I

.field private ud:[Ljava/lang/String;

.field private uq:Landroid/preference/CheckBoxPreference;

.field private ur:Landroid/preference/CheckBoxPreference;

.field private us:[Ljava/lang/String;

.field private ut:[Ljava/lang/String;

.field private uu:Ljava/util/concurrent/atomic/AtomicReference;

.field private uv:Z

.field private uw:Z

.field private ux:Z

.field private uy:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->uc:I

    .line 281
    new-instance v0, Lcom/android/settings/hT;

    invoke-direct {v0, p0}, Lcom/android/settings/hT;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 302
    return-void
.end method

.method private P(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 672
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 682
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static W(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 562
    invoke-static {p0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static X(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 570
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    aget-object v5, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const/high16 v2, 0x10000

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private Y(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 602
    iput p1, p0, Lcom/android/settings/TetherSettings;->uc:I

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ud:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ud:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->uc:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->gd()V

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 741
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 742
    array-length v5, p1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 743
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 748
    :goto_2
    return-object v0

    .line 742
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 748
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 3

    .prologue
    .line 579
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c103e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/hV;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/hV;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/hU;

    invoke-direct {v2, p0}, Lcom/android/settings/hU;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 598
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->Y(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->ux:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 429
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 431
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->uw:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->ux:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 432
    :goto_0
    const/4 v5, 0x0

    .line 433
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 434
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 435
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    if-nez v2, :cond_0

    .line 437
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 434
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 431
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 433
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 442
    :cond_3
    const/4 v4, 0x0

    .line 443
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    .line 444
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 445
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 444
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 443
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 448
    :cond_6
    const/4 v2, 0x0

    .line 449
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    .line 450
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 451
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    .line 450
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 449
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 455
    :cond_9
    if-eqz v4, :cond_b

    .line 456
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ed

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 484
    :cond_a
    :goto_7
    return-void

    .line 459
    :cond_b
    if-eqz v1, :cond_e

    .line 462
    if-eqz v5, :cond_c

    const/16 v0, 0x10

    if-ne v5, v0, :cond_d

    .line 463
    :cond_c
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ec

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 467
    :goto_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 470
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 465
    :cond_d
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 471
    :cond_e
    if-eqz v2, :cond_f

    .line 472
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 475
    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->ux:Z

    if-eqz v0, :cond_10

    .line 476
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ee

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 480
    :cond_10
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ef

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->uw:Z

    return p1
.end method

.method private c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 488
    .line 489
    array-length v5, p3

    move v4, v3

    move v2, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p3, v4

    .line 490
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->ut:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    .line 491
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    .line 490
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 496
    if-nez v0, :cond_3

    .line 531
    :goto_2
    return-void

    .line 498
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 499
    const/16 v0, 0xd

    if-ne v4, v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 502
    :cond_4
    const/16 v0, 0xb

    if-ne v4, v0, :cond_5

    .line 503
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 507
    const/16 v5, 0xc

    if-ne v4, v5, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 509
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 511
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 512
    if-le v0, v1, :cond_6

    .line 513
    const v2, 0x7f0c04f5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 517
    :cond_6
    if-ne v0, v1, :cond_7

    .line 518
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 520
    :cond_7
    if-eqz v2, :cond_8

    .line 521
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 523
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 526
    :cond_9
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->uv:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->uv:Z

    return p1
.end method

.method private gc()V
    .locals 8

    .prologue
    const v7, 0x7f0c036f

    const v4, 0x11070045

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 251
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    .line 252
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->tV:[Ljava/lang/String;

    .line 255
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    .line 257
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_1
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->gf()V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 275
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private gd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 641
    iget v0, p0, Lcom/android/settings/TetherSettings;->uc:I

    packed-switch v0, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/ad;->bH(Z)V

    goto :goto_0

    .line 647
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 649
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->uv:Z

    .line 650
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 651
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 655
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 660
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->P(Z)V

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 411
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 414
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 418
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 812
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->gf()V

    .line 815
    :cond_0
    return-void
.end method

.method public ay()I
    .locals 1

    .prologue
    .line 792
    const v0, 0x7f0c09ba

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 776
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 779
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 783
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 784
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c036f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    :cond_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 614
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 615
    if-nez p1, :cond_2

    .line 616
    if-ne p2, v1, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/TetherSettings;->uc:I

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->f(Landroid/content/Context;I)V

    .line 618
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->gd()V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->uc:I

    packed-switch v0, :pswitch_data_0

    .line 630
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->uc:I

    goto :goto_0

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 634
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 635
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TetherSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 752
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ua:Lcom/android/settings/wifi/ac;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ac;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 754
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 762
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 766
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 767
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c036f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    :cond_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    const-string v0, "TETHER_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/TetherSettings;->uc:I

    .line 172
    :cond_0
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 174
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->aN:Landroid/os/UserManager;

    .line 176
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->aN:Landroid/os/UserManager;

    const-string v3, "no_config_tethering"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->aR:Z

    .line 179
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 241
    :goto_0
    return-void

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 184
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 190
    :cond_3
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    .line 192
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 193
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    .line 194
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    .line 196
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 199
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->us:[Ljava/lang/String;

    .line 200
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->tU:[Ljava/lang/String;

    .line 201
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ut:[Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->us:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->tU:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_7

    move v3, v1

    .line 205
    :goto_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ut:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_8

    move v4, v1

    .line 207
    :goto_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_5
    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-nez v0, :cond_9

    .line 214
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->gc()V

    .line 215
    new-instance v0, Lcom/android/settings/wifi/ad;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v5, v3}, Lcom/android/settings/wifi/ad;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    .line 222
    :goto_4
    if-nez v4, :cond_a

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ud:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 203
    goto :goto_1

    :cond_7
    move v3, v2

    .line 204
    goto :goto_2

    :cond_8
    move v4, v2

    .line 205
    goto :goto_3

    .line 218
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 225
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 226
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/android/settings/wifi/ac;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/ac;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->ua:Lcom/android/settings/wifi/ac;

    .line 296
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ua:Lcom/android/settings/wifi/ac;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 534
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 536
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 539
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 540
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    .line 541
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    move v1, v2

    .line 542
    :goto_0
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 543
    invoke-direct {p0, v4, v0}, Lcom/android/settings/TetherSettings;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    .line 558
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 541
    goto :goto_0

    .line 546
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->Y(I)V

    :goto_2
    move v3, v2

    .line 558
    goto :goto_1

    .line 551
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/ad;->bH(Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 686
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 689
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 690
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 692
    if-eqz v0, :cond_1

    .line 693
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->Y(I)V

    .line 737
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 698
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->P(Z)V

    goto :goto_0

    .line 700
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 701
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 703
    if-eqz v1, :cond_4

    .line 704
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->Y(I)V

    goto :goto_0

    .line 706
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 711
    :cond_5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 712
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ut:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 719
    if-eqz v0, :cond_6

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 720
    :cond_6
    if-eqz v3, :cond_7

    .line 721
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 726
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tW:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 729
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 730
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_9

    .line 731
    const-string v0, "config"

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 733
    :cond_9
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TetherSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    :cond_a
    move v3, v5

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 245
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->uc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 356
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 359
    if-eqz v0, :cond_0

    .line 360
    const v1, 0x7f0c0652

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 367
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->ux:Z

    .line 368
    new-instance v1, Lcom/android/settings/hW;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/hW;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/hT;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 372
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ad;->resume()V

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 399
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->uy:Landroid/content/BroadcastReceiver;

    .line 404
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ad;->pause()V

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x5a

    return v0
.end method

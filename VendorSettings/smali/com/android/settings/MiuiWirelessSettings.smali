.class public Lcom/android/settings/MiuiWirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiWirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private aN:Landroid/os/UserManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private uA:Landroid/preference/PreferenceScreen;

.field private uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private uC:Ljava/lang/String;

.field private uc:I

.field private ud:[Ljava/lang/String;

.field private uj:Lcom/android/settings/n;

.field private uk:Landroid/preference/CheckBoxPreference;

.field private ul:Lcom/android/settings/nfc/NfcEnabler;

.field private um:Landroid/nfc/NfcAdapter;

.field private un:Lcom/android/settings/fV;

.field private uo:Lcom/android/settings/nfc/NfcSeRoute;

.field private up:Ljava/util/HashSet;

.field private uq:Landroid/preference/CheckBoxPreference;

.field private ur:Landroid/preference/CheckBoxPreference;

.field private us:[Ljava/lang/String;

.field private ut:[Ljava/lang/String;

.field private uu:Ljava/util/concurrent/atomic/AtomicReference;

.field private uv:Z

.field private uw:Z

.field private ux:Z

.field private uy:Landroid/content/BroadcastReceiver;

.field private uz:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 930
    new-instance v0, Lcom/android/settings/fC;

    invoke-direct {v0}, Lcom/android/settings/fC;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiWirelessSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->up:Ljava/util/HashSet;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uc:I

    .line 142
    new-instance v0, Lcom/android/settings/fA;

    invoke-direct {v0, p0}, Lcom/android/settings/fA;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 152
    return-void
.end method

.method private P(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 916
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 918
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 925
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private Y(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    iput p1, p0, Lcom/android/settings/MiuiWirelessSettings;->uc:I

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->ud:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->ud:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uc:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/MiuiWirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->gd()V

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 281
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 282
    array-length v5, p1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 283
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    :goto_2
    return-object v0

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/MiuiWirelessSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiWirelessSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiWirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiWirelessSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiWirelessSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 785
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiWirelessSettings;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiWirelessSettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/MiuiWirelessSettings;->ux:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/MiuiWirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->updateState()V

    return-void
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 790
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 792
    iget-boolean v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uw:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/MiuiWirelessSettings;->ux:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 793
    :goto_0
    const/4 v5, 0x0

    .line 794
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 795
    iget-object v8, p0, Lcom/android/settings/MiuiWirelessSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 796
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 797
    if-nez v2, :cond_0

    .line 798
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 795
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 792
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 794
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 803
    :cond_3
    const/4 v4, 0x0

    .line 804
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    .line 805
    iget-object v8, p0, Lcom/android/settings/MiuiWirelessSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 806
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 805
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 804
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 809
    :cond_6
    const/4 v2, 0x0

    .line 810
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    .line 811
    iget-object v8, p0, Lcom/android/settings/MiuiWirelessSettings;->us:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 812
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    .line 811
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 810
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 815
    :cond_9
    if-eqz v4, :cond_a

    .line 816
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ed

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 817
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 818
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 840
    :goto_7
    return-void

    .line 819
    :cond_a
    if-eqz v1, :cond_c

    .line 820
    if-nez v5, :cond_b

    .line 821
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ec

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 825
    :goto_8
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 826
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 823
    :cond_b
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 827
    :cond_c
    if-eqz v2, :cond_d

    .line 828
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 829
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 831
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ux:Z

    if-eqz v0, :cond_e

    .line 832
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ee

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 833
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 836
    :cond_e
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04ef

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 837
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/android/settings/MiuiWirelessSettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/MiuiWirelessSettings;->uw:Z

    return p1
.end method

.method private c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 844
    .line 845
    array-length v5, p3

    move v4, v3

    move v2, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p3, v4

    .line 846
    iget-object v7, p0, Lcom/android/settings/MiuiWirelessSettings;->ut:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    .line 847
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    .line 846
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 845
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    .line 850
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 851
    if-nez v0, :cond_3

    .line 886
    :goto_2
    return-void

    .line 853
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 854
    const/16 v0, 0xd

    if-ne v4, v0, :cond_4

    .line 855
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 857
    :cond_4
    const/16 v0, 0xb

    if-ne v4, v0, :cond_5

    .line 858
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 862
    const/16 v5, 0xc

    if-ne v4, v5, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 864
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 865
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 866
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 867
    if-le v0, v1, :cond_6

    .line 868
    const v2, 0x7f0c04f5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/MiuiWirelessSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 872
    :cond_6
    if-ne v0, v1, :cond_7

    .line 873
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 875
    :cond_7
    if-eqz v2, :cond_8

    .line 876
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 878
    :cond_8
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 881
    :cond_9
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 882
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 883
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/android/settings/MiuiWirelessSettings;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uv:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiWirelessSettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/MiuiWirelessSettings;->uv:Z

    return p1
.end method

.method private gd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 889
    iget v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uc:I

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    return-void

    .line 892
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 894
    iput-boolean v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uv:Z

    .line 895
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 896
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 900
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 905
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->P(Z)V

    goto :goto_0

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 773
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 776
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/MiuiWirelessSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 780
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 769
    const v0, 0x7f0c09b3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gl()V
    .locals 7

    .prologue
    const v6, 0x7f0c0506

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 305
    const-string v0, "onManageMobilePlanClick:"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 312
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 317
    const-string v0, "WirelessSettings"

    const-string v3, "Multiple matching carrier apps found, launching the first."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    const-string v0, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 328
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 329
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 332
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManageMobilePlanClick: message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiWirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    const v1, 0x7f0c0505

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 347
    :cond_4
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 351
    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    goto :goto_1

    .line 355
    :cond_6
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_7

    .line 357
    const v1, 0x7f0c0507

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    goto/16 :goto_1

    .line 360
    :cond_7
    const v1, 0x7f0c0508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 758
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 759
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uj:Lcom/android/settings/n;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/n;->a(ZZ)V

    .line 764
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 765
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 413
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 414
    if-eqz p1, :cond_0

    .line 415
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mManageMobilePlanMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 419
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 420
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uz:Landroid/telephony/TelephonyManager;

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->i:Landroid/content/pm/PackageManager;

    .line 422
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->aN:Landroid/os/UserManager;

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 426
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->up:Ljava/util/HashSet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->addPreferencesFromResource(I)V

    .line 433
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 434
    if-eqz v0, :cond_1a

    move v7, v8

    .line 436
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 437
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    .line 438
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 439
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 440
    const-string v2, "nfc_payment"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 441
    const-string v3, "toggle_nsd"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 443
    const-string v4, "se_route"

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 446
    new-instance v5, Lcom/android/settings/n;

    iget-object v11, p0, Lcom/android/settings/MiuiWirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v10, v11}, Lcom/android/settings/n;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->uj:Lcom/android/settings/n;

    .line 449
    const-string v5, "support_se_route"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 450
    new-instance v5, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v5, v10, v0, v1, v4}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    .line 456
    :goto_2
    const-string v5, "wifi_calling_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->uA:Landroid/preference/PreferenceScreen;

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 466
    if-nez v7, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x1120069

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v8

    .line 468
    :goto_3
    if-eqz v3, :cond_2

    iget-object v11, p0, Lcom/android/settings/MiuiWirelessSettings;->aN:Landroid/os/UserManager;

    const-string v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 471
    const-string v11, "wimax_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 472
    if-eqz v11, :cond_3

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    const-string v3, "wifi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 483
    :cond_4
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v11, "toggle_airplane"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 486
    :cond_5
    if-nez v7, :cond_6

    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->aN:Landroid/os/UserManager;

    const-string v11, "no_config_vpn"

    invoke-virtual {v3, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 487
    :cond_6
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    .line 491
    :cond_7
    if-eqz v5, :cond_8

    const-string v3, "bluetooth"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 496
    :cond_8
    if-eqz v5, :cond_9

    const-string v3, "nfc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 497
    :cond_9
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v5, "toggle_airplane"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 498
    const-string v3, "android_beam_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v5, "toggle_airplane"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 502
    :cond_a
    invoke-static {v10}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->um:Landroid/nfc/NfcAdapter;

    .line 506
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->um:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_1f

    .line 510
    const-string v3, "nfc_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 512
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 514
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 520
    :cond_b
    iput-object v9, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    move-object v0, v9

    .line 536
    :goto_5
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 537
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->aN:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 545
    :cond_e
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    .line 546
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    .line 550
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 553
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v1

    .line 555
    if-nez v0, :cond_10

    .line 556
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_10

    .line 558
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    .line 563
    :cond_10
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 564
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    .line 568
    :cond_11
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 569
    const-string v0, "device_policy"

    invoke-virtual {v10, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v8

    :goto_6
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 576
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    .line 577
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    .line 579
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 581
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->us:[Ljava/lang/String;

    .line 582
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ut:[Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->us:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_22

    move v0, v8

    .line 585
    :goto_7
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->ut:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_23

    move v1, v8

    .line 587
    :goto_8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_12

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->uB:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 593
    :cond_12
    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 594
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    :cond_14
    if-eqz v1, :cond_15

    if-eqz v7, :cond_24

    .line 598
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 609
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCellBroadcastAppLinkEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 616
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/b/a;->aW(Landroid/content/Context;)V

    .line 618
    if-eqz v0, :cond_27

    .line 619
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 623
    const-string v0, "CMAS app disabled"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    move v0, v6

    .line 627
    :cond_16
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->i:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Lcom/android/settings/b/a;->c(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 629
    const-string v0, "CMAS app ncc broadcast enabled"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_a
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v8

    .line 642
    if-nez v7, :cond_17

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->aN:Landroid/os/UserManager;

    const-string v1, "no_config_cell_broadcasts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 644
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 645
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 646
    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 650
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 652
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    .line 653
    const-string v0, "wfd_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 654
    const-string v2, "support_nvdia_wifi_display"

    invoke-static {v2, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-nez v1, :cond_19

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 661
    :cond_19
    return-void

    :cond_1a
    move v7, v6

    .line 434
    goto/16 :goto_1

    .line 452
    :cond_1b
    new-instance v5, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v5, v10, v0, v1, v9}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_2

    :cond_1c
    move v3, v6

    .line 466
    goto/16 :goto_3

    .line 474
    :cond_1d
    if-eqz v5, :cond_1e

    const-string v11, "wimax"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v3, :cond_3

    .line 476
    :cond_1e
    const-string v3, "wimax_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 477
    const-string v11, "toggle_airplane"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 523
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 525
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, v10}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v0

    .line 528
    :goto_b
    const-string v1, "support_se_route"

    invoke-static {v1, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 529
    new-instance v1, Lcom/android/settings/nfc/NfcSeRoute;

    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->um:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v10, v3, v4}, Lcom/android/settings/nfc/NfcSeRoute;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uo:Lcom/android/settings/nfc/NfcSeRoute;

    goto/16 :goto_5

    .line 531
    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_21
    move v0, v6

    .line 573
    goto/16 :goto_6

    :cond_22
    move v0, v6

    .line 584
    goto/16 :goto_7

    :cond_23
    move v1, v6

    .line 585
    goto/16 :goto_8

    .line 600
    :cond_24
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 601
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 602
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .line 604
    :cond_25
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .line 633
    :catch_0
    move-exception v0

    .line 636
    const-string v0, "WirelessSettings"

    const-string v1, "CMAS app not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    goto/16 :goto_a

    :cond_26
    move v8, v0

    goto/16 :goto_a

    :cond_27
    move v8, v0

    goto/16 :goto_a

    :cond_28
    move-object v0, v9

    goto :goto_b
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 371
    packed-switch p1, :pswitch_data_0

    .line 388
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 373
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fB;

    invoke-direct {v2, p0}, Lcom/android/settings/fB;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 403
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 405
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_0

    .line 407
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 409
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 735
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uj:Lcom/android/settings/n;

    invoke-virtual {v0}, Lcom/android/settings/n;->pause()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->un:Lcom/android/settings/fV;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->un:Lcom/android/settings/fV;

    invoke-virtual {v0}, Lcom/android/settings/fV;->pause()V

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uo:Lcom/android/settings/nfc/NfcSeRoute;

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uo:Lcom/android/settings/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcSeRoute;->pause()V

    .line 747
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 216
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiWirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    :goto_0
    return v1

    .line 226
    :cond_0
    const-string v3, "manage_mobile_plan"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->gl()V

    .line 277
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 229
    :cond_2
    const-string v3, "wfd_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->i:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :cond_3
    const-string v3, "cell_broadcast_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/b/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 239
    :cond_4
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 240
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 241
    if-eqz v0, :cond_5

    .line 242
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->Y(I)V

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 247
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->P(Z)V

    goto :goto_1

    .line 249
    :cond_7
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 251
    if-eqz v3, :cond_8

    .line 252
    invoke-direct {p0, v4}, Lcom/android/settings/MiuiWirelessSettings;->Y(I)V

    goto :goto_1

    .line 254
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 259
    :cond_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->ut:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/MiuiWirelessSettings;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_c

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    :goto_2
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 267
    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 268
    :cond_a
    if-eqz v1, :cond_b

    .line 269
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ur:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 665
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 667
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uj:Lcom/android/settings/n;

    invoke-virtual {v0}, Lcom/android/settings/n;->resume()V

    .line 668
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ul:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->un:Lcom/android/settings/fV;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->un:Lcom/android/settings/fV;

    invoke-virtual {v0}, Lcom/android/settings/fV;->resume()V

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uo:Lcom/android/settings/nfc/NfcSeRoute;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uo:Lcom/android/settings/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcSeRoute;->resume()V

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 682
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uA:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 684
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uA:Landroid/preference/PreferenceScreen;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/WifiCallingSettings;->i(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_3
    const-string v0, "wifi_calling_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->U(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 702
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 703
    const-string v0, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiWirelessSettings;->ux:Z

    .line 704
    new-instance v0, Lcom/android/settings/fD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fD;-><init>(Lcom/android/settings/MiuiWirelessSettings;Lcom/android/settings/fA;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 707
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 710
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 711
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 714
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 720
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 721
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    if-eqz v1, :cond_0

    .line 725
    iget-object v2, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->updateState()V

    .line 729
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->uy:Landroid/content/BroadcastReceiver;

    .line 754
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x6e

    return v0
.end method

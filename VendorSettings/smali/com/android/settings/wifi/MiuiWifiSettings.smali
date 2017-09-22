.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"

# interfaces
.implements Lcom/android/settings/fY;


# static fields
.field public static final aBt:Ljava/util/HashSet;


# instance fields
.field private Se:Lcom/android/settings/eH;

.field private aBg:Landroid/widget/TextView;

.field private aBh:Landroid/widget/TextView;

.field private aBi:Landroid/widget/TextView;

.field private aBj:Landroid/widget/ImageButton;

.field private aBk:Landroid/widget/ImageButton;

.field private aBl:Landroid/preference/CheckBoxPreference;

.field private aBm:Landroid/preference/CheckBoxPreference;

.field private aBn:Landroid/preference/CheckBoxPreference;

.field private aBo:Landroid/preference/CheckBoxPreference;

.field private aBp:Lmiui/preference/ValuePreference;

.field private aBq:Z

.field private aBr:Lcom/android/settings/wifi/g;

.field private aBs:Lcom/android/b/e/a;

.field private aBu:Z

.field private je:Landroid/net/wifi/WifiManager;

.field private mG:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private uI:Z

.field private uJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 738
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    .line 739
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    const-string v1, "CMCC-AUTO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    const-string v1, "CMCC-EDU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uI:Z

    .line 875
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/b/e/a;)Lcom/android/b/e/a;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBs:Lcom/android/b/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uI:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    return p1
.end method

.method private bD()V
    .locals 3

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDH:Z

    if-eqz v0, :cond_2

    .line 353
    :cond_0
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 361
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 364
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 365
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    .line 369
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "saved_wifi"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xD()V

    goto :goto_0
.end method

.method private c(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 810
    .line 813
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 814
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 815
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 816
    iget-object v1, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {v0, p0}, Lcom/android/b/e/a;->a(Lcom/android/b/e/b;)V

    .line 821
    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 823
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/g;

    .line 824
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/g;->a(Lcom/android/b/e/a;)V

    .line 830
    :goto_0
    iget-object v2, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 831
    const/4 v2, 0x0

    .line 832
    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->xc()Z

    move-result v6

    if-nez v6, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v6, v0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/android/settings/wifi/openwifi/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v2

    .line 835
    if-eqz v2, :cond_1

    .line 836
    invoke-virtual {v1, v9}, Lcom/android/settings/wifi/g;->bB(Z)V

    .line 840
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 841
    const v6, 0x7f0c0fb6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->setSummary(Ljava/lang/CharSequence;)V

    .line 844
    :cond_2
    new-instance v2, Lcom/android/settings/wifi/i;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/wifi/i;-><init>(Lcom/android/b/e/a;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 845
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/g;->d(Landroid/view/View$OnClickListener;)V

    .line 846
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    if-gtz v0, :cond_0

    .line 855
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/g;->xb()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 856
    return-object v3

    .line 826
    :cond_4
    new-instance v1, Lcom/android/settings/wifi/g;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBI:Lcom/android/settings/wifi/c;

    invoke-direct {v1, v0, v2, v6, v8}, Lcom/android/settings/wifi/g;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 828
    invoke-virtual {v0, v1}, Lcom/android/b/e/a;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e(Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 877
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBs:Lcom/android/b/e/a;

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/R;->b(Landroid/content/Context;Lcom/android/b/e/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 879
    if-nez v1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401a7

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 884
    const v0, 0x7f130359

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 885
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 886
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c0f7b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f7d

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 892
    new-instance v1, Lcom/android/settings/wifi/K;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/K;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 899
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 770
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private xB()V
    .locals 6

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-class v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 629
    :cond_0
    return-void
.end method

.method private xD()V
    .locals 2

    .prologue
    .line 788
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    .line 791
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    const-string v1, "cmcc_network_notification"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c10cb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c10cc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 795
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 796
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 798
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xE()V

    goto :goto_0
.end method

.method private xE()V
    .locals 2

    .prologue
    .line 802
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->cE(Landroid/content/Context;)Z

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBn:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 805
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public Y()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 688
    sparse-switch p1, :sswitch_data_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 690
    :sswitch_0
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 693
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xC()V

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/ak;->g(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 700
    :sswitch_1
    const-string v0, "network_id"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 701
    const-string v0, "is_delete"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 702
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 703
    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 704
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDL:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/ak;->i(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 714
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xC()V

    goto :goto_0

    .line 707
    :cond_2
    if-eqz v0, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 709
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/ak;->h(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Lcom/android/settings/wifi/ag;)V
    .locals 3

    .prologue
    .line 726
    invoke-virtual {p1}, Lcom/android/settings/wifi/ag;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {p1}, Lcom/android/settings/wifi/ag;->yf()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 729
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/wifi/ak;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 732
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ag;)V

    .line 733
    return-void

    .line 728
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method protected bD(Z)V
    .locals 1

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->eL()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->stopAnimation()V

    goto :goto_0
.end method

.method protected bE(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->bE(Z)V

    .line 748
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_0

    .line 749
    if-eqz p1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBh:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBh:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    const v1, 0x7f020255

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public c(Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public d(Lcom/android/b/e/a;)V
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/g;

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wQ()V

    .line 873
    :cond_0
    return-void
.end method

.method protected dB(I)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 544
    return-void
.end method

.method public dC(I)V
    .locals 1

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->dC(I)V

    .line 549
    packed-switch p1, :pswitch_data_0

    .line 557
    :goto_0
    :pswitch_0
    return-void

    .line 554
    :pswitch_1
    const v0, 0x7f0c02fa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->dB(I)V

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v3, v4}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 285
    const-string v3, ""

    iput-object v3, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 286
    new-instance v3, Lcom/android/settings/wifi/g;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/android/settings/wifi/g;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "wifi_enable"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBl:Landroid/preference/CheckBoxPreference;

    .line 292
    new-instance v0, Lcom/android/settings/wifi/B;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBl:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDM:Lcom/android/settings/wifi/B;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "enable_data_and_wifi_roam"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBo:Landroid/preference/CheckBoxPreference;

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 296
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "data_and_wifi_roam"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBp:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBp:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    iput-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBp:Lmiui/preference/ValuePreference;

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_4

    .line 319
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 320
    invoke-static {v0}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 321
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 324
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 296
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 681
    if-eqz p3, :cond_0

    .line 682
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(ILandroid/os/Bundle;)V

    .line 684
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v0, "is_dialog_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "accesspoint_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->e(Lcom/android/b/e/a;)V

    .line 148
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_2

    .line 151
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_disable_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uI:Z

    .line 164
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDH:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 167
    :cond_1
    new-instance v0, Lcom/android/settings/eH;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/eH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Se:Lcom/android/settings/eH;

    .line 168
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bD()V

    .line 170
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->setHasOptionsMenu(Z)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mG:Landroid/content/IntentFilter;

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/android/settings/wifi/H;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/H;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uJ:Ljava/lang/String;

    .line 188
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_3

    .line 158
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0

    .line 160
    :cond_3
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->setThemeRes(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDH:Z

    if-nez v0, :cond_0

    .line 664
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 665
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v1}, Lcom/android/settings/eH;->fq()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 198
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/fy;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 201
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    const v0, 0x7f040179

    .line 202
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 203
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v1, :cond_1

    .line 204
    new-instance v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_1
    return-object v0

    .line 201
    :cond_2
    const v0, 0x7f04010d

    goto :goto_0

    .line 202
    :cond_3
    const v0, 0x7f0401a4

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 393
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 380
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uI:Z

    if-eqz v1, :cond_0

    .line 381
    const/4 v0, 0x0

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->finish()V

    goto :goto_1

    .line 388
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bD(Z)V

    goto :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onPause()V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 562
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 563
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 564
    goto :goto_0

    .line 568
    :cond_1
    const-string v3, "manually_add_network"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xB()V

    goto :goto_1

    .line 571
    :cond_2
    const-string v3, "wifi_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDM:Lcom/android/settings/wifi/B;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/B;->aD(Z)V

    goto :goto_1

    .line 574
    :cond_3
    const-string v3, "cmcc_network_notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lcom/android/settings/wifi/WifiTipActivity;->r(Landroid/content/Context;Z)V

    .line 581
    :cond_4
    :goto_3
    instance-of v0, p2, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 582
    check-cast v0, Lcom/android/settings/wifi/g;

    .line 583
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/b/e/a;->AJ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-nez v3, :cond_8

    .line 585
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->e(Lcom/android/b/e/a;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 575
    goto :goto_2

    .line 576
    :cond_6
    const-string v3, "enable_data_and_wifi_roam"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_and_wifi_roam"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    .line 590
    :cond_8
    instance-of v0, p2, Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_10

    .line 592
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_9

    .line 593
    const-string v0, "provision_wifi"

    const-string v3, "provision_wifi_connect_count"

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v0, p2

    .line 595
    check-cast v0, Lcom/android/settings/wifi/g;

    .line 596
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/g;->by(Z)V

    .line 597
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v3

    .line 598
    iget-object v4, v3, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 599
    iget v5, v3, Lcom/android/b/e/a;->networkId:I

    if-le v5, v7, :cond_f

    iget v5, v3, Lcom/android/b/e/a;->aKG:I

    if-eqz v5, :cond_b

    iget v5, v3, Lcom/android/b/e/a;->aKG:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b

    iget v5, v3, Lcom/android/b/e/a;->aKG:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_b

    iget v5, v3, Lcom/android/b/e/a;->aKG:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    if-eqz v4, :cond_a

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 606
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget v5, v3, Lcom/android/b/e/a;->networkId:I

    if-ne v2, v5, :cond_d

    :cond_c
    iget v2, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v2, v1, :cond_e

    .line 610
    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget v3, v3, Lcom/android/b/e/a;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 614
    :goto_5
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    goto/16 :goto_1

    .line 612
    :cond_e
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->by(Z)V

    goto :goto_5

    .line 617
    :cond_f
    iput v7, v3, Lcom/android/b/e/a;->networkId:I

    .line 620
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBo:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_and_wifi_roam"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/aC;->cD(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBq:Z

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xE()V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mG:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "provision_wifi_page"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 340
    const-string v0, "provision_wifi"

    const-string v1, "provision_wifi_page_count"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 903
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 904
    const-string v0, "is_dialog_shown"

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 905
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBs:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    .line 906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 907
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBs:Lcom/android/b/e/a;

    invoke-virtual {v1, v0}, Lcom/android/b/e/a;->k(Landroid/os/Bundle;)V

    .line 908
    const-string v1, "accesspoint_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 910
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_1

    .line 215
    const v0, 0x7f130241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f130240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBh:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f13023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBi:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f13023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBj:Landroid/widget/ImageButton;

    .line 219
    const v0, 0x7f130242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBi:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 242
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 243
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bE(Z)V

    .line 246
    new-instance v0, Lcom/android/settings/wifi/I;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/I;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 266
    new-instance v1, Lcom/android/settings/wifi/J;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/J;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 273
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBh:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBi:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_1
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBi:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public xA()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 412
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 413
    const-string v1, "connected_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 414
    packed-switch v2, :pswitch_data_0

    .line 516
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBm:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 519
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xE()V

    goto :goto_0

    .line 418
    :pswitch_0
    if-nez v0, :cond_10

    .line 419
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-eqz v0, :cond_6

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v2, v0

    .line 429
    :goto_2
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 430
    if-eqz v1, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v3

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AO()Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->c(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 437
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    move-object v6, v1

    move v1, v4

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/g;

    .line 441
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/b/e/a;->AH()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 442
    iget-boolean v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->uG:Z

    if-nez v7, :cond_8

    .line 444
    if-nez v6, :cond_5

    .line 445
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 446
    const-string v7, "connected_wifi"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 447
    const v7, 0x7f0c0de7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 448
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 452
    :cond_5
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->wP()Lcom/android/b/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/b/e/a;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 453
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 454
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 455
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    .line 456
    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/g;->bA(Z)V

    :goto_4
    move v0, v1

    move v1, v5

    move-object v5, v6

    :goto_5
    move-object v6, v5

    move v5, v1

    move v1, v0

    .line 469
    goto :goto_3

    .line 422
    :cond_6
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 423
    const-string v2, "nearby_wifi"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 424
    const v2, 0x7f0c0ddd

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 425
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v2, v0

    goto/16 :goto_2

    .line 458
    :cond_7
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 459
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v5, v7

    goto :goto_4

    .line 462
    :cond_8
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 463
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v7

    move v1, v5

    move-object v5, v6

    goto :goto_5

    .line 466
    :cond_9
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->setOrder(I)V

    .line 467
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v7

    move v1, v5

    move-object v5, v6

    goto :goto_5

    .line 471
    :cond_a
    new-instance v0, Lcom/android/settings/wifi/Q;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/Q;-><init>(Landroid/content/Context;)V

    .line 472
    const-string v4, "manually_add_network"

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 473
    const v4, 0x7f0c02ed

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 474
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 475
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 481
    :pswitch_1
    const v2, 0x7f0c02d6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->dB(I)V

    .line 485
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    if-eqz v2, :cond_b

    .line 486
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    invoke-virtual {v2, v9}, Lcom/android/settings/wifi/g;->by(Z)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    invoke-virtual {v2}, Lcom/android/settings/wifi/g;->refresh()V

    .line 488
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    .line 490
    :cond_b
    if-eqz v0, :cond_c

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 493
    :cond_c
    if-eqz v1, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 500
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    if-eqz v2, :cond_d

    .line 501
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    invoke-virtual {v2, v9}, Lcom/android/settings/wifi/g;->by(Z)V

    .line 502
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    invoke-virtual {v2}, Lcom/android/settings/wifi/g;->refresh()V

    .line 503
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBr:Lcom/android/settings/wifi/g;

    .line 506
    :cond_d
    if-eqz v0, :cond_e

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    :cond_e
    if-eqz v1, :cond_f

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    :cond_f
    const v0, 0x7f0c02fa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->dB(I)V

    goto/16 :goto_1

    :cond_10
    move-object v2, v0

    goto/16 :goto_2

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method xC()V
    .locals 2

    .prologue
    .line 647
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->xC()V

    .line 648
    const-string v0, "connected_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 649
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 651
    :cond_0
    return-void
.end method

.method public xz()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->xz()V

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->xA()V

    .line 400
    return-void
.end method

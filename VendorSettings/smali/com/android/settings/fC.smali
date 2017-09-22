.class final Lcom/android/settings/fC;
.super Lcom/android/settings/search/a;
.source "MiuiWirelessSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 935
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 936
    const v1, 0x7f0800c5

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 937
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 942
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 944
    const-string v0, "toggle_nsd"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 947
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 948
    if-eqz v3, :cond_b

    move v3, v2

    .line 949
    :goto_0
    if-nez v3, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 952
    :goto_1
    if-eqz v2, :cond_0

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    :cond_0
    const-string v0, "wimax_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_1
    if-eqz v3, :cond_2

    .line 958
    const-string v0, "vpn_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_2
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 964
    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 966
    if-nez v0, :cond_3

    .line 967
    const-string v0, "toggle_nfc"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    const-string v0, "android_beam_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 974
    :cond_4
    const-string v0, "mobile_network_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    const-string v0, "manage_mobile_plan"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 982
    if-nez v0, :cond_6

    .line 983
    const-string v0, "manage_mobile_plan"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 989
    const-string v0, "android.hardware.type.television"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 990
    const-string v0, "toggle_airplane"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_7
    const-string v0, "proxy_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1120072

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_8

    .line 1001
    :try_start_0
    const-string v5, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    move v0, v1

    :cond_8
    move v1, v0

    .line 1009
    :goto_2
    if-nez v3, :cond_9

    if-nez v1, :cond_a

    .line 1010
    :cond_9
    const-string v0, "cell_broadcast_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_a
    return-object v4

    :cond_b
    move v3, v1

    .line 948
    goto/16 :goto_0

    :cond_c
    move v2, v1

    .line 949
    goto/16 :goto_1

    .line 1006
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.class public Lcom/xiaomi/miui/pushads/sdk/f;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static dM(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 2

    .prologue
    .line 34
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 55
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    :cond_1
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->eJ(I)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v0

    goto :goto_0
.end method

.method public static dN(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/f;->dM(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v1

    .line 85
    const/4 v0, 0x1

    .line 88
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    if-ne v2, v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :cond_0
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    if-eq v1, v2, :cond_1

    .line 94
    :cond_1
    return v0
.end method

.method public static da(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static eJ(I)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 1

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 79
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZp:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZr:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

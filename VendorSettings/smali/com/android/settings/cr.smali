.class public Lcom/android/vendorsettings/cr;
.super Lcom/android/vendorsettings/msim/a;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vendorsettings/msim/a;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "sim_num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public a(Landroid/os/storage/IMountService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-interface {p1, p2, p3}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I

    .line 63
    return-void
.end method

.method public dv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 35
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiDevice;

    .line 71
    new-instance v3, Lcom/android/vendorsettings/wifi/n;

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    iget-object v0, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/android/vendorsettings/wifi/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    return-object v1
.end method

.method public q(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

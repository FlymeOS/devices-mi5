.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverLayUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 56
    .local v1, "cm":Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 58
    .local v0, "activeLink":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    return-object v3

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "rmnet0"

    goto :goto_1
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "wifiConf"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 26
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 27
    :cond_0
    const-string v2, "OverLayUtil"

    const-string v3, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 31
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 33
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 34
    .local v0, "mModifyConfig":Landroid/net/wifi/WifiConfiguration;
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 35
    new-instance v2, Landroid/net/IpConfiguration;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 36
    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v2}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mobileDataEnabled"    # Z

    .prologue
    .line 20
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    .local v0, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 22
    return-void
.end method

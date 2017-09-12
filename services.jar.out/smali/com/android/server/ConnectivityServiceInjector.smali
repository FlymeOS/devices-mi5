.class Lcom/android/server/ConnectivityServiceInjector;
.super Ljava/lang/Object;
.source "ConnectivityServiceInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static notifyVpnStart()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 36
    .local v0, "power":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyVpnStart(I)V

    .line 37
    return-void
.end method

.method static notifyVpnStatusChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 42
    .local v0, "power":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyVpnStatusChanged(Landroid/net/NetworkInfo$DetailedState;)V

    .line 44
    .end local v0    # "power":Lcom/miui/whetstone/PowerKeeperPolicy;
    :cond_0
    return-void
.end method

.method static showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 17
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 19
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, "loginIntent":Landroid/content/Intent;
    const-string v3, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.MiuiWifiService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v3, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const-string v3, "miui.intent.extra.BSSID"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    :cond_0
    const-string v3, "miui.intent.extra.CAPTIVE_PORTAL"

    const-string v4, "miui.intent.extra.CAPTIVE_PORTAL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 29
    const-string v3, "miui.intent.extra.NETWORK"

    const-string v4, "miui.intent.extra.NETWORK"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void
.end method

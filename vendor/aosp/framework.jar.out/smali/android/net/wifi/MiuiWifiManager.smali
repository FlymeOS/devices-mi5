.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final BASE:I = 0x25fa0

.field public static final EXTRA_CONFIG:Ljava/lang/String; = "config"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final FAILED:I = 0x2

.field public static final GET_SUPPLICANT_CONFIGURATION:I = 0x25fa1

.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field public static final SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 50
    const/16 v2, -0x64

    if-gt p0, v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 57
    :goto_0
    return v2

    .line 52
    :cond_0
    const/16 v2, -0x41

    if-lt p0, v2, :cond_1

    .line 53
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 55
    :cond_1
    const/high16 v0, 0x420c0000    # 35.0f

    .line 56
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 57
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method public static isMiWifi()Z
    .locals 5

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 68
    .local v0, "service":Landroid/net/wifi/IWifiManager;
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 69
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getVendorInfo()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "vendor":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "XIAOMI_ROUTER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "miwifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    const/4 v3, 0x1

    .line 76
    .end local v1    # "vendor":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v3

    .line 74
    :catch_0
    move-exception v3

    .line 76
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

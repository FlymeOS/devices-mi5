.class final Lcom/android/server/wifi/WifiStateMachineInjector;
.super Ljava/lang/Object;
.source "WifiStateMachineInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleSupplicantStateChange(Landroid/os/Message;Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 13
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 14
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 15
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 17
    :cond_0
    return-void
.end method

.method static isExplicitlySelected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    const/4 v0, 0x1

    return v0
.end method

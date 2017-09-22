.class Lcom/android/vendorsettings/wifi/p2p/d;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# instance fields
.field final synthetic aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 164
    :cond_3
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    const-string v0, "wifiP2pDeviceList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->b(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 168
    :cond_4
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 172
    const-string v1, "wifiP2pInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 174
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    iget-boolean v1, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->b(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_0

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->d(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eq v0, v2, :cond_5

    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->e(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 182
    :cond_7
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 183
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->f(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_0

    .line 187
    :cond_8
    const-string v3, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 188
    const-string v1, "discoveryState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    if-ne v1, v4, :cond_9

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_0

    .line 194
    :cond_9
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_0

    .line 196
    :cond_a
    const-string v0, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/p2p/d;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_0
.end method

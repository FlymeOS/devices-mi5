.class Lcom/android/vendorsettings/wifi/aF;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusTest.java"


# instance fields
.field final synthetic aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/WifiStatusTest;->a(Lcom/android/vendorsettings/wifi/WifiStatusTest;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/WifiStatusTest;->a(Lcom/android/vendorsettings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WifiStatusTest;->a(Lcom/android/vendorsettings/wifi/WifiStatusTest;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    const-string v2, "supplicantError"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supplicantError"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/vendorsettings/wifi/WifiStatusTest;->a(Lcom/android/vendorsettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aF;->aEB:Lcom/android/vendorsettings/wifi/WifiStatusTest;

    const-string v1, "newRssi"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/WifiStatusTest;->b(Lcom/android/vendorsettings/wifi/WifiStatusTest;I)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "WifiStatusTest"

    const-string v1, "Received an unknown Wifi Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

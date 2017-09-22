.class Lcom/android/vendorsettings/wifi/D;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MiuiWifiNoInternetDialog.java"


# instance fields
.field final synthetic aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->a(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->a(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " validated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->a(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->a(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/D;->aAW:Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->finish()V

    .line 87
    :cond_0
    return-void
.end method

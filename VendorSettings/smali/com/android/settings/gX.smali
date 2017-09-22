.class Lcom/android/vendorsettings/gX;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yk:Lcom/android/vendorsettings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/vendorsettings/gX;->yk:Lcom/android/vendorsettings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/gX;->yk:Lcom/android/vendorsettings/ResetNetworkConfirm;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 72
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 78
    :cond_1
    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 84
    :cond_2
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    if-eqz v0, :cond_3

    .line 87
    iget-object v1, p0, Lcom/android/vendorsettings/gX;->yk:Lcom/android/vendorsettings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/vendorsettings/ResetNetworkConfirm;->a(Lcom/android/vendorsettings/ResetNetworkConfirm;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 90
    :cond_3
    const-string v1, "netpolicy"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    .line 92
    if-eqz v1, :cond_4

    .line 93
    iget-object v3, p0, Lcom/android/vendorsettings/gX;->yk:Lcom/android/vendorsettings/ResetNetworkConfirm;

    invoke-static {v3}, Lcom/android/vendorsettings/ResetNetworkConfirm;->a(Lcom/android/vendorsettings/ResetNetworkConfirm;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 97
    :cond_4
    const-string v0, "bluetooth"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 99
    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 103
    :cond_5
    const v0, 0x7f0c04d1

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

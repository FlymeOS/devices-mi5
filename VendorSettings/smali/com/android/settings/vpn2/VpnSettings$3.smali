.class Lcom/android/settings/vpn2/VpnSettings$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VpnSettings.java"


# instance fields
.field final synthetic awi:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$3;->awi:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$3;->awi:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$3;->awi:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$3;->awi:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$3;->awi:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    :cond_0
    return-void
.end method

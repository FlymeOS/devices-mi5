.class Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MiuiVpnEnable.java"


# instance fields
.field final synthetic avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;->avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;->avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->a(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;->avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->a(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;->avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->a(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;->avS:Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;

    invoke-static {v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->a(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    :cond_0
    return-void
.end method

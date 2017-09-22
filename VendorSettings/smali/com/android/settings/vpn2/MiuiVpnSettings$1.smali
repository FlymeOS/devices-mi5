.class Lcom/android/settings/vpn2/MiuiVpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiVpnSettings.java"


# instance fields
.field final synthetic awb:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->awb:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "vpn_on"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->awb:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-static {v1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->a(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    .line 102
    return-void
.end method

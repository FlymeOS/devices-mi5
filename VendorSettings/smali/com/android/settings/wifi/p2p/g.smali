.class Lcom/android/vendorsettings/wifi/p2p/g;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/p2p/g;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 283
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/g;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/g;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/g;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/wifi/p2p/h;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wifi/p2p/h;-><init>(Lcom/android/vendorsettings/wifi/p2p/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 295
    :cond_0
    return-void
.end method

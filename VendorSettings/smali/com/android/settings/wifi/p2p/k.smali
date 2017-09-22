.class Lcom/android/vendorsettings/wifi/p2p/k;
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
    .line 319
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Lcom/android/vendorsettings/wifi/p2p/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Lcom/android/vendorsettings/wifi/p2p/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vendorsettings/wifi/p2p/b;->getNetworkId()I

    move-result v2

    new-instance v3, Lcom/android/vendorsettings/wifi/p2p/l;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/wifi/p2p/l;-><init>(Lcom/android/vendorsettings/wifi/p2p/k;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0, v4}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Lcom/android/vendorsettings/wifi/p2p/b;)Lcom/android/vendorsettings/wifi/p2p/b;

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/k;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0, v4}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;Lcom/android/vendorsettings/wifi/p2p/b;)Lcom/android/vendorsettings/wifi/p2p/b;

    goto :goto_0
.end method

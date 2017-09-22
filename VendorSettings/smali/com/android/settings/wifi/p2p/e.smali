.class Lcom/android/vendorsettings/wifi/p2p/e;
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
    .line 244
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 247
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->h(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_2

    .line 251
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 253
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c035e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/p2p/e;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->h(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/vendorsettings/wifi/p2p/f;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/wifi/p2p/f;-><init>(Lcom/android/vendorsettings/wifi/p2p/e;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1
.end method

.class Lcom/android/vendorsettings/wifi/p2p/m;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/p2p/m;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 486
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/p2p/m;->aGv:Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c035d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 490
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aBF:Lcom/android/settings/wifi/am;

.field private azP:Lcom/android/b/e/a;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->yn()Lcom/android/settings/wifi/ag;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->je:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 65
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->azP:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->yf()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 69
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/android/settings/wifi/ak;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 72
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->je:Landroid/net/wifi/WifiManager;

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 29
    invoke-static {p0, v0}, Lcom/android/settings/wifi/ak;->f(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 39
    new-instance v1, Lcom/android/b/e/a;

    invoke-direct {v1, p0, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->azP:Lcom/android/b/e/a;

    .line 40
    new-instance v0, Lcom/android/settings/wifi/am;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->azP:Lcom/android/b/e/a;

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/am;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    new-instance v1, Lcom/android/settings/wifi/af;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/af;-><init>(Lcom/android/settings/wifi/WifiConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/am;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->show()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->dismiss()V

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigActivity;->setVisible(Z)V

    .line 54
    return-void
.end method

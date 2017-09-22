.class public Lcom/android/settings/wifi/WifiConfigInfo;
.super Lmiui/app/Activity;
.source "WifiConfigInfo.java"


# instance fields
.field private aDj:Landroid/widget/TextView;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->je:Landroid/net/wifi/WifiManager;

    .line 42
    const v0, 0x7f04019b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->setContentView(I)V

    .line 43
    const v0, 0x7f13033d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->aDj:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->aDj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_1
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->aDj:Landroid/widget/TextView;

    const v1, 0x7f0c0387

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

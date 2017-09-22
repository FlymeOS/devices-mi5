.class public Lcom/android/settings/wifi/aD;
.super Lcom/android/settings/ag;
.source "WifiStatusController.java"


# instance fields
.field private Rf:Z

.field private aEj:Landroid/net/wifi/WifiInfo;

.field private je:Landroid/net/wifi/WifiManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ag;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 25
    new-instance v0, Lcom/android/settings/wifi/aE;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aE;-><init>(Lcom/android/settings/wifi/aD;)V

    iput-object v0, p0, Lcom/android/settings/wifi/aD;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/aD;->je:Landroid/net/wifi/WifiManager;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/aD;->mIntentFilter:Landroid/content/IntentFilter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/aD;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/aD;->dM(I)V

    return-void
.end method

.method private dM(I)V
    .locals 0

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/aD;->af()V

    .line 77
    :pswitch_1
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected af()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->cw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->cw:Landroid/widget/TextView;

    const v1, 0x7f0c104d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->cw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/aD;->cw:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->cw:Landroid/widget/TextView;

    const v1, 0x7f0c104c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/wifi/aD;->Rf:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/aD;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/aD;->Rf:Z

    .line 62
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/aD;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/aD;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/aD;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/aD;->Rf:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/wifi/aD;->af()V

    .line 54
    return-void
.end method

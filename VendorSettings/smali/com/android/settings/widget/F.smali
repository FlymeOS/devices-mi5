.class final Lcom/android/settings/widget/F;
.super Lcom/android/settings/widget/C;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/C;-><init>(Lcom/android/settings/widget/w;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/w;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/settings/widget/F;-><init>()V

    return-void
.end method

.method private static dw(I)I
    .locals 1

    .prologue
    .line 421
    packed-switch p0, :pswitch_data_0

    .line 431
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 423
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 429
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bu(Z)I
    .locals 1

    .prologue
    .line 360
    if-eqz p1, :cond_0

    const v0, 0x7f0200d6

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200d5

    goto :goto_0
.end method

.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 369
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/F;->dw(I)I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 409
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "wifi_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 413
    invoke-static {v0}, Lcom/android/settings/widget/F;->dw(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/F;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 378
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 380
    if-nez v0, :cond_0

    .line 381
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No wifiManager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v1, Lcom/android/settings/widget/G;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/widget/G;-><init>(Lcom/android/settings/widget/F;Landroid/net/wifi/WifiManager;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/G;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public wI()I
    .locals 1

    .prologue
    .line 355
    const v0, 0x7f130329

    return v0
.end method

.method public wJ()I
    .locals 1

    .prologue
    .line 356
    const v0, 0x7f13032a

    return v0
.end method

.method public wK()I
    .locals 1

    .prologue
    .line 357
    const v0, 0x7f13032b

    return v0
.end method

.method public wL()I
    .locals 1

    .prologue
    .line 358
    const v0, 0x7f0c07d5

    return v0
.end method

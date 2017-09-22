.class Lcom/android/b/e/d;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# instance fields
.field final synthetic aLc:Lcom/android/b/e/c;


# direct methods
.method constructor <init>(Lcom/android/b/e/c;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;)Lcom/android/b/e/i;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/b/e/i;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;)Lcom/android/b/e/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/b/e/i;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 534
    :cond_3
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 535
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 537
    iget-object v1, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v1}, Lcom/android/b/e/c;->b(Lcom/android/b/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v1}, Lcom/android/b/e/c;->c(Lcom/android/b/e/c;)Lcom/android/b/e/e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    .line 541
    iget-object v1, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v1}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;)Lcom/android/b/e/i;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/b/e/i;->sendEmptyMessage(I)Z

    .line 542
    iget-object v1, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v1}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;)Lcom/android/b/e/i;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/b/e/i;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 544
    :cond_4
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/b/e/d;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;)Lcom/android/b/e/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/b/e/i;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

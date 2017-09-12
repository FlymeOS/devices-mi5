.class public Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetheringInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetheringInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableTetheringActionReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 136
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 137
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 141
    :cond_0
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 145
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 150
    :cond_2
    return-void
.end method

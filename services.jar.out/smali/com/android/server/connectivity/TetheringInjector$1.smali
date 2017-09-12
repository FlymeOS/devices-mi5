.class final Lcom/android/server/connectivity/TetheringInjector$1;
.super Ljava/lang/Object;
.source "TetheringInjector.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetheringInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 35
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 38
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x5

    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Tethering"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

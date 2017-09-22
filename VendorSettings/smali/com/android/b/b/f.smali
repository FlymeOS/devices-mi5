.class final Lcom/android/b/b/f;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic aJk:Lcom/android/b/b/d;


# direct methods
.method private constructor <init>(Lcom/android/b/b/d;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/d;Lcom/android/b/b/e;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/b/b/f;-><init>(Lcom/android/b/b/d;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    .prologue
    .line 60
    # getter for: Lcom/android/b/b/d;->aJd:Z
    invoke-static {}, Lcom/android/b/b/d;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, p2}, Lcom/android/b/b/d;->a(Lcom/android/b/b/d;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 63
    iget-object v0, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-static {v0}, Lcom/android/b/b/d;->a(Lcom/android/b/b/d;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 66
    iget-object v1, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-static {v1}, Lcom/android/b/b/d;->b(Lcom/android/b/b/d;)Lcom/android/b/b/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    const-string v1, "A2dpSinkProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A2dpSinkProfile found new device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-static {v1}, Lcom/android/b/b/d;->b(Lcom/android/b/b/d;)Lcom/android/b/b/J;

    move-result-object v1

    iget-object v3, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-static {v3}, Lcom/android/b/b/d;->c(Lcom/android/b/b/d;)Lcom/android/b/b/Q;

    move-result-object v3

    iget-object v4, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    invoke-static {v4}, Lcom/android/b/b/d;->d(Lcom/android/b/b/d;)Lcom/android/b/b/U;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    .line 73
    invoke-virtual {v0}, Lcom/android/b/b/H;->refresh()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/b/b/d;->a(Lcom/android/b/b/d;Z)Z

    .line 76
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 79
    # getter for: Lcom/android/b/b/d;->aJd:Z
    invoke-static {}, Lcom/android/b/b/d;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/f;->aJk:Lcom/android/b/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/b/d;->a(Lcom/android/b/b/d;Z)Z

    .line 81
    return-void
.end method

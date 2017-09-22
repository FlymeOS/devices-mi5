.class final Lcom/android/b/b/P;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic aJK:Lcom/android/b/b/N;


# direct methods
.method private constructor <init>(Lcom/android/b/b/N;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/N;Lcom/android/b/b/O;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/b/b/P;-><init>(Lcom/android/b/b/N;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    .prologue
    .line 55
    # getter for: Lcom/android/b/b/N;->aJd:Z
    invoke-static {}, Lcom/android/b/b/N;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0, p2}, Lcom/android/b/b/N;->a(Lcom/android/b/b/N;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 58
    iget-object v0, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-static {v0}, Lcom/android/b/b/N;->a(Lcom/android/b/b/N;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 61
    iget-object v1, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-static {v1}, Lcom/android/b/b/N;->b(Lcom/android/b/b/N;)Lcom/android/b/b/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    const-string v1, "HidProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HidProfile found new device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-static {v1}, Lcom/android/b/b/N;->b(Lcom/android/b/b/N;)Lcom/android/b/b/J;

    move-result-object v1

    iget-object v3, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-static {v3}, Lcom/android/b/b/N;->c(Lcom/android/b/b/N;)Lcom/android/b/b/Q;

    move-result-object v3

    iget-object v4, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    invoke-static {v4}, Lcom/android/b/b/N;->d(Lcom/android/b/b/N;)Lcom/android/b/b/U;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/b/b/H;->refresh()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/b/b/N;->a(Lcom/android/b/b/N;Z)Z

    .line 71
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 74
    # getter for: Lcom/android/b/b/N;->aJd:Z
    invoke-static {}, Lcom/android/b/b/N;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/P;->aJK:Lcom/android/b/b/N;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/b/N;->a(Lcom/android/b/b/N;Z)Z

    .line 76
    return-void
.end method

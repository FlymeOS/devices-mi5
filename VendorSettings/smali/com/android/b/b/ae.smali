.class final Lcom/android/b/b/ae;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic aKg:Lcom/android/b/b/ac;


# direct methods
.method private constructor <init>(Lcom/android/b/b/ac;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/b/b/ae;->aKg:Lcom/android/b/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/ac;Lcom/android/b/b/ad;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/b/b/ae;-><init>(Lcom/android/b/b/ac;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .prologue
    .line 56
    # getter for: Lcom/android/b/b/ac;->aJd:Z
    invoke-static {}, Lcom/android/b/b/ac;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/ae;->aKg:Lcom/android/b/b/ac;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/b/b/ac;->a(Lcom/android/b/b/ac;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 58
    iget-object v0, p0, Lcom/android/b/b/ae;->aKg:Lcom/android/b/b/ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/b/b/ac;->a(Lcom/android/b/b/ac;Z)Z

    .line 59
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 62
    # getter for: Lcom/android/b/b/ac;->aJd:Z
    invoke-static {}, Lcom/android/b/b/ac;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/ae;->aKg:Lcom/android/b/b/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/b/ac;->a(Lcom/android/b/b/ac;Z)Z

    .line 64
    return-void
.end method

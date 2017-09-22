.class final Lcom/android/b/b/ah;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# instance fields
.field final synthetic aKj:Lcom/android/b/b/af;


# direct methods
.method private constructor <init>(Lcom/android/b/b/af;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/b/b/ah;->aKj:Lcom/android/b/b/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/af;Lcom/android/b/b/ag;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/b/b/ah;-><init>(Lcom/android/b/b/af;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 2

    .prologue
    .line 57
    # getter for: Lcom/android/b/b/af;->aJd:Z
    invoke-static {}, Lcom/android/b/b/af;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/ah;->aKj:Lcom/android/b/b/af;

    invoke-static {v0, p1}, Lcom/android/b/b/af;->a(Lcom/android/b/b/af;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 59
    iget-object v0, p0, Lcom/android/b/b/ah;->aKj:Lcom/android/b/b/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/b/b/af;->a(Lcom/android/b/b/af;Z)Z

    .line 60
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 63
    # getter for: Lcom/android/b/b/af;->aJd:Z
    invoke-static {}, Lcom/android/b/b/af;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/ah;->aKj:Lcom/android/b/b/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/b/af;->a(Lcom/android/b/b/af;Z)Z

    .line 65
    return-void
.end method

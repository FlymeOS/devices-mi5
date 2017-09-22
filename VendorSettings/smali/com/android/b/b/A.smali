.class Lcom/android/b/b/A;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/b/b/C;


# instance fields
.field final synthetic aJu:Lcom/android/b/b/t;


# direct methods
.method private constructor <init>(Lcom/android/b/b/t;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/b/b/A;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/b/b/A;-><init>(Lcom/android/b/b/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .prologue
    .line 189
    const-string v0, "android.bluetooth.device.extra.RSSI"

    const/16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .line 190
    const-string v0, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 191
    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v1, p0, Lcom/android/b/b/A;->aJu:Lcom/android/b/b/t;

    invoke-static {v1}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 195
    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/b/b/A;->aJu:Lcom/android/b/b/t;

    invoke-static {v1}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v1

    iget-object v4, p0, Lcom/android/b/b/A;->aJu:Lcom/android/b/b/t;

    invoke-static {v4}, Lcom/android/b/b/t;->b(Lcom/android/b/b/t;)Lcom/android/b/b/Q;

    move-result-object v4

    iget-object v5, p0, Lcom/android/b/b/A;->aJu:Lcom/android/b/b/t;

    invoke-static {v5}, Lcom/android/b/b/t;->e(Lcom/android/b/b/t;)Lcom/android/b/b/U;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p3}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 197
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/b/b/H;->a(S)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/b/b/H;->b(Landroid/bluetooth/BluetoothClass;)V

    .line 202
    invoke-virtual {v1, v3}, Lcom/android/b/b/H;->cs(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 204
    return-void
.end method

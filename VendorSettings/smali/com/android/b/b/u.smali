.class Lcom/android/b/b/u;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventManager.java"


# instance fields
.field final synthetic aJu:Lcom/android/b/b/t;


# direct methods
.method constructor <init>(Lcom/android/b/b/t;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/b/b/u;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 144
    iget-object v2, p0, Lcom/android/b/b/u;->aJu:Lcom/android/b/b/t;

    invoke-static {v2}, Lcom/android/b/b/t;->a(Lcom/android/b/b/t;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/b/C;

    .line 145
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1, p1, p2, v0}, Lcom/android/b/b/C;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 148
    :cond_0
    return-void
.end method

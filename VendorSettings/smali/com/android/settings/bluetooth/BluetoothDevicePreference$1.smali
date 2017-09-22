.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 293
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->Qn:Lcom/android/b/b/H;

    invoke-virtual {v0}, Lcom/android/b/b/H;->disconnect()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    return-void
.end method

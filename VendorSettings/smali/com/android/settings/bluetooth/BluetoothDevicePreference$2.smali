.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDevicePreference.java"


# instance fields
.field final synthetic Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 374
    :pswitch_0
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "Receiver DISABLED_ACTION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->Qr:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

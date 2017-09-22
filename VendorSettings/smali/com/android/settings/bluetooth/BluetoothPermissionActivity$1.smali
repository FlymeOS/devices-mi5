.class Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# instance fields
.field final synthetic QS:Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;->QS:Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;->QS:Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->a(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 67
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;->QS:Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->b(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity$1;->QS:Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;->c(Lcom/android/vendorsettings/bluetooth/BluetoothPermissionActivity;)V

    goto :goto_0
.end method

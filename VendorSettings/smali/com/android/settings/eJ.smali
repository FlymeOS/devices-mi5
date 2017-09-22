.class Lcom/android/vendorsettings/eJ;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# instance fields
.field final synthetic rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/vendorsettings/eJ;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 3

    .prologue
    .line 101
    # getter for: Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/eJ;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->e(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/eJ;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->d(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/eJ;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/eJ;->rI:Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothDeviceInfoFragment;Z)Z

    goto :goto_0
.end method

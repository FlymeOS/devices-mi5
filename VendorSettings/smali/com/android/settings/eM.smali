.class Lcom/android/vendorsettings/eM;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# instance fields
.field final synthetic rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vendorsettings/eM;->rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/vendorsettings/eM;->rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/eM;->rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;->b(Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    .line 73
    :cond_0
    return-void
.end method

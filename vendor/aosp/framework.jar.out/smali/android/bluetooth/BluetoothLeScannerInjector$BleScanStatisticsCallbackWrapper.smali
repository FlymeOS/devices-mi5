.class Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeScannerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScanStatisticsCallbackWrapper"
.end annotation


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 151
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 152
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 153
    return-void
.end method


# virtual methods
.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 174
    return-void
.end method

.method public startBleScanStatistics()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetoothGatt;->registerStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to start ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBleScanStatistics()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetoothGatt;->unregisterStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to stop ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

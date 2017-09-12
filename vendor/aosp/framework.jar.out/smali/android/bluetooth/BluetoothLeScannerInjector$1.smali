.class final Landroid/bluetooth/BluetoothLeScannerInjector$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothLeScannerInjector;->startLeScanStatistics(Landroid/bluetooth/IBluetoothManager;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 5
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 112
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    goto :goto_0
.end method

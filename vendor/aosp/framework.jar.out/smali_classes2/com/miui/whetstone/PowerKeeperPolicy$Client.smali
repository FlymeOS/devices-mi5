.class Lcom/miui/whetstone/PowerKeeperPolicy$Client;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field private mAllowed:Z

.field private mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIBinder:Landroid/os/IBinder;

.field private mScanning:Z

.field private mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V
    .locals 2
    .param p2, "bleScanWrapper"    # Landroid/bluetooth/BleScanWrapper;
    .param p3, "b"    # Landroid/os/IBinder;
    .param p4, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1446
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1448
    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    .line 1449
    iput p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1451
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1452
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    .line 1453
    return-void
.end method

.method static synthetic access$900(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .prologue
    .line 1438
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    return v0
.end method


# virtual methods
.method public clearResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1456
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1457
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    .line 1458
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1459
    return-void
.end method

.method public getAllowed()Z
    .locals 1

    .prologue
    .line 1480
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return v0
.end method

.method public getScanning()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 4
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 1485
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1486
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to link deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 1473
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    const-string v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setAllowed, allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    .line 1477
    return-void
.end method

.method public setScanning(Z)V
    .locals 3
    .param p1, "scanning"    # Z

    .prologue
    .line 1462
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setScanning, scanning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1466
    return-void
.end method

.method public startLeScan()V
    .locals 7

    .prologue
    .line 1504
    iget-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-eqz v4, :cond_1

    .line 1505
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1506
    const-string v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startLeScan, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is scanning"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    :try_start_0
    const-string v4, "bluetooth_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1512
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1513
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 1514
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1516
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BleScanWrapper;->startScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1520
    :goto_1
    :try_start_2
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1521
    const-string v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ForceStartLeScan, client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1527
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    goto :goto_0

    .line 1517
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v1

    .line 1518
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "startLeScan"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1524
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v1

    .line 1525
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "startLeScan"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public stopLeScan()V
    .locals 7

    .prologue
    .line 1531
    iget-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-nez v4, :cond_1

    .line 1532
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1533
    const-string v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopLeScan, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not scanning"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    :try_start_0
    const-string v4, "bluetooth_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1539
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1540
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 1541
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1543
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BleScanWrapper;->stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1547
    :goto_1
    :try_start_2
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1548
    const-string v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ForceStopLeScan, client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1554
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    goto :goto_0

    .line 1544
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "stopLeScan"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1551
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "stopLeScan"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 1495
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1496
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unlink deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

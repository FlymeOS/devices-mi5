.class Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 744
    return-void
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "charId"    # Landroid/os/ParcelUuid;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    if-eqz p2, :cond_0

    .line 1385
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1391
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    return-void

    .line 1389
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "descId"    # Landroid/os/ParcelUuid;
    .param p3, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    if-eqz p2, :cond_0

    .line 1409
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1415
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    return-void

    .line 1413
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    if-eqz p4, :cond_0

    .line 1363
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1369
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    return-void

    .line 1367
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1181
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1188
    return-void

    .line 1185
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "advertisePreferred"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    if-eqz p5, :cond_0

    .line 1338
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    const/4 v4, 0x0

    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1344
    :goto_0
    if-eqz p6, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1352
    return-void

    .line 1342
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1349
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 1344
    goto :goto_1
.end method

.method public clearServices(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1477
    return-void

    .line 1474
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clientConnect(ILjava/lang/String;ZI)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    return-void

    .line 931
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    return-void

    .line 947
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public configureMTU(ILjava/lang/String;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1238
    return-void

    .line 1235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    return-void

    .line 1252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public disconnectAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1539
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    return-void

    .line 1543
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    return-void

    .line 979
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1194
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    return-void

    .line 1202
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public endServiceDeclaration(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    return-void

    .line 1435
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public flushPendingBatchResults(IZ)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    return-void

    .line 825
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 761
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 763
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 766
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    return-object v2

    .line 766
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    const-string v0, "android.bluetooth.IBluetoothGatt"

    return-object v0
.end method

.method public numHwTrackFiltersAvailable()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1570
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1573
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1576
    return v2

    .line 1573
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "authReq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    if-eqz p5, :cond_0

    .line 994
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1000
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    if-eqz p7, :cond_1

    .line 1002
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1008
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    return-void

    .line 998
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1013
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1006
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "authReq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1056
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1058
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    if-eqz p5, :cond_0

    .line 1064
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1070
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    if-eqz p7, :cond_1

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1078
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    if-eqz p9, :cond_2

    .line 1080
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1086
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    return-void

    .line 1068
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1076
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1084
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1221
    return-void

    .line 1218
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    return-void

    .line 963
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    if-eqz p1, :cond_0

    .line 887
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 893
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/bluetooth/IBluetoothGattCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 894
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 901
    return-void

    .line 891
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 898
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 893
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    if-eqz p5, :cond_0

    .line 1150
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    const/4 v4, 0x0

    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1156
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    if-eqz p7, :cond_1

    .line 1158
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    const/4 v4, 0x0

    invoke-virtual {p7, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1164
    :goto_1
    if-eqz p8, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    return-void

    .line 1154
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1162
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1164
    goto :goto_2
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 5
    .param p1, "appId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    if-eqz p1, :cond_0

    .line 1263
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1269
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1270
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    return-void

    .line 1267
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1274
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1269
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1585
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1586
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothGattCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1587
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    return-void

    .line 1586
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1591
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    if-eqz p4, :cond_0

    .line 1449
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1455
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    return-void

    .line 1453
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1459
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    if-eqz p5, :cond_0

    .line 1509
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v4, 0x0

    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1515
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    if-eqz p7, :cond_1

    .line 1517
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v4, 0x0

    invoke-virtual {p7, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1523
    :goto_1
    if-eqz p8, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1525
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    return-void

    .line 1513
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1521
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1523
    goto :goto_2
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1490
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1497
    return-void

    .line 1494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public serverConnect(ILjava/lang/String;ZI)V
    .locals 5
    .param p1, "servertIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1301
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1310
    return-void

    .line 1307
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 5
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    return-void

    .line 1323
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    if-eqz p2, :cond_0

    .line 837
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/le/AdvertiseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 843
    :goto_0
    if-eqz p3, :cond_1

    .line 844
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/bluetooth/le/AdvertiseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 850
    :goto_1
    if-eqz p4, :cond_2

    .line 851
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/bluetooth/le/AdvertiseSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 857
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return-void

    .line 841
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 848
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 855
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "scanStorages"    # Ljava/util/List;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    if-eqz p3, :cond_1

    .line 780
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 787
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 788
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 796
    return-void

    :cond_0
    move v2, v3

    .line 778
    goto :goto_0

    .line 784
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 793
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stopMultiAdvertising(I)V
    .locals 5
    .param p1, "appIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    return-void

    .line 876
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stopScan(IZ)V
    .locals 5
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 800
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    return-void

    .line 809
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    return-void

    .line 1557
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterClient(I)V
    .locals 5
    .param p1, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    return-void

    .line 913
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterServer(I)V
    .locals 5
    .param p1, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1292
    return-void

    .line 1289
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterStatisticsClient(Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothGattCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1602
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1609
    return-void

    .line 1601
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 5
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    if-eqz p5, :cond_0

    .line 1028
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1034
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    if-eqz p7, :cond_1

    .line 1036
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1042
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1045
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-void

    .line 1032
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1040
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 6
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1098
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1100
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    if-eqz p5, :cond_0

    .line 1106
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    const/4 v3, 0x0

    invoke-virtual {p5, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1112
    :goto_0
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    if-eqz p7, :cond_1

    .line 1114
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v3, 0x0

    invoke-virtual {p7, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1120
    :goto_1
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    if-eqz p9, :cond_2

    .line 1122
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    const/4 v3, 0x0

    invoke-virtual {p9, v1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1128
    :goto_2
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1131
    iget-object v3, p0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1132
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    return-void

    .line 1110
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1135
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1118
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1126
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createNewUserDir:I = 0x3f

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_deleteUserKey:I = 0x40

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_encryptWipeStorage:I = 0x3e

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountCIFS:I = 0x41

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountCIFS:I = 0x42

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1419
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1420
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1407
    if-nez p0, :cond_0

    .line 1408
    const/4 v0, 0x0

    .line 1414
    :goto_0
    return-object v0

    .line 1410
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1411
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1412
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1414
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1423
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 64
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    sparse-switch p1, :sswitch_data_0

    .line 2013
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 1431
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1432
    const/4 v4, 0x1

    goto :goto_0

    .line 1435
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v40

    .line 1438
    .local v40, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    const/4 v4, 0x1

    goto :goto_0

    .line 1443
    .end local v40    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v40

    .line 1446
    .restart local v40    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    const/4 v4, 0x1

    goto :goto_0

    .line 1451
    .end local v40    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v54

    .line 1453
    .local v54, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    if-eqz v54, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    const/4 v4, 0x1

    goto :goto_0

    .line 1454
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1458
    .end local v54    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v31, 0x1

    .line 1461
    .local v31, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    const/4 v4, 0x1

    goto :goto_0

    .line 1460
    .end local v31    # "enable":Z
    :cond_1
    const/16 v31, 0x0

    goto :goto_2

    .line 1466
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v54

    .line 1468
    .restart local v54    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    if-eqz v54, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1469
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1473
    .end local v54    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1476
    .local v41, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v55

    .line 1477
    .local v55, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1482
    .end local v41    # "mountPoint":Ljava/lang/String;
    .end local v55    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1485
    .restart local v41    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v34, 0x1

    .line 1486
    .local v34, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v51, 0x1

    .line 1487
    .local v51, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v34

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v34    # "force":Z
    .end local v51    # "removeEncrypt":Z
    :cond_3
    const/16 v34, 0x0

    goto :goto_4

    .line 1486
    .restart local v34    # "force":Z
    :cond_4
    const/16 v51, 0x0

    goto :goto_5

    .line 1492
    .end local v34    # "force":Z
    .end local v41    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1495
    .restart local v41    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v54

    .line 1496
    .local v54, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1501
    .end local v41    # "mountPoint":Ljava/lang/String;
    .end local v54    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1504
    .local v47, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v48

    .line 1505
    .local v48, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1510
    .end local v47    # "path":Ljava/lang/String;
    .end local v48    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1513
    .restart local v41    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1514
    .local v56, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1516
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1519
    .end local v41    # "mountPoint":Ljava/lang/String;
    .end local v56    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1523
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1525
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1527
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1529
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1531
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 1532
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v55

    .line 1534
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1531
    .end local v10    # "external":Z
    .end local v55    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 1539
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1542
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v55

    .line 1543
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1548
    .end local v5    # "id":Ljava/lang/String;
    .end local v55    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1552
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v34, 0x1

    .line 1553
    .restart local v34    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v55

    .line 1554
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1552
    .end local v34    # "force":Z
    .end local v55    # "resultCode":I
    :cond_6
    const/16 v34, 0x0

    goto :goto_7

    .line 1559
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1563
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1565
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1567
    .restart local v9    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v50, 0x1

    .line 1568
    .local v50, "readOnly":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v55

    .line 1569
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1567
    .end local v50    # "readOnly":Z
    .end local v55    # "resultCode":I
    :cond_7
    const/16 v50, 0x0

    goto :goto_8

    .line 1574
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1578
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v34, 0x1

    .line 1579
    .restart local v34    # "force":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v55

    .line 1580
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1578
    .end local v34    # "force":Z
    .end local v55    # "resultCode":I
    :cond_8
    const/16 v34, 0x0

    goto :goto_9

    .line 1585
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1588
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v57

    .line 1589
    .local v57, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    if-eqz v57, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1590
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 1594
    .end local v5    # "id":Ljava/lang/String;
    .end local v57    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1598
    .local v45, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 1599
    .local v43, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    .line 1600
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1605
    .end local v43    # "newId":Ljava/lang/String;
    .end local v45    # "oldId":Ljava/lang/String;
    .end local v55    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1608
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1609
    .restart local v47    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1614
    .end local v5    # "id":Ljava/lang/String;
    .end local v47    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v37

    .line 1616
    .local v37, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1618
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1621
    .end local v37    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1625
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1630
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1636
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1638
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1639
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1641
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1643
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1644
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1649
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1653
    .local v33, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v34, 0x1

    .line 1655
    .restart local v34    # "force":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1657
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1658
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1653
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v34    # "force":Z
    :cond_a
    const/16 v34, 0x0

    goto :goto_b

    .line 1663
    .end local v33    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1666
    .restart local v33    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v57

    .line 1667
    .restart local v57    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    if-eqz v57, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1668
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1672
    .end local v33    # "filename":Ljava/lang/String;
    .end local v57    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1675
    .restart local v33    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1676
    .local v42, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1678
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1681
    .end local v33    # "filename":Ljava/lang/String;
    .end local v42    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v30

    .line 1683
    .local v30, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    if-eqz v30, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1684
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1688
    .end local v30    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1690
    .local v20, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v54

    .line 1691
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1696
    .end local v20    # "password":Ljava/lang/String;
    .end local v54    # "result":I
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1698
    .local v58, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1699
    .restart local v20    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v54

    .line 1700
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1705
    .end local v20    # "password":Ljava/lang/String;
    .end local v54    # "result":I
    .end local v58    # "type":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1707
    .restart local v58    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1708
    .restart local v20    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptWipeStorage(ILjava/lang/String;)I

    move-result v54

    .line 1709
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1714
    .end local v20    # "password":Ljava/lang/String;
    .end local v54    # "result":I
    .end local v58    # "type":I
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1716
    .restart local v58    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1717
    .restart local v20    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v54

    .line 1718
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1723
    .end local v20    # "password":Ljava/lang/String;
    .end local v54    # "result":I
    .end local v58    # "type":I
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 1725
    .local v59, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1726
    .local v46, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1727
    .local v24, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v46

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v54

    .line 1728
    .local v54, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1730
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1733
    .end local v24    # "_flags":I
    .end local v46    # "packageName":Ljava/lang/String;
    .end local v54    # "result":[Landroid/os/storage/StorageVolume;
    .end local v59    # "uid":I
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1736
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1737
    .restart local v47    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1739
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1742
    .end local v5    # "id":Ljava/lang/String;
    .end local v47    # "path":Ljava/lang/String;
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v54

    .line 1744
    .local v54, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1749
    .end local v54    # "result":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1753
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1755
    .local v36, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1756
    .restart local v33    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v55

    .line 1757
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1762
    .end local v5    # "id":Ljava/lang/String;
    .end local v33    # "filename":Ljava/lang/String;
    .end local v36    # "gid":I
    .end local v55    # "resultCode":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1764
    .local v26, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1765
    .restart local v47    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 1766
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1771
    .end local v26    # "callingPkg":Ljava/lang/String;
    .end local v47    # "path":Ljava/lang/String;
    .end local v54    # "result":I
    :sswitch_24
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v54

    .line 1773
    .restart local v54    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1778
    .end local v54    # "result":I
    :sswitch_25
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v54

    .line 1780
    .local v54, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1782
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1785
    .end local v54    # "result":Ljava/lang/String;
    :sswitch_26
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1791
    :sswitch_27
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1793
    .local v32, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1794
    .local v27, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1799
    .end local v27    # "contents":Ljava/lang/String;
    .end local v32    # "field":Ljava/lang/String;
    :sswitch_28
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1801
    .restart local v32    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1802
    .restart local v27    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1804
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1807
    .end local v27    # "contents":Ljava/lang/String;
    .end local v32    # "field":Ljava/lang/String;
    :sswitch_29
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1811
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1813
    .restart local v6    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1814
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v55

    .line 1815
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1817
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1820
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v55    # "resultCode":I
    :sswitch_2a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v38

    .line 1822
    .local v38, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    move-object/from16 v0, p3

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1824
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1827
    .end local v38    # "lastMaintenance":J
    :sswitch_2b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1833
    :sswitch_2c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1839
    :sswitch_2d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v29

    .line 1841
    .local v29, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1843
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1846
    .end local v29    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1848
    .restart local v24    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v63

    .line 1849
    .local v63, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1851
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1854
    .end local v24    # "_flags":I
    .end local v63    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1856
    .restart local v24    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v63

    .line 1857
    .local v63, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1859
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v24    # "_flags":I
    .end local v63    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_30
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1864
    .local v61, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 1865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1869
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1871
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1878
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1885
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v52

    .line 1886
    .local v52, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    move-object/from16 v0, p3

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1888
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v52    # "res":J
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1893
    .local v28, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1898
    .end local v28    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1900
    .restart local v28    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1905
    .end local v28    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1907
    .restart local v28    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .line 1908
    .local v49, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 1909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1913
    .end local v28    # "diskId":Ljava/lang/String;
    .end local v49    # "ratio":I
    :sswitch_37
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1915
    .restart local v61    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1916
    .local v44, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1921
    .end local v44    # "nickname":Ljava/lang/String;
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 1923
    .restart local v61    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1924
    .restart local v24    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1925
    .local v25, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 1926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1930
    .end local v24    # "_flags":I
    .end local v25    # "_mask":I
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1932
    .local v35, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 1933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1937
    .end local v35    # "fsUuid":Ljava/lang/String;
    :sswitch_3a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1943
    :sswitch_3b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1945
    .restart local v24    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1946
    .restart local v25    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 1947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1951
    .end local v24    # "_flags":I
    .end local v25    # "_mask":I
    :sswitch_3c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v62

    .line 1953
    .local v62, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1955
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1958
    .end local v62    # "volumeUuid":Ljava/lang/String;
    :sswitch_3d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .line 1960
    .restart local v62    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v40

    .line 1962
    .local v40, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 1963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1967
    .end local v40    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v62    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1969
    .local v60, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1970
    .restart local v47    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v60

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->createNewUserDir(ILjava/lang/String;)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1975
    .end local v47    # "path":Ljava/lang/String;
    .end local v60    # "userHandle":I
    :sswitch_3f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1977
    .restart local v60    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->deleteUserKey(I)V

    .line 1978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1983
    .end local v60    # "userHandle":I
    :sswitch_40
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1987
    .local v18, "ip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1989
    .local v19, "user":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1991
    .restart local v20    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1993
    .local v21, "remotepath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1995
    .local v22, "localpath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "options":Ljava/lang/String;
    move-object/from16 v17, p0

    .line 1996
    invoke-virtual/range {v17 .. v23}, Landroid/os/storage/IMountService$Stub;->mountCIFS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    .line 1997
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2002
    .end local v18    # "ip":Ljava/lang/String;
    .end local v19    # "user":Ljava/lang/String;
    .end local v20    # "password":Ljava/lang/String;
    .end local v21    # "remotepath":Ljava/lang/String;
    .end local v22    # "localpath":Ljava/lang/String;
    .end local v23    # "options":Ljava/lang/String;
    .end local v55    # "resultCode":I
    :sswitch_41
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 2005
    .restart local v41    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmountCIFS(Ljava/lang/String;)I

    move-result v55

    .line 2006
    .restart local v55    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1429
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_33
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

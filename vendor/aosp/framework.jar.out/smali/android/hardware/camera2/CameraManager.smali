.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_COMMON_NUMBER:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/hardware/camera2/CameraManager;->isInWhiteList()Z

    move-result v0

    return v0
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 639
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 640
    const/4 v6, 0x0

    .line 641
    .local v6, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 642
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v1, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 702
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "numCameras":I
    :goto_0
    return-object v1

    .line 650
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "numCameras":I
    :cond_0
    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v0, v7}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v6

    .line 655
    if-le v6, v10, :cond_1

    invoke-static {}, Landroid/hardware/camera2/CameraManager;->isInWhiteList()Z
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_1

    .line 656
    add-int/lit8 v6, v6, -0x1

    .line 665
    :cond_1
    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 666
    .local v4, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 669
    const/4 v5, 0x0

    .line 671
    .local v5, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v0, v3, v4}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 672
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    if-nez v7, :cond_3

    .line 673
    const/4 v5, 0x1

    .line 693
    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 694
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 658
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "isDeviceSupported":Z
    :catch_0
    move-exception v2

    .line 659
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    throw v7

    .line 660
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v2

    .line 662
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 675
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v5    # "isDeviceSupported":Z
    :cond_3
    :try_start_2
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Expected to get non-empty characteristics"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 677
    :catch_2
    move-exception v7

    goto :goto_2

    .line 680
    :catch_3
    move-exception v2

    .line 684
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 685
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    throw v7

    .line 687
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_4
    move-exception v2

    .line 689
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 696
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error querying camera device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for listing."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 700
    .end local v5    # "isDeviceSupported":Z
    :cond_5
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 702
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "numCameras":I
    :cond_6
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static isInWhiteList()Z
    .locals 7

    .prologue
    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "isInWhiteList":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "camera.mono.packagelist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "packageList":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 620
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 621
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 622
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 623
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 624
    const/4 v1, 0x1

    .line 630
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 17
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v11

    .line 298
    .local v11, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v12, 0x0

    .line 301
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 303
    const/4 v9, 0x0

    .line 305
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_1
    new-instance v13, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v13, v0, v1, v2, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 312
    .local v13, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    new-instance v8, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v8}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 314
    .local v8, "holder":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v4

    .line 315
    .local v4, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 317
    .local v5, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 320
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_0

    .line 321
    new-instance v6, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v7, 0x2

    const-string v16, "Camera service is currently unavailable"

    move-object/from16 v0, v16

    invoke-direct {v6, v7, v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v14

    .line 337
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_3

    .line 338
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Should\'ve gone down the shim path"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 373
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v6

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 375
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_1
    move-exception v14

    .line 376
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "id":I
    .restart local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    .line 327
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v9

    .line 329
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v16, "com.android.nfc.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v13, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 372
    move-object v12, v13

    .line 373
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 381
    return-object v12

    .line 333
    :cond_2
    :try_start_7
    const-string v6, "CameraManager"

    const-string v7, "Using legacy camera HAL."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 339
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_3
    :try_start_8
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 347
    :cond_4
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 349
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 353
    :cond_5
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6

    .line 357
    :cond_6
    throw v14

    .line 359
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_2
    move-exception v14

    .line 361
    .local v14, "e":Landroid/os/RemoteException;
    new-instance v10, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v6, 0x2

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v10, v6, v7, v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .local v10, "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v13, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 365
    invoke-virtual {v10}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 378
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v10    # "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .line 379
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 712
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 723
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 734
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 736
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 752
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_0
    :goto_0
    return v4

    .line 738
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)I

    move-result v3

    .line 740
    .local v3, "res":I
    if-eqz v3, :cond_2

    .line 741
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "res":I
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    .line 746
    throw v1

    .line 743
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v3    # "res":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "res":I
    :catch_1
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 13
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 227
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Camera id %s does not match any currently connected camera device"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 271
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 231
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 238
    .local v4, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 239
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 240
    new-instance v8, Landroid/hardware/camera2/CameraAccessException;

    const/4 v10, 0x2

    const-string v11, "Camera service is currently unavailable"

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 247
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 249
    .local v6, "outParameters":[Ljava/lang/String;
    invoke-interface {v0, v4, v6}, Landroid/hardware/ICameraService;->getLegacyParameters(I[Ljava/lang/String;)I

    .line 250
    const/4 v8, 0x0

    aget-object v7, v6, v8

    .line 252
    .local v7, "parameters":Ljava/lang/String;
    new-instance v5, Landroid/hardware/CameraInfo;

    invoke-direct {v5}, Landroid/hardware/CameraInfo;-><init>()V

    .line 253
    .local v5, "info":Landroid/hardware/CameraInfo;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    .line 255
    invoke-static {v7, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 271
    .end local v5    # "info":Landroid/hardware/CameraInfo;
    .end local v6    # "outParameters":[Ljava/lang/String;
    .end local v7    # "parameters":Ljava/lang/String;
    :goto_0
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    return-object v1

    .line 258
    :cond_2
    :try_start_4
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 260
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 262
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_4
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v1, v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 264
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_5
    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v8

    throw v8

    .line 266
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v3

    .line 268
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/hardware/camera2/CameraAccessException;

    const/4 v10, 0x2

    const-string v11, "Camera service is currently unavailable"

    invoke-direct {v8, v10, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    if-nez p3, :cond_2

    .line 456
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 464
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;

    .line 465
    return-void

    .line 459
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler argument is null, but no looper exists in the calling thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 136
    if-nez p2, :cond_1

    .line 137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 138
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 146
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 183
    if-nez p2, :cond_1

    .line 184
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 185
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 192
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 509
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 157
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 158
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 203
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 204
    return-void
.end method

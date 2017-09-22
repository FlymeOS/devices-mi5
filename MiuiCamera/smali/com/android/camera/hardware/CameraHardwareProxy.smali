.class public Lcom/android/camera/hardware/CameraHardwareProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mHalCoordinate:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    .line 277
    return-void
.end method

.method public static declared-synchronized getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 2

    .prologue
    .line 96
    const-class v1, Lcom/android/camera/hardware/CameraHardwareProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/QcomCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    .line 109
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Lcom/android/camera/hardware/LCCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/LCCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 101
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    new-instance v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/MTKCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 106
    :cond_4
    new-instance v0, Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 304
    :cond_0
    return-object v3

    .line 298
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 299
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 561
    if-nez p2, :cond_0

    .line 571
    :goto_0
    return-object v3

    .line 563
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 564
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 565
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 570
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    const-string v4, "CameraHardwareProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 480
    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 536
    return-void
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 117
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 118
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getParametersString(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method public getParametersString(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 134
    const/4 v4, 0x0

    .line 136
    .local v4, "parameterString":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    .line 137
    .local v3, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "native_getParameters"

    const-string v6, "()Ljava/lang/String;"

    invoke-static {v3, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 138
    .local v2, "method":Lmiui/reflect/Method;
    if-eqz v2, :cond_0

    .line 139
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, p1, v6}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 146
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 141
    .restart local v2    # "method":Lmiui/reflect/Method;
    .restart local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "CameraHardwareProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParametersString NoSuchMethodException ownerClazz="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CameraHardwareProxy"

    const-string v6, "getParametersString IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRotation(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 437
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "rotation":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 439
    const/4 v1, -0x1

    .line 441
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 363
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "listOld":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_1

    .line 315
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 316
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v4, v5, :cond_0

    .line 317
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    return-object v1
.end method

.method public getSupportedStereoPictureSizes(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "mCameraDevice"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraManager$CameraProxy;",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 379
    const-string v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 425
    const-string v0, "off"

    return-object v0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    .line 160
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "getFlashOn"

    const-string v6, "()I"

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 161
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 162
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p1, v6}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    .line 168
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    move v3, v4

    .line 162
    goto :goto_0

    .line 164
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraHardwareProxy"

    const-string v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move v3, v4

    .line 168
    goto :goto_0
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 113
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v0, "xiaomi-beauty-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string v0, "xiaomi-beauty-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v0, "xiaomi-beauty-skin-smooth"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v0, "xiaomi-beauty-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 512
    const-string v1, "xiaomi-face-beauty-rank"

    if-eqz p2, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void

    .line 512
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "speed"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 215
    return-void
.end method

.method public setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 519
    const-string v1, "xiaomi-face-watermark"

    if-eqz p2, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "watermark_age"

    if-eqz p2, :cond_1

    const-string v0, "on"

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 519
    :cond_0
    const-string v0, "off"

    goto :goto_0

    .line 521
    :cond_1
    const-string v0, "off"

    goto :goto_1
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 5
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 393
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 394
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 402
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "hdr"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v0, "mi-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "enable"    # Z

    .prologue
    .line 151
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 178
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 182
    :try_start_0
    const-string v5, "android.hardware.Camera$CameraMetaDataCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;

    invoke-direct {v7, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 187
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "setMetadataCb"

    const-string v6, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 189
    .local v3, "method":Lmiui/reflect/Method;
    if-eqz v3, :cond_1

    .line 190
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v3, v5, p1, v6}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CameraHardwareProxy"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "CameraHardwareProxy"

    const-string v6, "ClassNotFoundException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 5
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 406
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 407
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 415
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string v0, "night-anti-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v0, "night-shot"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 493
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 128
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 131
    :cond_0
    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 532
    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 534
    return-void
.end method

.method public setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "xiaomi-time-watermark-value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "watermark_value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 498
    return-void
.end method

.method protected splitSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraManager$CameraProxy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 545
    if-nez p2, :cond_1

    move-object v3, v5

    .line 555
    :cond_0
    :goto_0
    return-object v3

    .line 547
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 548
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 552
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 554
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    goto :goto_0
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 223
    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 227
    return-void
.end method

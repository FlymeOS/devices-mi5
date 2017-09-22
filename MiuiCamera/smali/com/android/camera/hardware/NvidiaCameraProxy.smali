.class public Lcom/android/camera/hardware/NvidiaCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "NvidiaCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method

.method private static areaListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 472
    :cond_0
    const/4 v4, 0x0

    .line 492
    :goto_0
    return-object v4

    .line 474
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 475
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 476
    .local v3, "windowsString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 477
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 478
    .local v0, "area":Landroid/hardware/Camera$Area;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_2

    .line 490
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 101
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 102
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "cancelPicture"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, "method":Lmiui/reflect/Method;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "NvidiaCameraProxy"

    const-string v4, "cancelContinuousMode IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 226
    const-string v1, "nv-aohdr-enable"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 141
    const-string v1, "nv-auto-rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 202
    const-string v0, "nv-picture-iso"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 253
    const-string v0, "nv-nsl-num-buffers"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
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
    .line 428
    const-string v1, "flash-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "off,on,auto,red-eye,torch"

    invoke-static {v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getNvExposureTime(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 388
    const-string v1, "nv-exposure-time"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "exposure":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getParametersString(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 84
    .local v4, "parameterString":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    .line 85
    .local v3, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "native_getCustomParameters"

    const-string v6, "()Ljava/lang/String;"

    invoke-static {v3, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "method":Lmiui/reflect/Method;
    if-eqz v2, :cond_0

    .line 87
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, p1, v6}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 94
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 89
    .restart local v2    # "method":Lmiui/reflect/Method;
    .restart local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "NvidiaCameraProxy"

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

    .line 91
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NvidiaCameraProxy"

    const-string v6, "getParametersString IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 317
    const-string v1, "nv-disable-preview-pause"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
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
    .line 404
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    const-string v1, "manual"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    const-string v1, "lock"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    const-string v1, "lock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_1
    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
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
    .line 423
    const-string v1, "nv-picture-iso-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 118
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 119
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "getWbCCT"

    const-string v5, "()I"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 121
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p1, v5}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 126
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NvidiaCameraProxy"

    const-string v5, "getWBCurrentCCT IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 418
    const-string v0, "horizontal"

    const-string v1, "nv-flip-still"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 10
    .param p1, "cameraId"    # I

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "camera":Landroid/hardware/Camera;
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "com.nvidia.NvCamera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 48
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "open"

    const-string v6, "(I)Lcom/nvidia/NvCamera;"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 49
    .local v3, "method":Lmiui/reflect/Method;
    if-eqz v3, :cond_0

    .line 50
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0

    .line 59
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 52
    .restart local v3    # "method":Lmiui/reflect/Method;
    .restart local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "NvidiaCameraProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openCamera fail NoSuchMethodException ownerClazz="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "NvidiaCameraProxy"

    const-string v6, "no class found com.nvidia.NvCamera"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NvidiaCameraProxy"

    const-string v6, "openCamera IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 234
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-aohdr-enable"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Z

    .prologue
    .line 133
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-auto-rotation"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "count"    # I

    .prologue
    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-burst-picture-count"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public setColorTemperature(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "awbRangeValue":Ljava/lang/String;
    const-string v1, "nv-awb-cct-range"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "nv-contrast"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-edge-enhancement"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-exposure-time"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "flip"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "nv-flip-still"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
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
    .line 440
    .local p2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 441
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 442
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v3, p0, Lcom/android/camera/hardware/NvidiaCameraProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFocusAreas fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 451
    const-string v3, "focus-areas"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const-string p2, "auto"

    .line 395
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 399
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 400
    return-void

    .line 396
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string p2, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "position"    # I

    .prologue
    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-focus-position"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setHandNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 157
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "v":Ljava/lang/String;
    const-string v1, "hand-night"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "nv-picture-iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 113
    return-void
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
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
    .line 456
    .local p2, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 457
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 458
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v3, p0, Lcom/android/camera/hardware/NvidiaCameraProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMeteringAreas fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 467
    const-string v3, "metering-areas"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 165
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-still-hdr-morpho"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "count"    # I

    .prologue
    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "num"    # I

    .prologue
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-nsl-num-buffers"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "retVal":Z
    if-eqz p2, :cond_0

    .line 331
    const-string v1, "shot2shot"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "nv-capture-mode"

    const-string v2, "shot2shot"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    const-string v1, "normal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "nv-capture-mode"

    const-string v2, "normal"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 65
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 66
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "native_setCustomParameters"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 67
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 68
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    sget-boolean v3, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 78
    :cond_0
    return-void

    .line 70
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string v3, "NvidiaCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters NoSuchMethodException ownerClazz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "NvidiaCameraProxy"

    const-string v4, "setParameters IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "disable"    # Z

    .prologue
    .line 309
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-disable-preview-pause"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "flag"    # I

    .prologue
    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-raw-dump-flag"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "saturation"    # I

    .prologue
    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "v":Ljava/lang/String;
    const-string v1, "nv-saturation"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 182
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 183
    return-void
.end method

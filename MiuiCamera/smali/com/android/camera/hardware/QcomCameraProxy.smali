.class public Lcom/android/camera/hardware/QcomCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "QcomCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method

.method private getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 271
    const-string v0, "wb-manual-cct"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setFocusPosition(Landroid/hardware/Camera$Parameters;II)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "type"    # I
    .param p3, "pos"    # I

    .prologue
    .line 284
    const-string v0, "manual-focus-pos-type"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "manual-focus-position"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method public getChromaFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 426
    const-string v0, "chroma-flash"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 317
    const-string v0, "exposure-time"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 453
    const-string v0, "true"

    const-string v1, "internal-restart"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMaxContrast(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 361
    const-string v0, "max-contrast"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 299
    const-string v1, "max-exposure-time"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "maxValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 304
    :goto_0
    return v1

    .line 301
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 304
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getMaxSaturation(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 351
    const-string v0, "max-saturation"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSharpness(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 371
    const-string v0, "max-sharpness"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 289
    const-string v1, "min-exposure-time"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "minValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 294
    :goto_0
    return v1

    .line 291
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 329
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 479
    const-string v1, "auto-exposure-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 333
    const-string v1, "denoise-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 342
    const-string v1, "iso-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 381
    const-string v1, "touch-af-aec-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 430
    const-string v1, "video-hfr-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 254
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    const-string v1, "manual-cct"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    return-object v0
.end method

.method public getUbiFocus(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 418
    const-string v0, "af-bracket"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 435
    const-string v0, "video-hfr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/QcomCameraProxy;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 171
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "cctStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 173
    .local v0, "cct":I
    if-eqz v1, :cond_0

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    :cond_0
    return v0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    sget-boolean v6, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-eqz v6, :cond_2

    .line 123
    :cond_0
    const-string v4, "true"

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "focus-done"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 137
    :cond_1
    :goto_0
    return v4

    .line 125
    :cond_2
    const-string v6, "camera_focus_success_flag"

    invoke-static {v6, v5}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 126
    .local v3, "successFlag":I
    if-eqz v3, :cond_1

    .line 128
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v6

    .line 129
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v6, "getFocusState"

    const-string v7, "()I"

    invoke-static {v2, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 130
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 131
    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, p1, v7}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v3, v6, :cond_1

    move v4, v5

    goto :goto_0

    .line 133
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "QcomCameraProxy"

    const-string v6, "isFocusSuccessful IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 443
    const-string v1, "snapshot-picture-flip"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "pictureFlip":Ljava/lang/String;
    const-string v1, "flip-h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flip-v"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "flash-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 457
    const-string v1, "zsl-hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const/4 v1, 0x1

    .line 461
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 475
    const-string v0, "on"

    const-string v1, "zsl"

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
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "camera":Landroid/hardware/Camera;
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.hardware.Camera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 91
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "openLegacy"

    const-string v6, "(II)Landroid/hardware/Camera;"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 92
    .local v3, "method":Lmiui/reflect/Method;
    if-eqz v3, :cond_0

    .line 93
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 102
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 104
    :cond_1
    return-object v1

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "QcomCameraProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openLegacy failed due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", using open instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "aoHdrValue"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "sensor-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "auto-exposure"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "cameraMode"    # I

    .prologue
    .line 449
    const-string v0, "camera-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 450
    return-void
.end method

.method public setChromaFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "chromaFlash"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "chroma-flash"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "contrast"    # I

    .prologue
    .line 365
    if-ltz p2, :cond_0

    const-string v0, "max-contrast"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 366
    const-string v0, "contrast"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "denoise"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 309
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "exposure-time"

    int-to-double v2, p2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v0, "exposure-time"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, "face-detection"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 242
    return-void

    .line 238
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string p2, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "postion"    # I

    .prologue
    .line 275
    const/4 v0, 0x2

    rsub-int v1, p2, 0x3e8

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;II)V

    .line 277
    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 532
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 536
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const-string v0, "ae-bracket-hdr"

    const-string v1, "AE-Bracket"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "capture-burst-exposures"

    const-string v1, "-6,8,0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    return-void
.end method

.method public setHandNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 223
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "v":Ljava/lang/String;
    const-string v1, "morpho-hht"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "enable"    # Z

    .prologue
    .line 110
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 111
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "setLongshot"

    const-string v4, "(Z)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 113
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "QcomCameraProxy"

    const-string v4, "setLongshotMode IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 208
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "v":Ljava/lang/String;
    const-string v1, "morpho-hdr"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 490
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 493
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const-string v0, "ae-bracket-hdr"

    const-string v1, "AE-Bracket"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "capture-burst-exposures"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1
    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 512
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 515
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const-string v0, "ae-bracket-hdr"

    const-string v1, "AE-Bracket"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "capture-burst-exposures"

    const-string v1, "0,0,0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_1
    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 466
    if-eqz p2, :cond_1

    const-string v1, "enable"

    .line 467
    .local v1, "value":Ljava/lang/String;
    :goto_0
    const-string v2, "ois-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/hardware/QcomCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 468
    .local v0, "oisValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "ois"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void

    .line 466
    .end local v0    # "oisValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, "disable"

    goto :goto_0
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "saturation"    # I

    .prologue
    .line 355
    if-ltz p2, :cond_0

    const-string v0, "max-saturation"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 356
    const-string v0, "saturation"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sharpness"    # I

    .prologue
    .line 375
    if-ltz p2, :cond_0

    const-string v0, "max-sharpness"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 376
    const-string v0, "sharpness"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "touch-af-aec"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "ubiFocusMode"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v0, "af-bracket"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "aoHdrValue"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "video-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "hfr"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "video-hfr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "cct"    # I

    .prologue
    .line 266
    const-string v0, "manual-wb-type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 267
    const-string v0, "manual-wb-value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 268
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    .line 250
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 251
    return-void

    .line 247
    :cond_1
    const-string v0, "measure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string p2, "auto"

    goto :goto_0
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string v0, "zsl"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 142
    const-string v3, "QcomCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startObjectTrack left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "startTrack"

    const-string v4, "(IIII)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 146
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 147
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "QcomCameraProxy"

    const-string v4, "startObjectTrack IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    const-string v3, "QcomCameraProxy"

    const-string v4, "stopObjectTrack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 159
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "stopTrack"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 161
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "QcomCameraProxy"

    const-string v4, "stopObjectTrack IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

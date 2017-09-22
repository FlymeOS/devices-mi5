.class public Lcom/android/camera/hardware/MTKCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "MTKCameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    .line 421
    return-void
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 187
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 188
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "cancelContinuousShot"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 189
    .local v1, "method":Lmiui/reflect/Method;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MTKCameraProxy"

    const-string v4, "cancelContinuousMode IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 450
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 451
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "enableRaw16"

    const-string v4, "(Z)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 452
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 453
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 460
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 455
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const-string v3, "MTKCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableRawCallback NoSuchMethodException ownerClazz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MTKCameraProxy"

    const-string v4, "disableRawCallback IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableStereoMode()V
    .locals 6

    .prologue
    .line 463
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "setProperty"

    const-string v3, "(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 464
    .local v0, "method":Lmiui/reflect/Method;
    if-eqz v0, :cond_0

    .line 465
    const-class v1, Landroid/hardware/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "client.appmode"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "MtkStereo"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 467
    :cond_0
    return-void
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
    .line 266
    const-string v1, "flash-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 268
    :cond_0
    const/4 v1, 0x0

    .line 273
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "off,on,auto,red-eye,torch"

    invoke-static {v1}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 251
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
    .line 343
    const-string v1, "exposure-meter-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 255
    const-string v1, "cap-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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
    .line 198
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    return-object v0
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
    .line 205
    const-string v1, "iso-speed-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedStereoPictureSizes(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
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
    .line 470
    const-string v1, "refocus-picture-size-values"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "size":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->splitSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 334
    const-string v0, "video-hfr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 261
    const-string v0, "1"

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 339
    const-string v0, "on"

    const-string v1, "zsd-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v0, "3dnr-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, "exposure-meter"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 239
    const-string v0, "burst-num"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "speed"    # I

    .prologue
    .line 172
    :try_start_0
    const-string v3, "MTKCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBurstShotSpeed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 174
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v3, "setContinuousShotSpeed"

    const-string v4, "(I)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 175
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 176
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MTKCameraProxy"

    const-string v4, "setBurstShotSpeed IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 235
    const-string v0, "mtk-cam-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 236
    return-void
.end method

.method public setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v0, "cap-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 12
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 117
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackClass()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackSetter()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "setter":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v7, :cond_1

    .line 120
    :cond_0
    const-string v9, "MTKCameraProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insufficient continuous shot callback info[class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setter:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "ContinuousShotCallback"

    .line 123
    const-string v7, "setContinuousShotCallback"

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_2

    .line 128
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.hardware.Camera$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "fullClassName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    new-instance v11, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;

    invoke-direct {v11, p0, p2}, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;-><init>(Lcom/android/camera/hardware/MTKCameraProxy;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    .end local v4    # "fullClassName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v6, v9

    .line 134
    .local v6, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Landroid/hardware/Camera$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";)V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 138
    .local v8, "signature":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v5

    .line 139
    .local v5, "method":Lmiui/reflect/Method;
    if-eqz v5, :cond_3

    .line 140
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v5, v9, p1, v10}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v5    # "method":Lmiui/reflect/Method;
    .end local v6    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "signature":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "MTKCameraProxy"

    const-string v10, "IllegalArgumentException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "MTKCameraProxy"

    const-string v10, "ClassNotFoundException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "contrast"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v0, "contrast"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "fb-enlarge-eye"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v0, "fb-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "fb-extreme-beauty"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v0, "face-beauty"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v0, "fb-face-pos"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "iso-speed"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "saturation"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "saturation"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sharpness"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "edge"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "fb-skin-color"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const-string v0, "fb-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "fb-slim-face"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string v0, "fb-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "slow-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "fb-smooth-level"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;

    .prologue
    .line 365
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoDataCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    :try_start_0
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoDataCallback 366"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 371
    const-string v5, "android.hardware.Camera$StereoCameraDataCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v7, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v8, Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;

    invoke-direct {v7, p2, v8}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 375
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 377
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoDataCallback 375"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v5, "setStereoCameraDataCallback"

    const-string v6, "(Landroid/hardware/Camera$StereoCameraDataCallback;)V"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 380
    .local v3, "method":Lmiui/reflect/Method;
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoDataCallback 378"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz v3, :cond_1

    .line 382
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoDataCallback 380"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
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

    .line 391
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "MTKCameraProxy"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MTKCameraProxy"

    const-string v6, "ClassNotFoundException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;

    .prologue
    .line 398
    const-string v5, "MTKCameraProxy"

    const-string v6, "setStereoWarningCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 403
    :try_start_0
    const-string v5, "android.hardware.Camera$StereoCameraWarningCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 404
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v7, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v8, Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;

    invoke-direct {v7, p2, v8}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 407
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 408
    .local v4, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v5, "setStereoCameraWarningCallback"

    const-string v6, "(Landroid/hardware/Camera$StereoCameraWarningCallback;)V"

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 410
    .local v3, "method":Lmiui/reflect/Method;
    if-eqz v3, :cond_1

    .line 411
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

    .line 419
    .end local v3    # "method":Lmiui/reflect/Method;
    .end local v4    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "MTKCameraProxy"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MTKCameraProxy"

    const-string v6, "ClassNotFoundException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "frameRate"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "video-hfr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v0, "stereo-dof-level"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "isVsDof"    # Z

    .prologue
    .line 352
    const-string v1, "stereo-vsdof-mode"

    if-eqz p2, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void

    .line 352
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "zsd-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.class public Lcom/android/camera/hardware/LCCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "LCCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 107
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
    .line 125
    const-string v1, "metering-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/LCCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
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
    .line 65
    const-string v1, "iso-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/LCCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getZslSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 83
    const-string v0, "true"

    const-string v1, "zsl-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 116
    const-string v0, "1"

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 37
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "needFlash"

    const-string v5, "()Z"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 38
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 39
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p1, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 45
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LCCameraProxy"

    const-string v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 52
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v4, "previewEnabled"

    const-string v5, "()Z"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 54
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p1, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 60
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LCCameraProxy"

    const-string v5, "isPreviewEnabled IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 121
    const-string v0, "true"

    const-string v1, "zsl"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "metering"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 99
    const-string v0, "zsl-num"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "contrast"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "contrast"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "saturation"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "saturation"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sharpness"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "sharpness"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "zsl"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

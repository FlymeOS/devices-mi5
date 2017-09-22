.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v1, "CameraErrorCallback"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " paused="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isPaused()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 32
    const-string v0, "CameraErrorCallback"

    const-string v1, "media server died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->notifyError()V

    .line 39
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_fail_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e0216

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 53
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 34
    const-string v0, "CameraErrorCallback"

    const-string v1, "unspecified camera error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 36
    :cond_3
    const-string v0, "CameraErrorCallback"

    const-string v1, " other unknown error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const v0, 0x7f0e0005

    goto :goto_2

    :cond_5
    const v0, 0x7f0e0004

    goto :goto_2
.end method

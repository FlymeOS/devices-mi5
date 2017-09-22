.class public Lcom/android/camera/module/VideoModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .prologue
    .line 3400
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    .line 3405
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3410
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 3427
    :cond_0
    :goto_0
    return-void

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 3413
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3414
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto :goto_0

    .line 3417
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-nez v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 3420
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3421
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 3422
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 3423
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$4100(Lcom/android/camera/module/VideoModule;)V

    .line 3424
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-nez v0, :cond_0

    .line 3425
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 3426
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

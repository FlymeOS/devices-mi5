.class Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCameraThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/module/MorphoPanoramaModule$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    .line 346
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 353
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    .line 359
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 361
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupCameraThread mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 365
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->initializeCapabilities()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1600(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 366
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1700(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 367
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->setDisplayOrientation()V

    .line 371
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->setupCaptureParams()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1800(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 373
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1900(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/hardware/Camera$Parameters;)V

    .line 374
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2000(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetupCameraThread done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # setter for: Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    invoke-static {v1, v6}, Lcom/android/camera/module/MorphoPanoramaModule;->access$402(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 381
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v4, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mOpenCameraFail:Z

    .line 382
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 383
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # setter for: Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    invoke-static {v1, v6}, Lcom/android/camera/module/MorphoPanoramaModule;->access$402(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 385
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v4, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDisabled:Z

    .line 386
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

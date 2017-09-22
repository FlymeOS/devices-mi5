.class Lcom/android/camera/module/CameraModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "x1"    # Lcom/android/camera/module/CameraModule$1;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    .line 322
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 329
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->prepareOpenCamera()V

    .line 332
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 333
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraStartUpThread mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 338
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->initializeCapabilities()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$700(Lcom/android/camera/module/CameraModule;)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$800(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 340
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->initializeFocusManager()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$900(Lcom/android/camera/module/CameraModule;)V

    .line 341
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 345
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 347
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v1, v1, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 354
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 355
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/camera/module/CameraModule;->mOnResumeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/module/CameraModule;->access$1002(Lcom/android/camera/module/CameraModule;J)J

    .line 357
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    const-string v1, "Camera"

    const-string v2, "CameraStartUpThread done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v1, v8}, Lcom/android/camera/module/CameraModule;->access$1102(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 362
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v6, v1, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    .line 363
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 352
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v1, v8}, Lcom/android/camera/module/CameraModule;->access$1102(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 366
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v6, v1, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    .line 367
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

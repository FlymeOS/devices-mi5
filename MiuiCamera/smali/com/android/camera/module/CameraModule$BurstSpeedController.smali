.class Lcom/android/camera/module/CameraModule$BurstSpeedController;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstSpeedController"
.end annotation


# instance fields
.field private mBurstStartTime:J

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 4494
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "x1"    # Lcom/android/camera/module/CameraModule$1;

    .prologue
    .line 4494
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .prologue
    .line 4494
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onPictureTaken()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .prologue
    .line 4494
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onShutter()V

    return-void
.end method

.method private getBurstSpeed()I
    .locals 8

    .prologue
    .line 4543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    sub-long v2, v4, v6

    .line 4544
    .local v2, "timeduration":J
    const/4 v0, 0x0

    .line 4545
    .local v0, "speed":I
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 4546
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    div-long/2addr v4, v2

    long-to-int v0, v4

    .line 4548
    :cond_0
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_1

    .line 4549
    const-string v1, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current burst Speed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    :cond_1
    return v0
.end method

.method private onPictureTaken()V
    .locals 5

    .prologue
    .line 4523
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4524
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 4526
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 4540
    :cond_0
    :goto_0
    return-void

    .line 4527
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isNeedSlowDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4528
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->getBurstSpeed()I

    move-result v0

    .line 4529
    .local v0, "speed":I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/storage/ImageSaver;->getSuitableBurstShotSpeed()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 4530
    .local v1, "suitableSpeed":I
    if-nez v1, :cond_2

    .line 4531
    const/4 v1, 0x1

    .line 4532
    const-string v2, "Camera"

    const-string v3, "current performance is very poor, will set the speed = 1 to native "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    :cond_2
    sget-boolean v2, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v2, :cond_3

    .line 4535
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set BurstShotSpeed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setBurstShotSpeed(I)V

    goto :goto_0
.end method

.method private onShutter()V
    .locals 6

    .prologue
    .line 4498
    iget-wide v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    .line 4501
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4504
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 4506
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 4516
    :cond_1
    :goto_0
    return-void

    .line 4508
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->getBurstDelay()I

    move-result v0

    .line 4509
    .local v0, "delay":I
    if-nez v0, :cond_3

    .line 4510
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->sendBurstCommand()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$2800(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 4512
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public capture()V
    .locals 2

    .prologue
    .line 4519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    .line 4520
    return-void
.end method

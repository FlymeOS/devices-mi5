.class Lcom/android/camera/module/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/module/VideoModule$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 413
    :pswitch_0
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 273
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v2}, Lcom/android/camera/module/VideoModule;->getScreenDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 277
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->updateRecordingTime()V
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$100(Lcom/android/camera/module/VideoModule;)V

    goto :goto_0

    .line 287
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v2, v2, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 291
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mOnResumeTime:J
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 298
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->switchCamera()V
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)V

    goto/16 :goto_0

    .line 303
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 308
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v2, v2, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 310
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->changePreviewSurfaceSize()V

    .line 311
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v5, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 316
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 317
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z
    invoke-static {v1, v5}, Lcom/android/camera/module/VideoModule;->access$302(Lcom/android/camera/module/VideoModule;Z)Z

    goto/16 :goto_0

    .line 322
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v2, v2, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 323
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->changePreviewSurfaceSize()V

    goto/16 :goto_0

    .line 329
    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    :pswitch_b
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1, v5}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    goto/16 :goto_0

    .line 343
    :pswitch_c
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->showStoppingUI()V
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)V

    goto/16 :goto_0

    .line 348
    :pswitch_d
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1, v6}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    .line 353
    :pswitch_e
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 355
    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$MainHandler$1;-><init>(Lcom/android/camera/module/VideoModule$MainHandler;)V

    .line 368
    .local v0, "showAnim":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 369
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animateOut(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 371
    :cond_6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 375
    .end local v0    # "showAnim":Ljava/lang/Runnable;
    :cond_7
    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/module/VideoModule$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 382
    :pswitch_f
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 387
    :pswitch_10
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v6, v1, Lcom/android/camera/module/VideoModule;->mIgnoreFocusChanged:Z

    .line 388
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto/16 :goto_0

    .line 393
    :pswitch_11
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->onPreviewStart()V
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$1200(Lcom/android/camera/module/VideoModule;)V

    .line 394
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v2, 0x0

    # setter for: Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$1302(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$StereoSwitchThread;)Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    goto/16 :goto_0

    .line 399
    :pswitch_12
    const-string v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e01df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getWarningMessageParent()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 408
    :pswitch_13
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getWarningMessageParent()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

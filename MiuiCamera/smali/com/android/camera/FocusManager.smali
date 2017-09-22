.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mFrameView:Lcom/android/camera/ui/FrameView;

.field private mHandler:Landroid/os/Handler;

.field private mKeepFocusUIState:Z

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p3, "defaultFocusModes"    # [Ljava/lang/String;
    .param p4, "focusView"    # Lcom/android/camera/ui/FocusView;
    .param p5, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p6, "listener"    # Lcom/android/camera/FocusManager$Listener;
    .param p7, "mirror"    # Z
    .param p8, "looper"    # Landroid/os/Looper;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 149
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 153
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 154
    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 155
    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/FocusManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/FocusManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method private autoFocus(I)V
    .locals 5
    .param p1, "from"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 636
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start autoFocus from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 639
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 640
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    instance-of v0, v0, Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 647
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    .line 648
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 650
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 651
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 652
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 658
    return-void

    :cond_3
    move v0, v2

    .line 639
    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 662
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 671
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 672
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 673
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 674
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    const-string v0, "FocusManager"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 683
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 685
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 686
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 688
    :cond_1
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "from"    # I
    .param p4, "onlyAe"    # Z

    .prologue
    const/4 v2, 0x1

    .line 524
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 533
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZ)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 538
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 539
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 542
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x3

    if-ne v0, p3, :cond_4

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 547
    :cond_4
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 548
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getTapAction()I
    .locals 2

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "focusMode":Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    :cond_0
    const/4 v1, 0x1

    .line 880
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 459
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 465
    return-void
.end method

.method private initializeFocusIndicator(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 489
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I
    .param p7, "from"    # I

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 471
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_1
    const v4, 0x3fe66666    # 1.8f

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private initializeParameters(IIIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "from"    # I
    .param p4, "onlyAe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 496
    move v3, p1

    .line 497
    .local v3, "previewX":I
    move v4, p2

    .line 499
    .local v4, "previewY":I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isFishEye()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x2

    new-array v8, v0, [F

    int-to-float v0, p1

    aput v0, v8, v1

    int-to-float v0, p2

    aput v0, v8, v2

    .line 501
    .local v8, "pts":[F
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 502
    aget v0, v8, v1

    float-to-int v3, v0

    .line 503
    aget v0, v8, v2

    float-to-int v4, v0

    .line 506
    .end local v8    # "pts":[F
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 507
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 511
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 512
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    .line 515
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 516
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 921
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValid(I)Z
    .locals 8
    .param p1, "from"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 622
    .local v0, "now":J
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    const-wide/16 v4, 0x1388

    .line 624
    .local v4, "timeout":J
    :goto_0
    if-ge p1, v7, :cond_1

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ge p1, v2, :cond_1

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 626
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    move v2, v6

    .line 632
    :goto_1
    return v2

    .line 622
    .end local v4    # "timeout":J
    :cond_2
    const-wide/16 v4, 0xfa0

    goto :goto_0

    .line 629
    .restart local v4    # "timeout":J
    :cond_3
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_4

    .line 630
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 632
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 900
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 864
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private multiCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 696
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 697
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 868
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .prologue
    .line 449
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 452
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 453
    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 8

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 433
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 436
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 437
    iput-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 438
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    .line 439
    .local v3, "x":I
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    .line 440
    .local v4, "y":I
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 442
    const/4 v0, 0x1

    .line 445
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v7    # "rect":Landroid/graphics/RectF;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFocusIndicator()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 493
    return-void
.end method

.method private setFocusState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 183
    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 187
    return-void
.end method


# virtual methods
.method public cancelMultiSnapPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 839
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v1, :cond_0

    .line 840
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 841
    const/4 v0, 0x1

    .line 843
    :cond_0
    return v0
.end method

.method public doMultiSnap(Z)V
    .locals 3
    .param p1, "checkFocusState"    # Z

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-nez p1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 310
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 312
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 316
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 317
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_0

    .line 318
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 286
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 290
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    .line 291
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 10

    .prologue
    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 584
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v3

    .line 585
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 586
    .local v0, "rect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 587
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v5, v4, :cond_2

    .line 588
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_0

    .line 594
    :cond_2
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 595
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v1, v5

    .line 596
    .local v1, "x":I
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    .line 597
    .local v2, "y":I
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    move v3, v4

    .line 598
    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 716
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 764
    :goto_0
    return-object v5

    .line 717
    :cond_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v4

    .line 720
    .local v4, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 722
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 723
    const-string v5, "manual"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 724
    const-string v5, "manual"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 732
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "find":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 736
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 737
    .local v3, "mode":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 738
    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 739
    const/4 v1, 0x1

    .line 743
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 746
    const-string v5, "auto"

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 748
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 753
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 754
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_camera_focus_mode_key"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "find":Z
    .end local v2    # "i":I
    :cond_4
    const-string v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 761
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 763
    :cond_5
    const-string v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FocusMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 725
    :cond_6
    const-string v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "continuous-video"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "macro"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 728
    :cond_7
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 735
    .restart local v1    # "find":Z
    .restart local v2    # "i":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 750
    .end local v3    # "mode":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_3
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 827
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 835
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 328
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 332
    if-eqz p1, :cond_1

    .line 333
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 334
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 340
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 336
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 337
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    .line 345
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_7

    .line 349
    if-eqz p1, :cond_5

    .line 350
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 351
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 355
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 364
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 367
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1

    .line 361
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 362
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 361
    goto :goto_3

    .line 370
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZZ)V
    .locals 11
    .param p1, "moving"    # Z
    .param p2, "isSuccessful"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    .line 377
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v0, 0x1

    .line 383
    .local v0, "showFocusIndicator":Z
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 385
    const/4 v0, 0x0

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    if-eqz p1, :cond_4

    .line 394
    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v9, :cond_3

    .line 395
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 397
    :cond_3
    const-string v2, "FocusManager"

    const-string v3, "Camera KPI: CAF start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    .line 399
    if-eqz v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_0

    .line 403
    :cond_4
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 404
    .local v1, "state":I
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz p2, :cond_6

    .line 406
    invoke-direct {p0, v8}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 407
    invoke-direct {p0, v8}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 412
    :goto_1
    if-eqz v0, :cond_5

    .line 413
    if-eqz p2, :cond_7

    .line 414
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 420
    :cond_5
    :goto_2
    if-ne v1, v9, :cond_0

    .line 421
    invoke-direct {p0, v8}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 422
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 423
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v2, :cond_8

    .line 424
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto/16 :goto_0

    .line 409
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 410
    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_1

    .line 416
    :cond_7
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_2

    .line 426
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto/16 :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 618
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .param p1, "a"    # D

    .prologue
    const/4 v6, 0x0

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 914
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 918
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 608
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 612
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 613
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 614
    return-void
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 604
    return-void
.end method

.method public onShutterDown()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 519
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    .line 520
    .local v0, "tapAction":I
    const/4 v2, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    .line 521
    return-void

    .line 520
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 853
    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 8
    .param p1, "autoFocus"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    iget-boolean v4, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v4, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v3, 0x1

    .line 196
    .local v3, "tryAutoFocus":Z
    const/4 v0, 0x0

    .line 197
    .local v0, "autoFocusCalled":Z
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "focusMode":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    const-string v4, "auto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "macro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    :cond_2
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v4, v5, :cond_3

    .line 203
    const/4 v3, 0x0

    .line 207
    :cond_3
    const-string v4, "continuous-picture"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 208
    .local v2, "isCaf":Z
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 210
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v4, v5, :cond_6

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 212
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 214
    const/4 v0, 0x1

    .line 230
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Lcom/android/camera/Device;->isHalDoesCafWhenFlashOn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 233
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v4, v7, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    goto :goto_0

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 217
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 218
    const/4 v0, 0x1

    goto :goto_1

    .line 220
    :cond_6
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v4

    if-nez v4, :cond_4

    .line 222
    iput-boolean v7, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    .line 223
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 224
    iput-boolean v6, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    .line 225
    const/4 v0, 0x1

    goto :goto_1

    .line 237
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    return-void
.end method

.method public requestAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 556
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/4 v0, 0x4

    .line 562
    .local v0, "from":I
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 565
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 566
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 567
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 568
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 573
    const/4 v0, 0x1

    .line 578
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 579
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 580
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 575
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_1
.end method

.method public resetAfterCapture(Z)V
    .locals 2
    .param p1, "forceFocusCapture"    # Z

    .prologue
    .line 812
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    if-eqz p1, :cond_0

    .line 816
    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 817
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 818
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->removeMessages()V

    goto :goto_0

    .line 821
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 702
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 703
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 704
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 705
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 706
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 710
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 713
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 802
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 803
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 804
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 806
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    .line 808
    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 857
    return-void
.end method

.method public setFrameView(Lcom/android/camera/ui/FrameView;)V
    .locals 0
    .param p1, "frameView"    # Lcom/android/camera/ui/FrameView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 179
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 160
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 164
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 166
    return-void

    :cond_2
    move v0, v2

    .line 160
    goto :goto_0

    :cond_3
    move v0, v2

    .line 163
    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 171
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 172
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 175
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 776
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    :goto_1
    check-cast v0, Lcom/android/camera/ui/FocusIndicator;

    .line 783
    .local v0, "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 784
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 781
    .end local v0    # "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    goto :goto_1

    .line 785
    .restart local v0    # "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    :cond_3
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 787
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 789
    :cond_5
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 791
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 792
    :cond_6
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 793
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 794
    :cond_7
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 795
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method

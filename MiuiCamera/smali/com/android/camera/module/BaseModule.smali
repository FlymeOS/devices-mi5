.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$CameraMode;,
        Lcom/android/camera/module/BaseModule$CameraOpenThread;
    }
.end annotation


# static fields
.field protected static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraDisplayOrientation:I

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceRotation:F

.field protected mDisplayRotation:I

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mNumberOfCameras:I

.field protected mObjectTrackingStarted:Z

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field private mRestoring:Z

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSwitchingCamera:Z

.field protected mUIStyle:I

.field protected mWaitForRelease:Z

.field protected mZoomMax:I

.field private mZoomScaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 76
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 129
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 785
    return-void
.end method

.method private getCameraModeList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/BaseModule$CameraMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v1, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    return-object v0
.end method

.method public static getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 630
    iget v0, p1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
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

    .line 646
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


# virtual methods
.method public IsIgnoreTouchEvent()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return v0
.end method

.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 592
    const-string v0, "camera-service-mute"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method protected addT2TParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 596
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "t2t"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    return-void
.end method

.method protected addZoom(I)V
    .locals 4
    .param p1, "add"    # I

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 501
    .local v0, "value":I
    add-int/2addr v0, p1

    .line 502
    if-gez v0, :cond_1

    .line 503
    const/4 v0, 0x0

    .line 507
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 508
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 510
    const-string v1, "pref_camera_zoom_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 511
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 504
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_0

    .line 505
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method protected animateSwitchCamera()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public canIgnoreFocusChanged()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    return v0
.end method

.method protected changeConflictPreference()V
    .locals 5

    .prologue
    .line 852
    const-string v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 853
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v3

    .line 854
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 855
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 857
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 861
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 864
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected changePreviewSurfaceSize()V
    .locals 3

    .prologue
    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, "width":I
    const/4 v0, 0x0

    .line 814
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    packed-switch v2, :pswitch_data_0

    .line 824
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 825
    return-void

    .line 816
    :pswitch_0
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 817
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x3

    .line 818
    goto :goto_0

    .line 820
    :pswitch_1
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 821
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 399
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 404
    :cond_0
    return-void
.end method

.method protected configOisParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 602
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setOIS(Landroid/hardware/Camera$Parameters;Z)V

    .line 603
    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableCameraControls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 535
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->ignoreTouchEvent(Z)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected enterMutexMode()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method protected getPreferencesLocalId()I
    .locals 3

    .prologue
    .line 616
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 617
    .local v0, "preferencesLocalId":I
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    .line 626
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 624
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0
.end method

.method protected getPreferredCameraId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 634
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 635
    .local v0, "intentCameraId":I
    if-ne v0, v2, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getStartCameraId(Landroid/app/Activity;)I

    move-result v0

    .line 638
    :cond_0
    if-ne v0, v2, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 642
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDelay()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x7530

    :goto_0
    return v0

    :cond_1
    const v0, 0xea60

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()I
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    return v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v2, v3

    .line 203
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :goto_0
    return v2

    .line 184
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :pswitch_0
    if-ne p1, v2, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 186
    .local v1, "value":I
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, "state":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 193
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 194
    if-ne v0, v2, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v3, v1}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 196
    const-string v3, "pref_camera_exposure_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 198
    :cond_2
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EV = : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_3
    if-ne v0, v2, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 191
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f09007c
        :pswitch_0
    .end packed-switch
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 6
    .param p1, "up"    # Z
    .param p2, "pressed"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 458
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_volumekey_function_key"

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0e011a

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e0117

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e0118

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 468
    if-nez p3, :cond_3

    .line 469
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "zoom_volume_times"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 471
    :cond_3
    if-eqz p1, :cond_4

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 474
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 479
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasCameraException()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreTouchEvent(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    .line 265
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 495
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 496
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    .line 497
    return-void
.end method

.method protected initializeMutexMode()V
    .locals 8

    .prologue
    .line 543
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_0

    .line 589
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 546
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    new-instance v2, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 553
    .local v2, "enterHDR":Ljava/lang/Runnable;
    new-instance v4, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v4, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 560
    .local v4, "exitHDR":Ljava/lang/Runnable;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v0, "HDRRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v7, "exit"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v7, 0x7

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v3, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 577
    .local v3, "enterRAW":Ljava/lang/Runnable;
    new-instance v5, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v5, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 584
    .local v5, "exitRAW":Ljava/lang/Runnable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v1, "RAWRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v7, "exit"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v7, Lcom/android/camera/MutexModeManager;

    invoke-direct {v7, v6}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 486
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    goto :goto_0
.end method

.method protected isBackCamera()Z
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTapableRect(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 668
    :goto_0
    return v1

    .line 664
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 665
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 666
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 667
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 668
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRestoring()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method protected isSquareModeChange()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 867
    const-string v2, "pref_camera_square_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderTargeRatio()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 674
    .local v0, "relativeLocation":[I
    instance-of v1, p1, Landroid/graphics/Point;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 675
    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 676
    check-cast p1, Landroid/graphics/Point;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/Point;->y:I

    aget v2, v0, v5

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 677
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 678
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    move-object v1, p1

    .line 679
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    move-object v1, p1

    .line 680
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    aget v3, v0, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 681
    check-cast p1, Landroid/graphics/RectF;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aget v2, v0, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraError()V

    .line 721
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 375
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 153
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 154
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    .line 155
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 156
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 157
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 159
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestory()V

    .line 170
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 256
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingButton()Lcom/android/camera/ui/V6SettingButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    .line 260
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onNewIntent()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method protected onOpenCameraException()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-ne v0, v6, :cond_0

    .line 340
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_fail_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0216

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-ne v0, v6, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0e0006

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 342
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    const v0, 0x7f0e0005

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0004

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 382
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 385
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 389
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 392
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 393
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 394
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 231
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 221
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 216
    :cond_0
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 209
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 800
    const-string v0, "killed-moduleIndex"

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->getCurrentModule()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 303
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 307
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 295
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 426
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 767
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 238
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 691
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 692
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 693
    const-string v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 694
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected openCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera()V

    .line 93
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 94
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    goto :goto_0

    .line 99
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 765
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 613
    :cond_0
    return-void
.end method

.method protected prepareOpenCamera()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .locals 5

    .prologue
    .line 515
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->isNeedRestore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 517
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->getCameraModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 518
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 519
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule$CameraMode;

    .line 521
    .local v0, "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 522
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v4, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 523
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 524
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 525
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v4, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 526
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    goto :goto_0

    .line 529
    .end local v0    # "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/module/BaseModule$CameraMode;>;"
    :cond_0
    const-string v3, "pref_camera_panoramamode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 531
    :cond_1
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 606
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const v1, 0x7f0e0168

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 3
    .param p1, "contrast"    # F

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 325
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 328
    :cond_0
    if-gez v0, :cond_2

    .line 329
    const/4 v0, 0x0

    .line 333
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 334
    const/4 v1, 0x1

    goto :goto_0

    .line 330
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_1

    .line 331
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_1
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    .line 408
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    .line 409
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 412
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v6

    aput-object v6, v3, v5

    .line 413
    .local v3, "indicators":[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 414
    .local v2, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "indicator":Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method public setRestoring(Z)V
    .locals 0
    .param p1, "restoring"    # Z

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    .line 805
    return-void
.end method

.method protected setZoomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 707
    return-void
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 4
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 724
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 726
    if-eqz p2, :cond_0

    .line 727
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_nums_burst"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 732
    :cond_0
    invoke-static {p3, p4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_size_16_9"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 741
    :goto_0
    if-eqz p5, :cond_3

    .line 742
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "picture_with_location_key"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 750
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "front_camera_picture_taken_key"

    :goto_2
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 753
    return-void

    .line 736
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_size_4_3"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_0

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "picture_without_location_key"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_1

    .line 750
    :cond_4
    const-string v0, "back_camera_picture_taken_key"

    goto :goto_2
.end method

.method public transferOrientationCompensation(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "lastModule"    # Lcom/android/camera/module/Module;

    .prologue
    .line 433
    move-object v0, p1

    check-cast v0, Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 434
    check-cast p1, Lcom/android/camera/module/BaseModule;

    .end local p1    # "lastModule":Lcom/android/camera/module/Module;
    iget v0, p1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 435
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method protected updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusManager"    # Lcom/android/camera/FocusManagerAbstract;

    .prologue
    .line 828
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 829
    move v0, p1

    .line 830
    .local v0, "tmp":I
    move p1, p2

    .line 831
    move p2, v0

    .line 834
    .end local v0    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSquareModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 838
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 842
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 843
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    .line 845
    :cond_3
    return-void
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus(Ljava/lang/String;)V

    .line 699
    return-void
.end method

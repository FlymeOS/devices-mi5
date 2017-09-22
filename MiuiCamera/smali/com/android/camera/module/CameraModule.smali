.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$CameraCategory;,
        Lcom/android/camera/module/CameraModule$MetaDataManager;,
        Lcom/android/camera/module/CameraModule$BurstSpeedController;,
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field protected static final BURST_SHOOTING_COUNT:I


# instance fields
.field protected m3ALocked:Z

.field private mAFEndLogTimes:I

.field private mAeLockSupported:Z

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field protected mAwbLockSupported:Z

.field private mBurstShotTitle:Ljava/lang/String;

.field private mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

.field protected mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

.field private mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

.field protected volatile mCameraState:I

.field public mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field protected mFoundFace:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsCountDown:Z

.field protected mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field protected mJpegRotation:I

.field private mKeepBitmapTexture:Z

.field private mLastFreezeHDRTime:J

.field private mLastIsEffect:Z

.field private mLastShutterButtonClickTime:J

.field private mLongPressedAutoFocus:Z

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field protected mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

.field private mMeteringAreaSupported:Z

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMultiSnapStopRequest:Z

.field private mNeedAutoFocus:Z

.field private mOnResumeTime:J

.field private mPendingCapture:Z

.field private mPendingMultiCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field protected final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field protected final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRestartPreview:Z

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSetCameraParameter:I

.field private mSetMetaCallback:Z

.field private mShootOrientation:I

.field private mShootRotation:F

.field protected final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSnapshotOnIdle:Z

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field protected mTotalJpegCallbackNum:I

.field private mUpdateImageTitle:Z

.field private mUpdateSet:I

.field protected mVolumeLongPress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 121
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 122
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 123
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 182
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 200
    new-instance v0, Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .line 210
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 218
    new-instance v0, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 247
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 248
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 253
    new-instance v0, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    .line 254
    new-instance v0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 256
    new-instance v0, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 258
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    .line 260
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    .line 284
    new-instance v0, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 293
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 294
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 295
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 297
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 300
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 315
    new-instance v0, Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 831
    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4144
    new-instance v0, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 373
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    .line 374
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2008(Lcom/android/camera/module/CameraModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/CameraModule;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->traceDelayCaptureEvents()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/module/CameraModule;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/module/CameraModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->sendBurstCommand()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/module/CameraModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/module/CameraModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/module/CameraModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # [B

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopMultiSnap()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/camera/module/CameraModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p1
.end method

.method static synthetic access$5708(Lcom/android/camera/module/CameraModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    return-void
.end method

.method private animateCapture()V
    .locals 2

    .prologue
    .line 4013
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 4014
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4015
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->onCapture()V

    .line 4020
    :cond_0
    :goto_0
    return-void

    .line 4017
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 4001
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 4002
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 4004
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 4007
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 4008
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 4010
    :cond_0
    return-void
.end method

.method private applyPreferenceChange()V
    .locals 1

    .prologue
    .line 4556
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4557
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4559
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4560
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 4561
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 4563
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 4564
    return-void
.end method

.method private applyPreferenceSettingsLater()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 2177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 2178
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2180
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2182
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRestartPreview()V
    .locals 2

    .prologue
    .line 4476
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4477
    const-string v0, "Camera"

    const-string v1, "Restarting Preview... Camera Mode Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4479
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 4480
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 4484
    :cond_0
    return-void
.end method

.method private couldEnableObjectTrack()Z
    .locals 2

    .prologue
    .line 4297
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAttach()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 2336
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v10, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2339
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 2340
    .local v2, "data":[B
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v10, :cond_1

    .line 2341
    invoke-direct {p0, v2}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    .line 2343
    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 2348
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    .line 2349
    const/4 v6, 0x0

    .line 2351
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2352
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2353
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2355
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    .line 2362
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2356
    :catch_0
    move-exception v3

    .line 2358
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v10, "Camera"

    const-string v11, "IOException when doAttach"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2361
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    .line 2362
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2361
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    .line 2362
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2365
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2366
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v10}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 2367
    .local v5, "orientation":I
    invoke-static {v0, v5}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2368
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "inline-data"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "data"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2370
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 2374
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "orientation":I
    :cond_3
    const/4 v9, 0x0

    .line 2375
    .local v9, "tempUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2377
    .local v8, "tempStream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v11, "crop-temp"

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2378
    .local v7, "path":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2379
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v11, "crop-temp"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 2380
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2381
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2382
    const/4 v8, 0x0

    .line 2383
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 2393
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2395
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2396
    .local v4, "newExtras":Landroid/os/Bundle;
    const-string v10, "circle"

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2397
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    :cond_4
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_5

    .line 2400
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2405
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v1, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2408
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2410
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v1, v11}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2384
    .end local v1    # "cropIntent":Landroid/content/Intent;
    .end local v4    # "newExtras":Landroid/os/Bundle;
    .end local v7    # "path":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2385
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2386
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2393
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2388
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 2389
    .local v3, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2390
    iget-object v10, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2393
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2402
    .restart local v4    # "newExtras":Landroid/os/Bundle;
    .restart local v7    # "path":Ljava/io/File;
    :cond_5
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/Camera;
    .param p1, "isBackCamera"    # Z
    .param p2, "isImageCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    .line 1713
    if-nez p2, :cond_0

    .line 1714
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_0
    const-string v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1717
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1719
    const-string v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_1
    const-string v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1723
    const-string v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v1, :cond_3

    .line 1727
    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1730
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_4
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_5

    .line 1733
    const-string v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1736
    const-string v1, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1739
    const-string v1, "pref_camera_square_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    :cond_7
    :goto_0
    return-object v0

    .line 1742
    :cond_8
    const-string v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1743
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1744
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1745
    const-string v1, "pref_camera_magic_mirror_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 1411
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleDelayShutter()V
    .locals 4

    .prologue
    const/16 v1, 0x1d

    .line 2185
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2186
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2187
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_0
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    .line 746
    .local v0, "view":Lcom/android/camera/ui/FaceView;
    if-eqz p1, :cond_3

    .line 747
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 749
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 750
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 751
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 752
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 753
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 761
    :cond_2
    :goto_0
    return-void

    .line 756
    :cond_3
    if-eqz p2, :cond_4

    .line 757
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 759
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideLoadUI(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 1634
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    return-void

    .line 1634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3808
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 3810
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 3811
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 3812
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3813
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 3814
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 3815
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 3816
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3818
    :cond_0
    return-void
.end method

.method private initializeCapabilities()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4058
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 4059
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    .line 4062
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    .line 4063
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    .line 4064
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    .line 4065
    const-string v0, "continuous-picture"

    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    .line 4067
    return-void

    :cond_0
    move v0, v2

    .line 4059
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4062
    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 713
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 714
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 716
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    .line 2963
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2965
    .local v3, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v6, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2970
    const/4 v9, 0x0

    .line 2971
    .local v9, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 2974
    :cond_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    .line 2975
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2977
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2985
    :goto_1
    return-void

    .line 2965
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2982
    .restart local v9    # "rect":Landroid/graphics/Rect;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2983
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    goto :goto_1
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4316
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 4317
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4318
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4319
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 4320
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4321
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4322
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4323
    const/4 v0, 0x1

    .line 4325
    :cond_0
    return v0
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 736
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 742
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 2686
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2688
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2689
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2690
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2691
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2692
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 2694
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3771
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 4131
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4132
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4133
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4134
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4135
    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4136
    .local v2, "result":Z
    const-string v4, "captureAfterLaunch"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4137
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4141
    .end local v1    # "myExtras":Landroid/os/Bundle;
    .end local v2    # "result":Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isCountDownMode()Z
    .locals 1

    .prologue
    .line 2475
    const-string v0, "pref_delay_capture_mode"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 3149
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3151
    :cond_0
    const/4 v0, 0x0

    .line 3153
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 3144
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->isVisibleWithAnimationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 1

    .prologue
    .line 2533
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 702
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 4045
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4046
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 3680
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3683
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3684
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3686
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3688
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3689
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    .line 3691
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 3692
    return-void
.end method

.method private onModeSelected(Ljava/lang/Object;)V
    .locals 3
    .param p1, "extra1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 2088
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 2089
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2090
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    .line 2162
    :goto_0
    return-void

    .line 2093
    :cond_0
    const-string v0, "pref_camera_ubifocus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2094
    const-string v0, "pref_camera_ubifocus_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2095
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 2152
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const-string v1, "pref_camera_gradienter_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 2154
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2155
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectButton;->resetSettings()V

    .line 2159
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2160
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2161
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 2099
    :cond_3
    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2100
    const-string v0, "pref_camera_hand_night_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2101
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    .line 2102
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 2105
    :cond_5
    const-string v0, "pref_camera_square_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2106
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->updateRefenceLineAccordSquare()V

    .line 2108
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2110
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    goto/16 :goto_1

    .line 2112
    :cond_6
    const-string v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2113
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2114
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_1

    .line 2116
    :cond_8
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_camera_tilt_shift_mode"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_camera_fisheye_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2120
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_1

    .line 2140
    :cond_a
    const-string v0, "pref_camera_manual_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    const-string v0, "pref_camera_manual_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2142
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 2145
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateFocusMode()V

    goto/16 :goto_1

    .line 2147
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 2148
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2157
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectButton;->restoreSettings()V

    goto/16 :goto_2
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 3846
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 3847
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3848
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3849
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    .line 3854
    :cond_0
    :goto_0
    return-void

    .line 3850
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3851
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 3852
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStereoModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2061
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 2062
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2063
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 2064
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 2065
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2069
    :cond_0
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2070
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 2072
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2073
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2074
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2075
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexModeDummy()V

    .line 2076
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 2084
    :cond_1
    :goto_0
    return-void

    .line 2078
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2079
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0e01df

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2081
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "whiteBalance"    # Ljava/lang/String;
    .param p3, "exposureMode"    # Ljava/lang/String;
    .param p4, "focusMode"    # Ljava/lang/String;
    .param p5, "isoValue"    # Ljava/lang/String;
    .param p6, "effectValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1665
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    .line 1680
    :goto_0
    return-void

    .line 1673
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 5

    .prologue
    .line 1639
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    sget-boolean v2, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v2, :cond_2

    .line 1644
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    goto :goto_0

    .line 1647
    :cond_2
    new-instance v0, Lcom/android/camera/PictureSize;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v0, "pictureSize":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1651
    iget v2, v0, Lcom/android/camera/PictureSize;->width:I

    iget v3, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v1

    .line 1652
    .local v1, "style":I
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v1, v2, :cond_3

    .line 1653
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1654
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changePreviewSurfaceSize()V

    .line 1657
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/PictureSize;->width:I

    iget v4, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    goto :goto_0
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 3821
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3822
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 3823
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 3826
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 3827
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3828
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3829
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 4632
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4634
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 4635
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 4636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 4637
    return-void
.end method

.method private resetGradienter()V
    .locals 2

    .prologue
    .line 4487
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4488
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 4489
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 4491
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4040
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4041
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4042
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 4052
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 4053
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 4054
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 4055
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2627
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2628
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2629
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 2632
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2633
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2634
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 2635
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2636
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2638
    :cond_0
    return-void
.end method

.method private resumePreview()V
    .locals 2

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2751
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2752
    return-void
.end method

.method private saveJpegData([B)V
    .locals 15
    .param p1, "data"    # [B

    .prologue
    .line 2318
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2319
    .local v0, "s":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 2320
    .local v7, "loc":Landroid/location/Location;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v11

    .line 2322
    .local v11, "orientation":I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v1, v11

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 2323
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2324
    .local v8, "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2329
    .local v9, "height":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 2331
    .local v3, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 2333
    return-void

    .line 2326
    .end local v3    # "title":Ljava/lang/String;
    .end local v8    # "width":I
    .end local v9    # "height":I
    :cond_0
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2327
    .restart local v8    # "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v9    # "height":I
    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2597
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2598
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2600
    .local v1, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v2, v6

    aput-object v5, v2, v4

    const/4 v3, 0x2

    const-string v4, "pref_qc_camera_exposuretime_key"

    aput-object v4, v2, v3

    aput-object v5, v2, v7

    const/4 v3, 0x4

    const-string v4, "pref_camera_face_beauty_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v4, "pref_camera_shader_coloreffect_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2606
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2607
    .local v0, "flash":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2609
    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2610
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2615
    .end local v0    # "flash":Ljava/lang/String;
    .end local v1    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2616
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2617
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2618
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2619
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 2620
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2621
    return-void
.end method

.method private sendBurstCommand()V
    .locals 7

    .prologue
    .line 1265
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 1267
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1269
    monitor-exit v1

    .line 1271
    :cond_0
    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendDoCaptureMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0xf

    .line 4123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 4124
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4125
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4127
    :cond_0
    return-void
.end method

.method private setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 2225
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2239
    :cond_0
    :goto_0
    return-void

    .line 2226
    :cond_1
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    .line 2228
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 2229
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkActivityOrientation()V

    .line 2232
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 2234
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 2235
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    .line 2236
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2237
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    goto :goto_0
.end method

.method private setOrientationParameter()V
    .locals 5

    .prologue
    .line 2246
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v2, :cond_4

    .line 2248
    const/4 v0, 0x0

    .line 2250
    .local v0, "changeFlag":Z
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2251
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 2252
    .local v1, "newRotation":I
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2253
    const/4 v0, 0x1

    .line 2254
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2260
    .end local v1    # "newRotation":I
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2261
    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "xiaomi-preview-rotation"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2264
    const/4 v0, 0x1

    .line 2265
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "xiaomi-preview-rotation"

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2268
    :cond_2
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2270
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 2273
    .end local v0    # "changeFlag":Z
    :cond_4
    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    .line 4611
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    .line 4612
    return-void

    .line 4610
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    goto :goto_0

    .line 4611
    :cond_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    goto :goto_1
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 4071
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4072
    .local v0, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 4074
    return-void
.end method

.method private setupCaptureParams()V
    .locals 3

    .prologue
    .line 3777
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3778
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3779
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    .line 3780
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    .line 3781
    const-string v1, "save-image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    .line 3783
    :cond_0
    return-void
.end method

.method private showObjectTrackToastIfNeeded()V
    .locals 4

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4394
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4396
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3788
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3789
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 3790
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3791
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    .line 3792
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 3793
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 3794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3795
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3796
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 3797
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 3798
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 3799
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    .line 3803
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3805
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 721
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    :cond_1
    return-void
.end method

.method private stopMultiSnap()V
    .locals 4

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 2642
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 2643
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 2646
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2651
    :goto_0
    return-void

    .line 2649
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3317
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3318
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3320
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 3321
    const-string v0, "Camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 3323
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 3327
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3328
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3333
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 3334
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 3336
    :cond_2
    return-void

    .line 3330
    :cond_3
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3881
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 3936
    :goto_0
    return-void

    .line 3882
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 3883
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 3884
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3885
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3886
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 3888
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 3889
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3891
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 3893
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 3894
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3895
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 3896
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 3897
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3898
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 3899
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 3900
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 3901
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 3902
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 3903
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3905
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 3906
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3907
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EdgeShutterView;->cancelAnimation()V

    .line 3908
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3909
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 3910
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openCamera()V

    .line 3911
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->hasCameraException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3912
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 3915
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    .line 3916
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 3917
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    if-ne v3, v4, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 3918
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3919
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 3920
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    .line 3921
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3922
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3925
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 3926
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 3927
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 3928
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 3929
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 3930
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 3931
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    .line 3932
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 3935
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 3917
    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3835
    :goto_0
    return-void

    .line 3833
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3834
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 4

    .prologue
    .line 4102
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_0

    .line 4103
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 4105
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCaptureAfterLaunch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    .line 4107
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_2

    .line 4109
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4110
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 4111
    .local v0, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "off"

    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4112
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 4114
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4117
    .end local v0    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    .line 4118
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 4120
    :cond_2
    return-void
.end method

.method private traceDelayCaptureEvents()V
    .locals 3

    .prologue
    .line 4615
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4616
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4628
    :cond_0
    :goto_0
    return-void

    .line 4618
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4619
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 4620
    .local v0, "countTimes":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4621
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_3s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4622
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 4623
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_5s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4624
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4625
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_count_down_10s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHDRPreference()V
    .locals 3

    .prologue
    .line 4430
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4431
    .local v0, "hdrMode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 4432
    .local v1, "mutexhdr":I
    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 4434
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4435
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 4441
    :goto_0
    return-void

    .line 4436
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4437
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4439
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private updateLyingSensorState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4893
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4894
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setRotationIndicatorEnabled(Z)V

    .line 4896
    :cond_0
    return-void
.end method

.method private updateModePreference()V
    .locals 5

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3978
    :cond_0
    :goto_0
    return-void

    .line 3952
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 3953
    .local v1, "hdr":I
    if-eqz v1, :cond_2

    .line 3955
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 3957
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 3967
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 3968
    .local v0, "effect":I
    sget v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    if-ne v3, v0, :cond_5

    .line 3969
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    goto :goto_0

    .line 3958
    .end local v0    # "effect":I
    :cond_2
    const-string v3, "pref_camera_hand_night_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3959
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    .line 3960
    :cond_3
    const-string v3, "pref_camera_ubifocus_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3961
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    .line 3963
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 3971
    .restart local v0    # "effect":I
    :cond_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v2

    .line 3972
    .local v2, "index":I
    if-eq v0, v2, :cond_0

    .line 3975
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceSettingsLater()V

    goto :goto_0
.end method

.method private updateMutexModeUI(Z)V
    .locals 2
    .param p1, "done"    # Z

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1606
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 1607
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0e0188

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1614
    :cond_1
    const v0, 0x7f0e0186

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 1618
    :cond_2
    const-string v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0e0136

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x3d090

    if-gt v0, v1, :cond_3

    const v0, 0x7f0e0168

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1622
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1624
    :cond_4
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1685
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0e0084

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1697
    .local v7, "flashMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/FlashButton;->overrideSettings(Ljava/lang/String;)V

    .line 1698
    return-void

    .end local v7    # "flashMode":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 1693
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStereoSettings(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 3939
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3940
    if-eqz p1, :cond_1

    .line 3941
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_shader_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "off"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_hdr_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3948
    :cond_0
    :goto_0
    return-void

    .line 3945
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private updateWarningMessage(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "hide"    # Z

    .prologue
    const/16 v1, 0x15

    .line 4400
    if-eqz p1, :cond_0

    .line 4401
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4403
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4404
    if-nez p2, :cond_1

    .line 4405
    const v0, 0x7f0e0187

    if-ne v0, p1, :cond_2

    .line 4406
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4411
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageParent()Landroid/widget/LinearLayout;

    move-result-object v1

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4412
    return-void

    .line 4408
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4411
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 2950
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->cancel()V

    .line 2952
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->join()V

    .line 2953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2954
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2956
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeImage([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 912
    const/4 v1, 0x0

    .line 914
    .local v1, "outstream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "title":Ljava/lang/String;
    const-string v5, ".dng"

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .local v2, "outstream":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write image to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 919
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 920
    const/4 v1, 0x0

    .line 921
    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5, v4}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 927
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .restart local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 922
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .restart local v2    # "outstream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .prologue
    .line 3990
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3991
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3998
    :goto_0
    return-void

    .line 3994
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3995
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 3996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0
    .param p1, "startshut"    # Z

    .prologue
    .line 1509
    return-void
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 3021
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 3022
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3024
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3026
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3031
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3032
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3033
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3035
    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 2682
    return-void
.end method

.method public capture()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 1353
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v3, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return v2

    .line 1357
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1360
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1361
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    .line 1362
    iput-object v7, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "loc":Landroid/location/Location;
    sget-boolean v3, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1366
    :cond_2
    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1367
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPictureOrientation()V

    .line 1368
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1369
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1370
    .local v1, "pictureFormat":I
    const/16 v3, 0x100

    if-ne v3, v1, :cond_3

    .line 1371
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1373
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 1378
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1379
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1381
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v3, :cond_4

    .line 1382
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1385
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    .line 1387
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-virtual {v3, v0}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    .line 1388
    invoke-static {}, Lcom/android/camera/Device;->isCaptureStopFaceDetection()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1389
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1392
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1393
    iput-object v7, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 1394
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1395
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1398
    const-string v3, "pref_qc_camera_exposuretime_key"

    const v4, 0x7f0e0136

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0x3d090

    if-gt v3, v4, :cond_6

    const v3, 0x7f0e0168

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1402
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1404
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3232
    const-string v0, "Camera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 3234
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_0

    .line 3235
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 3236
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3239
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3240
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3241
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3242
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 3243
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 3244
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 3245
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 3246
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 3247
    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3248
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3249
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3250
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 3253
    :cond_1
    return-void
.end method

.method protected enterMutexMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2900
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2901
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 2903
    :cond_0
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2906
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 2909
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2910
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 2914
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e006c

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2915
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2918
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2919
    .local v0, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_qc_camera_iso_key"

    aput-object v2, v1, v5

    aput-object v4, v1, v3

    const-string v2, "pref_qc_camera_exposuretime_key"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_face_beauty_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_focus_mode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2927
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2929
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 2930
    const v1, 0x7f0e0187

    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2932
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2933
    :cond_5
    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2934
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2936
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2937
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2938
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2940
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2942
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2943
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 2944
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2945
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2946
    return-void
.end method

.method protected exitMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2872
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2878
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 2880
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2881
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2884
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e006c

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2885
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2888
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v4, :cond_3

    .line 2889
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2893
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 2894
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2895
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2896
    return-void

    .line 2891
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x0

    return v0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 4090
    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    .prologue
    .line 4899
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 4903
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    return-object v0
.end method

.method protected getBurstCount()I
    .locals 2

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 1513
    sget v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    .line 1519
    :goto_0
    return v0

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1515
    const/4 v0, 0x7

    goto :goto_0

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v0, :cond_2

    .line 1517
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1519
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getBurstDelayTime()I
    .locals 1

    .prologue
    .line 4640
    const/4 v0, 0x0

    return v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 1526
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4287
    const-string v0, "pref_camera_manual_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method protected getMaxPictureSize()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 968
    .local v0, "colorEffect":I
    if-eqz v0, :cond_0

    .line 969
    sget-boolean v2, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v2, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v1

    .line 972
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLowerEffectSize()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x300000

    goto :goto_0

    :cond_2
    const v1, 0x895440

    goto :goto_0
.end method

.method protected getMutexHdrMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "hdr"    # Ljava/lang/String;

    .prologue
    .line 3758
    const v0, 0x7f0e01aa

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3759
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3766
    :goto_0
    return v0

    .line 3759
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 3762
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3764
    const/4 v0, 0x2

    goto :goto_0

    .line 3766
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->overrideValue(Ljava/lang/String;)V

    .line 1420
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "off"

    .line 1423
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1420
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
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
    .line 1706
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 1757
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 2057
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :goto_0
    return v4

    .line 1760
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2030
    :sswitch_0
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    if-eqz v4, :cond_1

    .line 2031
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2032
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x20

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move v4, v5

    .line 2034
    goto :goto_0

    .line 1762
    :sswitch_1
    const-string v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1763
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v4, v6}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 1765
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    move v4, v5

    .line 1767
    goto :goto_0

    .line 1769
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1772
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1773
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    .line 1778
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1779
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1783
    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    move v4, v5

    .line 1785
    goto/16 :goto_0

    .line 1774
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1775
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_1

    .line 1789
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    move-result v4

    goto/16 :goto_0

    .line 1792
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->onThumbnailClicked(Landroid/view/View;)V

    move v4, v5

    .line 1793
    goto/16 :goto_0

    .line 1796
    :sswitch_4
    if-nez p1, :cond_6

    .line 1797
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 1798
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1799
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v6, "capture_times_shutter"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_5
    :goto_2
    move v4, v5

    .line 1815
    goto/16 :goto_0

    .line 1801
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_6
    if-ne p1, v5, :cond_7

    .line 1802
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    goto :goto_2

    .line 1803
    :cond_7
    if-ne p1, v8, :cond_8

    .line 1804
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, p3

    .line 1805
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 1806
    check-cast v0, Landroid/graphics/Point;

    .line 1807
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_2

    .line 1809
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_8
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    move-object v4, p3

    .line 1810
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4, v8}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 1811
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1812
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v6, "capture_times_shutter"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 1818
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_5
    new-instance v2, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V

    .line 1825
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1826
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 1827
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1828
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 1829
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    move v4, v5

    .line 1830
    goto/16 :goto_0

    .line 1834
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    move v4, v5

    .line 1835
    goto/16 :goto_0

    .line 1839
    :sswitch_7
    if-nez p1, :cond_9

    .line 1840
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->onReviewDoneClicked(Landroid/view/View;)V

    :goto_3
    move v4, v5

    .line 1844
    goto/16 :goto_0

    .line 1842
    :cond_9
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_3

    .line 1847
    :sswitch_8
    if-nez p1, :cond_b

    .line 1848
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v4, :cond_a

    move-object v1, p3

    .line 1849
    check-cast v1, Landroid/graphics/Point;

    .line 1850
    .local v1, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .end local v1    # "p":Landroid/graphics/Point;
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_a
    :goto_4
    move v4, v5

    .line 1855
    goto/16 :goto_0

    .line 1852
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_b
    if-ne p1, v5, :cond_a

    .line 1853
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/CameraModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1858
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_9
    const-string v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1859
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v6, "pref_camera_hdr_key"

    invoke-virtual {v4, v6}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    move v4, v5

    .line 1861
    goto/16 :goto_0

    .line 1864
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1865
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 1867
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    move v4, v5

    .line 1868
    goto/16 :goto_0

    .line 1872
    :sswitch_a
    const-string v6, "pref_camera_stereo_mode_key"

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1873
    const-string v6, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1874
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v7, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1877
    :cond_d
    const-string v6, "pref_camera_panoramamode_key"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "pref_camera_panoramamode_key"

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1879
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 1880
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 1881
    invoke-direct {p0, v8}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    :goto_5
    move v4, v5

    .line 1885
    goto/16 :goto_0

    .line 1883
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    goto :goto_5

    .line 1889
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_10

    .line 1891
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 1892
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1894
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1895
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1898
    :cond_11
    if-ne p1, v9, :cond_14

    .line 1899
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 1913
    :cond_12
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_13

    .line 1915
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1916
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 1919
    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    move v4, v5

    .line 1920
    goto/16 :goto_0

    .line 1909
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_14
    const/4 v4, 0x6

    if-ne p1, v4, :cond_12

    .line 1910
    invoke-direct {p0, p3}, Lcom/android/camera/module/CameraModule;->onModeSelected(Ljava/lang/Object;)V

    goto :goto_6

    .line 2022
    :sswitch_b
    if-ne p1, v9, :cond_15

    .line 2023
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_7
    move v4, v5

    .line 2027
    goto/16 :goto_0

    .line 2025
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onStereoModeChanged()V

    goto :goto_7

    .line 2037
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openSettingActivity()V

    move v4, v5

    .line 2038
    goto/16 :goto_0

    .line 2041
    :sswitch_d
    if-ne p1, v8, :cond_16

    .line 2042
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    :cond_16
    move v4, v5

    .line 2044
    goto/16 :goto_0

    .line 2047
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    move v4, v5

    .line 2048
    goto/16 :goto_0

    .line 2051
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2052
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 2053
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    move v4, v5

    .line 2054
    goto/16 :goto_0

    .line 1760
    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_0
        0x7f09000e -> :sswitch_3
        0x7f090012 -> :sswitch_4
        0x7f090015 -> :sswitch_5
        0x7f09001d -> :sswitch_f
        0x7f09001e -> :sswitch_2
        0x7f090023 -> :sswitch_7
        0x7f09005d -> :sswitch_1
        0x7f09005e -> :sswitch_9
        0x7f09005f -> :sswitch_6
        0x7f090070 -> :sswitch_b
        0x7f090078 -> :sswitch_8
        0x7f09007c -> :sswitch_d
        0x7f090082 -> :sswitch_a
        0x7f090084 -> :sswitch_c
        0x7f09008f -> :sswitch_e
    .end sparse-switch
.end method

.method protected handleMultiSnapDone()V
    .locals 3

    .prologue
    .line 2654
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2678
    :goto_0
    return-void

    .line 2657
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    .line 2658
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2659
    .local v0, "burstNum":I
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2677
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    goto :goto_0
.end method

.method protected initializeAfterCameraOpen()V
    .locals 2

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 688
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 689
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 690
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 691
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 692
    return-void
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 4605
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 4917
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method protected isDefaultManualExposure()Z
    .locals 2

    .prologue
    .line 4280
    const-string v0, "pref_qc_camera_iso_key"

    const v1, 0x7f0e00be

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0e0136

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4293
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDetectedHHT()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 4449
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4450
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6000(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6100(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6000(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-eq v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6100(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-ne v3, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 4455
    :cond_2
    return v0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontMirror()Z
    .locals 2

    .prologue
    .line 4415
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4421
    :goto_0
    return v1

    .line 4417
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 4418
    .local v0, "frontMirror":Ljava/lang/String;
    const v1, 0x7f0e0190

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4419
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    goto :goto_0

    .line 4421
    :cond_1
    const v1, 0x7f0e0191

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 4426
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 2

    .prologue
    .line 4256
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 4257
    .local v0, "focusMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "edof"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 4445
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

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

.method protected isSceneMotion()Z
    .locals 2

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6000(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 4221
    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1448
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return v2

    .line 1453
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1454
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e0120

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1459
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1460
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1461
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1466
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1467
    .local v1, "pictureFormat":I
    const/4 v0, 0x0

    .line 1468
    .local v0, "loc":Landroid/location/Location;
    const/16 v4, 0x100

    if-ne v4, v1, :cond_4

    .line 1469
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1471
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1472
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1473
    sget-boolean v4, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1474
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1476
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1477
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareMultiCapture()V

    .line 1482
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1483
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    .line 1485
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1487
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1488
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1493
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 1494
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1496
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v5, p0, v9}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v7, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1498
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v5, "burst_times"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    move v2, v3

    .line 1502
    goto/16 :goto_0

    .line 1490
    :cond_6
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1491
    iput-object v9, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    .prologue
    .line 2541
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 1

    .prologue
    .line 2537
    const/4 v0, 0x0

    return v0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 4941
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    .line 4942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4943
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2991
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 2992
    packed-switch p1, :pswitch_data_0

    .line 3009
    :goto_0
    return-void

    .line 2994
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2995
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 2996
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2997
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2998
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3001
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 3002
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->finish()V

    .line 3003
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3004
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2992
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3087
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 3088
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v3, :cond_0

    .line 3140
    :goto_0
    return v1

    .line 3092
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3094
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    move v1, v2

    .line 3095
    goto :goto_0

    .line 3098
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 3099
    goto :goto_0

    .line 3102
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 3103
    goto :goto_0

    .line 3106
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 3107
    goto :goto_0

    .line 3110
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3112
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v3, v4, :cond_6

    :cond_5
    move v1, v2

    .line 3114
    goto :goto_0

    .line 3117
    :cond_6
    const-string v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3118
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v2}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    move v1, v2

    .line 3119
    goto :goto_0

    .line 3123
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3124
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v0

    .line 3125
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3126
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 3128
    :cond_8
    if-eqz v0, :cond_9

    move v1, v2

    goto/16 :goto_0

    .line 3132
    .end local v0    # "result":Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3133
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    move v1, v2

    .line 3134
    goto/16 :goto_0

    .line 3137
    :cond_a
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    .line 3138
    goto/16 :goto_0

    .line 3140
    :cond_b
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 4646
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4650
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setData([B)V

    .line 4651
    :cond_0
    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 3858
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 3859
    :cond_0
    const/4 v0, 0x0

    .line 3877
    :goto_0
    return v0

    .line 3861
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to copy texture. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3866
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 3871
    :goto_1
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 3873
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3874
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 3875
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3876
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0

    .line 3868
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 3869
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method protected onCameraStartPreview()V
    .locals 0

    .prologue
    .line 4938
    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1546
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 1547
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1548
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 1549
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 1554
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1555
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changeConflictPreference()V

    .line 1556
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 1559
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 1561
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1564
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1566
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    .line 1567
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 1569
    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 1571
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 1572
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    .line 1573
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 1577
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V

    .line 1582
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1584
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1585
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setupCaptureParams()V

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    .line 1589
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeMutexMode()V

    .line 1591
    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    .line 1593
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1594
    return-void

    .line 1552
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetCameraSettingsIfNeed()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1567
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3671
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 3672
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->hideToast()V

    .line 3675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 3676
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 809
    :cond_2
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 812
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_3

    .line 814
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    goto :goto_0

    .line 817
    :cond_3
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    goto :goto_0
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 4273
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4274
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    .line 4276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3158
    sparse-switch p1, :sswitch_data_0

    .line 3186
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 3160
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3161
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 3166
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3167
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 3168
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3175
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3179
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3158
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3191
    packed-switch p1, :pswitch_data_0

    .line 3205
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 3194
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3198
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 3191
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2416
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2421
    :goto_0
    return-void

    .line 2417
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    .line 2418
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2419
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_long_press"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onNewIntent()V
    .locals 2

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1599
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changeConflictPreference()V

    .line 1600
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1601
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1602
    return-void
.end method

.method public onObjectStable()V
    .locals 3

    .prologue
    .line 4304
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4306
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 4307
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_capture_when_stable_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4308
    const-string v0, "Camera"

    const-string v1, "Object is Stable, call onShutterButtonClick to capture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 4310
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_t2t"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4313
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 2215
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    .line 2216
    const-string v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    .line 2219
    :cond_0
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2756
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 2757
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 2759
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2760
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 2761
    invoke-direct {p0, v5}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 2765
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_3

    .line 2766
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2767
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2769
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2770
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 2772
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 2775
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2776
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 2777
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 2778
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 2779
    invoke-direct {p0, v4}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 2780
    invoke-direct {p0, v4}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 2783
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->waitCameraStartUpThread()V

    .line 2787
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v2, :cond_4

    .line 2788
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2791
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2793
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2794
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 2799
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 2800
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2803
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2806
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v2, :cond_7

    .line 2807
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 2808
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    .line 2809
    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2812
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v2, :cond_8

    .line 2813
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2814
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 2817
    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_9

    .line 2818
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2822
    :cond_9
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2823
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2824
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2825
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2826
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2827
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2828
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2829
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2830
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2831
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2832
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2833
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2834
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2835
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2836
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2837
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2838
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2839
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2840
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2841
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2842
    iput v4, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 2843
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsRecreateCameraScreenNail:Z

    .line 2844
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2845
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 2846
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetScreenOn()V

    .line 2847
    invoke-direct {p0, v4, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2850
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 2851
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 2852
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 2853
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v2, :cond_b

    .line 2855
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v1

    .line 2856
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    .line 2857
    .local v0, "h":I
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 2858
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 2860
    :cond_a
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 2864
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_b
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v2, v6, :cond_c

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v2, :cond_c

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_c

    .line 2866
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    .line 2868
    :cond_c
    return-void

    .line 2796
    :cond_d
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 2797
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3984
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCamera()V

    .line 3985
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3986
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2703
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 2704
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2745
    :cond_0
    :goto_0
    return-void

    .line 2705
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2706
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 2707
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 2710
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    .line 2711
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 2713
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_7

    .line 2715
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2716
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 2718
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2719
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 2724
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 2726
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_6

    .line 2727
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 2732
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_8

    .line 2733
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2737
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 2739
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2740
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2741
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2742
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2743
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 2744
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    goto/16 :goto_0

    .line 2721
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    if-eqz v0, :cond_5

    .line 2722
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resumePreview()V

    goto :goto_1

    .line 2735
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    goto :goto_2
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 2698
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 2699
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2298
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 2299
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    .line 2301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2303
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 2309
    :goto_0
    return-void

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2307
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2314
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    .line 2315
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2200
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 2211
    :goto_0
    return-void

    .line 2202
    :cond_0
    const-string v0, "pref_delay_capture_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    goto :goto_0

    .line 2206
    :cond_1
    const-string v0, "pref_camera_focus_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2207
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 2209
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 3839
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3843
    :goto_0
    return-void

    .line 3840
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3841
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3842
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2480
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 2482
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2485
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2486
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2487
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2488
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 2489
    .local v0, "countDownTime":I
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 2490
    if-le v0, v5, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 2491
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 2530
    .end local v0    # "countDownTime":I
    :cond_1
    :goto_0
    return-void

    .line 2494
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2496
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2497
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2499
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2500
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2505
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2506
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2508
    :cond_4
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v5, :cond_5

    .line 2509
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 2513
    :cond_5
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v5, :cond_6

    .line 2514
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2516
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2517
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 2521
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    .line 2522
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2523
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 2524
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    .line 2525
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 2526
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2527
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 3
    .param p1, "pressed"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 2424
    if-nez p1, :cond_5

    .line 2425
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-eqz v0, :cond_1

    .line 2426
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2429
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2430
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2433
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->cancelMultiSnapPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2436
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    .line 2437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    goto :goto_0

    .line 2440
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-eqz v0, :cond_6

    .line 2441
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2442
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2443
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2445
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 2446
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    goto :goto_0

    .line 2451
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2452
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 2456
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2462
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2464
    :cond_7
    if-eqz p1, :cond_9

    .line 2465
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2466
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2468
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto/16 :goto_0

    .line 2470
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto/16 :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2545
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2585
    :cond_0
    :goto_0
    return v0

    .line 2546
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_2

    const-string v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-nez v2, :cond_2

    .line 2554
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2555
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2556
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0

    .line 2558
    :cond_2
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 2563
    goto :goto_0

    .line 2565
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2566
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 2567
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2568
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 2569
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2570
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2571
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2572
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    goto/16 :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3040
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 3045
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 3046
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 3047
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3048
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3057
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3060
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3063
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 3069
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3072
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_3

    .line 3073
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3075
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 3076
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showObjectTrackToastIfNeeded()V

    .line 3077
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 3080
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3081
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2277
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2278
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2279
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 2281
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2285
    :cond_1
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 4029
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4030
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2289
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2290
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 2293
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 4034
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 4035
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 4036
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3742
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3743
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3744
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3745
    const-string v1, "IsCaptureIntent"

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3746
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3748
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3749
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3751
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 3752
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 3754
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3755
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 3
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3210
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3211
    :cond_1
    if-nez p1, :cond_3

    .line 3212
    if-eqz p2, :cond_2

    .line 3213
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 3214
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 3215
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3216
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3219
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 3220
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    goto :goto_0

    .line 3223
    :cond_3
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    if-nez v0, :cond_0

    .line 3224
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    .line 3225
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 3226
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 2

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playCameraSound(I)V

    .line 1542
    :cond_1
    return-void
.end method

.method protected prepareCapture()V
    .locals 0

    .prologue
    .line 1523
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    .line 1507
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 14

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v4, 0x1f4

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4233
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4243
    :goto_0
    return v13

    .line 4236
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4237
    .local v0, "now":J
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v12, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->getLastActionTime()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSoundPlayTime()J

    move-result-wide v8

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v8, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .local v12, "ready":Z
    :goto_1
    move v13, v12

    .line 4243
    goto :goto_0

    .end local v12    # "ready":Z
    :cond_3
    move v12, v13

    .line 4237
    goto :goto_1
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 1753
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 0

    .prologue
    .line 1444
    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 1

    .prologue
    .line 2165
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    .line 2168
    :cond_0
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4078
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDelayedCaptureMessage(II)V
    .locals 3
    .param p1, "period"    # I
    .param p2, "times"    # I

    .prologue
    const/16 v2, 0x14

    .line 4226
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4227
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4228
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4230
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 4466
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4467
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1428
    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1430
    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 5

    .prologue
    .line 4921
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4922
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v0

    .line 4923
    .local v0, "beauty":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4924
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetStillBeautify ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4926
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "pref_skin_beautify_skin_color_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4928
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "pref_skin_beautify_slim_face_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4930
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "pref_skin_beautify_skin_smooth_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4932
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "pref_skin_beautify_enlarge_eye_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4936
    .end local v0    # "beauty":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3703
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 3704
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 3707
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 3708
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 3709
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 3712
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3713
    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 3718
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 3719
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 3722
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 3739
    :cond_0
    :goto_0
    return-void

    .line 3724
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3725
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3726
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 3727
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 3728
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 3729
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    .line 3730
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3731
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 3732
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    goto :goto_0

    .line 3734
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3735
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCameraState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1329
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 1330
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1333
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1337
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1340
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 3256
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 3257
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 3258
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 3259
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1531
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1532
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1534
    :cond_0
    return-void
.end method

.method protected setMetaCallback(Z)V
    .locals 2
    .param p1, "asdEnable"    # Z

    .prologue
    .line 4654
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eq v0, p1, :cond_0

    .line 4655
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 4656
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 4659
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_1

    .line 4660
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 4663
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # getter for: Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6000(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4665
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    # invokes: Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$6200(Lcom/android/camera/module/CameraModule$MetaDataManager;)V

    .line 4667
    :cond_2
    return-void

    .line 4655
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 4656
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setTimeWatermarkIfNeed()V
    .locals 3

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4471
    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4473
    :cond_0
    return-void
.end method

.method protected setupPreview()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    .line 931
    .local v0, "burstEnd":Z
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 946
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 948
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 950
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 951
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 960
    :goto_1
    return-void

    .line 937
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_3

    .line 938
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 940
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/camera/FocusManager;->resetAfterCapture(Z)V

    .line 941
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 942
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 943
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 940
    goto :goto_2

    .line 953
    :cond_6
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v1

    if-lez v1, :cond_7

    .line 954
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 956
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 957
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 772
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 779
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 780
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 782
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto :goto_0
.end method

.method public startObjectTracking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4329
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 4354
    :cond_0
    :goto_0
    return-void

    .line 4334
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4335
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 4336
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4337
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4338
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4341
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4342
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4344
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 4345
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 4348
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4350
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4351
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startObjectTracking rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method

.method protected startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3262
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v0, :cond_1

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3266
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3267
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 3270
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3274
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_4

    .line 3276
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3277
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 3281
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 3282
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3284
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_6

    .line 3287
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3288
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3290
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3293
    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFace:Z

    .line 3295
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3296
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3299
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3300
    const-string v0, "Camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 3302
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 3303
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3311
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_0

    .line 3312
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public stopFaceDetection(Z)V
    .locals 3
    .param p1, "clearFaces"    # Z

    .prologue
    const/4 v2, 0x0

    .line 788
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 793
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 797
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 798
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 799
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto :goto_0
.end method

.method public stopObjectTracking(Z)V
    .locals 4
    .param p1, "restartFD"    # Z

    .prologue
    const/16 v3, 0x8

    .line 4357
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restartFD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    .line 4359
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 4360
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4361
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4387
    :cond_0
    :goto_0
    return-void

    .line 4365
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 4366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4367
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4368
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 4369
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 4372
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 4374
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4377
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4378
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4381
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4382
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4384
    :cond_3
    if-eqz p1, :cond_0

    .line 4385
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_0
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 5
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 4568
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4569
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_normal_hdr"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4598
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    .line 4599
    add-int/lit8 p1, p1, -0x1

    .line 4601
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZIIZ)V

    .line 4602
    return-void

    .line 4570
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4571
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_live_hdr"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4572
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4573
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_hht"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4574
    :cond_5
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4575
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_ubfocus"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4577
    :cond_6
    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 4578
    .local v2, "fb":Ljava/lang/String;
    const v3, 0x7f0e0168

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4579
    .local v0, "closeFB":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4580
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_beauty"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4581
    :cond_7
    const-string v3, "pref_camera_manual_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4582
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_manual"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4583
    :cond_8
    const-string v3, "pref_camera_gradienter_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4584
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_gradienter"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4585
    :cond_9
    const-string v3, "pref_camera_tilt_shift_mode"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4586
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v1

    .line 4587
    .local v1, "effect":I
    sget v3, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne v1, v3, :cond_a

    .line 4588
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_tilt_shift_circle"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4589
    :cond_a
    sget v3, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-ne v1, v3, :cond_1

    .line 4590
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_tilt_shift_parallel"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4592
    .end local v1    # "effect":I
    :cond_b
    const-string v3, "pref_camera_fisheye_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4593
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "capture_nums_fisheye"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4594
    :cond_c
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isEffectPageSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4595
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4248
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 4249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 4250
    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2171
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 2174
    :cond_0
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 3341
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 3342
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 3343
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3344
    .local v1, "max":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3347
    .end local v1    # "max":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 3351
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3352
    .local v2, "vstabSupported":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3353
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 30

    .prologue
    .line 3358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3362
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3366
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v18

    .line 3368
    .local v18, "pictureSize":Lcom/android/camera/PictureSize;
    if-eqz v18, :cond_20

    .line 3369
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pictureSize = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 3371
    .local v15, "oldPictureSize":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 3372
    :cond_2
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3374
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3381
    .end local v15    # "oldPictureSize":Landroid/hardware/Camera$Size;
    :goto_0
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    .line 3382
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3384
    .local v16, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3385
    .local v17, "original":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v20

    .line 3386
    .local v20, "style":I
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3393
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 3394
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 3395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v25

    if-nez v25, :cond_21

    .line 3396
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 3402
    :cond_5
    :goto_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    .line 3403
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    .line 3405
    const/16 v25, 0x15

    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_7

    .line 3409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v21

    .line 3410
    .local v21, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3413
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 3417
    :cond_6
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Thumbnail size is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    .end local v21    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 3423
    const-string v25, "hdr"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3424
    const-string v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 3426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string v26, "auto"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3436
    :cond_8
    :goto_2
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " getMutexMode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 3438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 3439
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pas="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3456
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;

    move-result-object v12

    .line 3457
    .local v12, "jpegQuality":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "jpegQuality : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-static {v12}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v23

    .line 3466
    .local v23, "value":I
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EV : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v13

    .line 3468
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v14

    .line 3469
    .local v14, "min":I
    move/from16 v0, v23

    if-lt v0, v14, :cond_25

    move/from16 v0, v23

    if-gt v0, v13, :cond_25

    .line 3470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3476
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v25

    if-eqz v25, :cond_26

    .line 3477
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 3478
    .local v7, "effect":I
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Shader color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 3481
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    .line 3482
    new-instance v25, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 3486
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 3487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    .line 3488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    .line 3501
    .end local v7    # "effect":I
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_autoexposure_key"

    const v27, 0x7f0e00fe

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3504
    .local v5, "autoExposure":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "autoExposure value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_antibanding_key"

    const v27, 0x7f0e00cf

    invoke-static/range {v27 .. v27}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3512
    .local v4, "antiBanding":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "antiBanding value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 3514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 3517
    :cond_c
    const-string v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    const-string v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 3520
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 3523
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v10

    .line 3526
    .local v10, "flashModeOld":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3527
    .local v9, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3528
    .local v22, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3532
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v25

    if-eqz v25, :cond_10

    const-string v25, "off"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    const-string v25, "torch"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 3534
    const-string v25, "off"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string v26, "off"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3544
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v10    # "flashModeOld":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3545
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_11

    .line 3550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3553
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_27

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_27

    const-string v11, "auto"

    .line 3556
    .local v11, "focusMode":Ljava/lang/String;
    :goto_6
    if-eqz v11, :cond_14

    .line 3557
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3558
    const-string v25, "macro"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    const-string v25, "manual"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 3560
    :cond_13
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3563
    :cond_14
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Focus mode value = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    const-string v25, "pref_camera_whitebalance_key"

    const v26, 0x7f0e0074

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3569
    .local v24, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 3571
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3601
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 3602
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3605
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 3607
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3610
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    const-string v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3619
    :cond_18
    :goto_8
    const/4 v8, 0x1

    .line 3620
    .local v8, "faceDetection":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v25

    if-nez v25, :cond_19

    const-string v25, "pref_camera_gradienter_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_19

    const-string v25, "pref_camera_tilt_shift_mode"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 3623
    :cond_19
    const/4 v8, 0x0

    .line 3631
    :cond_1a
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v26

    if-nez v8, :cond_2e

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    .line 3632
    if-eqz v8, :cond_2f

    .line 3633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_1b

    .line 3634
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 3635
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3644
    :cond_1b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getZoomValue()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3648
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_30

    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 3652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/camera/CameraSettings;->isScanQRCode(Landroid/content/SharedPreferences;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    .line 3653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 3654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3659
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    sget-boolean v25, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v25, :cond_1e

    .line 3660
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 3664
    :cond_1e
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 3665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3667
    :cond_1f
    return-void

    .line 3378
    .end local v4    # "antiBanding":Ljava/lang/String;
    .end local v5    # "autoExposure":Ljava/lang/String;
    .end local v8    # "faceDetection":Z
    .end local v12    # "jpegQuality":Ljava/lang/String;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v16    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v17    # "original":Landroid/hardware/Camera$Size;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v20    # "style":I
    .end local v23    # "value":I
    :cond_20
    const-string v25, "Camera"

    const-string v26, "get null pictureSize"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v18

    goto/16 :goto_0

    .line 3398
    .restart local v16    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v17    # "original":Landroid/hardware/Camera$Size;
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v20    # "style":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x12

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3430
    :cond_22
    const-string v25, "pref_camera_scenemode_setting_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_23

    .line 3431
    const-string v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3433
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_scenemode_key"

    const v27, 0x7f0e00ae

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3449
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_9

    .line 3451
    const-string v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 3472
    .restart local v12    # "jpegQuality":Ljava/lang/String;
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    .restart local v23    # "value":I
    :cond_25
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "invalid exposure range: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3491
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_coloreffect_key"

    const v27, 0x7f0e0084

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3494
    .local v6, "colorEffect":Ljava/lang/String;
    const-string v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 3496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3553
    .end local v6    # "colorEffect":Ljava/lang/String;
    .restart local v4    # "antiBanding":Ljava/lang/String;
    .restart local v5    # "autoExposure":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 3573
    .restart local v11    # "focusMode":Ljava/lang/String;
    .restart local v24    # "whiteBalance":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v24

    .line 3574
    if-nez v24, :cond_15

    .line 3575
    const-string v25, "auto"

    goto/16 :goto_7

    .line 3579
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3580
    .restart local v9    # "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3581
    .restart local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3585
    :cond_2a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 3586
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_2b

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3594
    :cond_2b
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const-string v27, "continuous-picture"

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const-string v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3614
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_8

    .line 3624
    .restart local v8    # "faceDetection":Z
    :cond_2d
    const-string v25, "pref_camera_magic_mirror_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1a

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_facedetection_key"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0007

    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    goto/16 :goto_9

    .line 3631
    :cond_2e
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 3638
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    .line 3639
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3640
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_b

    .line 3648
    :cond_30
    const/16 v25, 0x0

    goto/16 :goto_c
.end method

.method protected updateExitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1629
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 1631
    :cond_1
    return-void
.end method

.method protected updateFaceView(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x23

    .line 764
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 768
    return-void

    :cond_1
    move v2, v1

    .line 767
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

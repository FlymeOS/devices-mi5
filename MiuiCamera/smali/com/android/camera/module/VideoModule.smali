.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$StereoSwitchThread;,
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$LoadThumbnailTask;,
        Lcom/android/camera/module/VideoModule$SavingTask;,
        Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/VideoModule$MainHandler;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field protected static final VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mCaptureTimeLapse:Z

.field private mContinuousFocusSupported:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentShowIndicator:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field protected mHfr:Ljava/lang/String;

.field private mInStartingFocusRecording:Z

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field protected mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxVideoDurationInMs:I

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private volatile mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mPauseClickTime:J

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecordingStartTime:J

.field private mRecordingTime:Ljava/lang/String;

.field private mRecordingTimeCountsDown:Z

.field protected mRestartPreview:Z

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSavingResult:Z

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSnapshotInProgress:Z

.field private mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

.field private mSwitchingCamera:Z

.field private final mTaskLock:Ljava/lang/Object;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTouchFocusStartingTime:J

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoRecordedDuration:J

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 146
    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 165
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    .line 179
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 187
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 190
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 216
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 223
    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    .line 228
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 230
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 241
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 243
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 245
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 246
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 418
    new-instance v0, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 434
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 2221
    new-instance v0, Lcom/android/camera/module/VideoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$9;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    .line 3400
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/module/VideoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$StereoSwitchThread;)Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/VideoModule;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2304(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/module/VideoModule$SavingTask;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showAlert()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/module/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    return-void
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1692
    const/4 v1, 0x0

    .line 1693
    .local v1, "fail":Z
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_1

    .line 1694
    const-string v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1697
    const-string v4, "duration"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1699
    :try_start_0
    const-string v4, "_data"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1700
    .local v2, "finalName":Ljava/lang/String;
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v4, :cond_0

    .line 1701
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, "postfix":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1703
    const-string v4, "_data"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v4, "_display_name"

    const-string v5, "_display_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    .end local v3    # "postfix":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1710
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1714
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1715
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1716
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1718
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    .end local v2    # "finalName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 1712
    .restart local v2    # "finalName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1719
    .end local v2    # "finalName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "videocamera"

    const-string v5, "failed to add video to media store"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1724
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1725
    const/4 v1, 0x1

    .line 1727
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 2247
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 2250
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 2253
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 2256
    :cond_0
    return-void
.end method

.method private autoFocus(IIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focusWidth"    # I
    .param p4, "focusHeight"    # I
    .param p5, "focusType"    # I

    .prologue
    .line 2961
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus mVideoFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_7

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_7

    .line 2964
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    .line 2965
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2966
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 2968
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2969
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2972
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    .line 2973
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2975
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    .line 2977
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_5

    .line 2978
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 2980
    :cond_5
    const/4 v0, 0x3

    if-ne p5, v0, :cond_6

    .line 2981
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 2982
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2984
    :cond_7
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2938
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2939
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 2940
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2942
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 2943
    .local v1, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "auto"

    .line 2945
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2946
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2947
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2950
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v2, :cond_1

    .line 2951
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2953
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_2

    .line 2954
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2956
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2958
    return-void

    .line 2943
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_3
    const-string v0, "macro"

    goto :goto_0
.end method

.method private capture()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2683
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v3, :cond_1

    .line 2705
    :cond_0
    :goto_0
    return v1

    .line 2687
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2688
    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 2692
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2693
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2694
    .local v0, "loc":Landroid/location/Location;
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2695
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2696
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2697
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPanel;->onCapture()V

    .line 2701
    :goto_1
    const-string v3, "videocamera"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v4, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2703
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2704
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    move v1, v2

    .line 2705
    goto :goto_0

    .line 2699
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method private checkCallingState()Z
    .locals 3

    .prologue
    .line 3295
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3296
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v1, 0x7f0e01c3

    const v2, 0x7f0e01c4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 3298
    const/4 v0, 0x0

    .line 3300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1474
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1475
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1481
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3080
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3082
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3086
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3088
    :cond_0
    return-void

    .line 3083
    :catch_0
    move-exception v0

    .line 3084
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private computePopupTransY()I
    .locals 4

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v1

    .line 1939
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1940
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1942
    .local v0, "bottomMargin":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1944
    .end local v0    # "bottomMargin":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 3058
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3059
    const-string v0, ".mp4"

    .line 3061
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 3051
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3052
    const-string v0, "video/mp4"

    .line 3054
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 461
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    .line 462
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 463
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e00d9

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 467
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 469
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteCurrentVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1735
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1737
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1738
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1740
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1744
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1747
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1750
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1460
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1462
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1463
    const/4 v0, -0x1

    .line 1464
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1465
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1469
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1470
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1471
    return-void

    .line 1467
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 14
    .param p1, "outputFileFormat"    # I

    .prologue
    const-wide/16 v12, 0x0

    .line 1644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1645
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1647
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1648
    .local v2, "filename":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1649
    .local v4, "mime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1650
    .local v5, "path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1651
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1652
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1655
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1661
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    .line 1662
    :cond_0
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1663
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1665
    :cond_1
    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1666
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 12

    .prologue
    .line 859
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 860
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "slow"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 861
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 862
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    .line 895
    :goto_0
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 863
    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 864
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 865
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 866
    :cond_1
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 869
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 870
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 873
    :cond_3
    sget-object v6, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    .line 874
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 875
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 876
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 878
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 879
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 880
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 881
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 888
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v6, :cond_6

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    :goto_2
    invoke-static {v8, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 892
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 893
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 888
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v6

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v9

    div-double/2addr v6, v10

    goto :goto_2
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1670
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1672
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1673
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1680
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1682
    :goto_0
    return-wide v2

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "videocamera"

    const-string v3, "IllegalArgumentException when getDuration()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1682
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1677
    :catch_1
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "videocamera"

    const-string v3, "RuntimeException when getDuration()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1680
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method private getHFRQuality(II)I
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 836
    sget-object v1, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 837
    .local v0, "hfrQuality":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->isProfileExist(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 842
    .end local p2    # "quality":I
    :goto_0
    return p2

    .line 840
    .restart local p2    # "quality":I
    :cond_0
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find hfrquality in VIDEO_QUALITY_TO_HIGHSPEED, quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hfrQuality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 7
    .param p1, "deltaMs"    # J
    .param p3, "timeBetweenFrameMs"    # D

    .prologue
    .line 2356
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 2360
    :goto_0
    return-wide v2

    .line 2359
    :cond_0
    long-to-double v2, p1

    div-double v0, v2, p3

    .line 2360
    .local v0, "numberOfFrames":D
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2152
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2153
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2155
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 2156
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2157
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2158
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2159
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2160
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2161
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->setEnabled(Z)V

    .line 2162
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2163
    return-void
.end method

.method private initializeCapabilities()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2655
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    sget-object v3, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    .line 2658
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    .line 2659
    const-string v0, "continuous-video"

    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    .line 2661
    return-void

    :cond_0
    move v0, v2

    .line 2655
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2658
    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    .line 2641
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    .line 2642
    .local v1, "orientation":I
    new-instance v4, Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v6

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2647
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2648
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2649
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2650
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2651
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2652
    return-void

    .line 2642
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 0

    .prologue
    .line 2670
    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3188
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 3189
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 3190
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3191
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 3192
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3193
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method private initializeRecorder()V
    .locals 24

    .prologue
    .line 1485
    const-string v18, "videocamera"

    const-string v19, "initializeRecorder"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1489
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1490
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1492
    .local v12, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 1494
    const-wide/16 v14, 0x0

    .line 1495
    .local v14, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1496
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    if-eqz v12, :cond_2

    .line 1497
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 1498
    .local v17, "saveUri":Landroid/net/Uri;
    if-eqz v17, :cond_1

    .line 1500
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1502
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :cond_1
    :goto_1
    const-string v18, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1510
    .end local v17    # "saveUri":Landroid/net/Uri;
    :cond_2
    new-instance v18, Landroid/media/MediaRecorder;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1516
    const-string v18, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1522
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 1525
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->setProfileToRecorder()V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1529
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_audio_focus_key"

    const v20, 0x7f0e019b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1538
    .local v4, "audioFocus":Ljava/lang/String;
    :goto_3
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set AudioParam camcorder_mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "camcorder_mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1542
    .end local v4    # "audioFocus":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v13

    .line 1543
    .local v13, "quality":I
    sget-boolean v18, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v18, :cond_4

    const-string v18, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const v19, 0x3d0900

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1547
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const-wide v20, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1551
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->configMediaRecorder(Landroid/media/MediaRecorder;)V

    .line 1553
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 1554
    .local v9, "loc":Landroid/location/Location;
    if-eqz v9, :cond_6

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1562
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1570
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v18

    const-wide/32 v20, 0x3200000

    sub-long v10, v18, v20

    .line 1571
    .local v10, "maxFileSize":J
    const-wide v18, 0xdac00000L

    cmp-long v18, v18, v10

    if-gez v18, :cond_7

    .line 1572
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "need reduce , now maxFileSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const-wide v10, 0xdac00000L

    .line 1575
    :cond_7
    sget-wide v18, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v18, v10, v18

    if-gez v18, :cond_8

    .line 1576
    sget-wide v10, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 1578
    :cond_8
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_9

    cmp-long v18, v14, v10

    if-gez v18, :cond_9

    .line 1579
    move-wide v10, v14

    .line 1582
    :cond_9
    :try_start_1
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "maxFileSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1591
    :goto_5
    const-string v18, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    .line 1602
    :goto_6
    const/16 v16, 0x0

    .line 1603
    .local v16, "rotation":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v19, v0

    aget-object v7, v18, v19

    .line 1604
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1605
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1606
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    .line 1613
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1617
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1503
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v9    # "loc":Landroid/location/Location;
    .end local v10    # "maxFileSize":J
    .end local v13    # "quality":I
    .end local v16    # "rotation":I
    .restart local v17    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1505
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string v18, "videocamera"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1519
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v17    # "saveUri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_2

    .line 1536
    :cond_b
    const v18, 0x7f0e01a1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "audioFocus":Ljava/lang/String;
    goto/16 :goto_3

    .line 1565
    .end local v4    # "audioFocus":Ljava/lang/String;
    .restart local v9    # "loc":Landroid/location/Location;
    .restart local v13    # "quality":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1594
    .restart local v10    # "maxFileSize":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    goto/16 :goto_6

    .line 1608
    .restart local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v16    # "rotation":I
    :cond_e
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    goto/16 :goto_7

    .line 1611
    :cond_f
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v16, v0

    goto/16 :goto_7

    .line 1618
    :catch_1
    move-exception v5

    .line 1619
    .local v5, "e":Ljava/io/IOException;
    const-string v18, "videocamera"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "prepare failed for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1620
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1621
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1584
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v16    # "rotation":I
    :catch_2
    move-exception v18

    goto/16 :goto_5
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 1686
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1688
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAudioFocusPopupVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "popup"    # Landroid/view/View;

    .prologue
    .line 1930
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1931
    check-cast p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    .end local p1    # "popup":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, "popupKey":Ljava/lang/String;
    const-string v1, "pref_audio_focus_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1934
    .end local v0    # "popupKey":Ljava/lang/String;
    :goto_0
    return v1

    .restart local p1    # "popup":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSelectingCapturedVideo()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoProcessing()Z
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2306
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2307
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2308
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2302
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2311
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2312
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2313
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2314
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2315
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2317
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2320
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2321
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2322
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2324
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2326
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2330
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2331
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2333
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2334
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2337
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2338
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2340
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2343
    if-eqz p2, :cond_5

    .line 2344
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2345
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2346
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2347
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2349
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2352
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 3066
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3068
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 3071
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 3074
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3075
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

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

    .line 3077
    :cond_1
    return-void
.end method

.method private onPreviewStart()V
    .locals 4

    .prologue
    const/16 v1, 0xe

    .line 1385
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 1387
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 1389
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 1390
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 1391
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1396
    :cond_0
    return-void
.end method

.method private onRestartVideoRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1848
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    .line 1849
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1850
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1851
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 1853
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1228
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 1229
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1231
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restorePreferences()V

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1234
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStereoModeChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3363
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 3364
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 3365
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3368
    :cond_0
    new-instance v0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    .line 3369
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->start()V

    .line 3370
    return-void
.end method

.method private onStopVideoRecording(Z)V
    .locals 0
    .param p1, "sync"    # Z

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 3259
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3261
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v1, :cond_0

    .line 3263
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3267
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 3269
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3270
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 3271
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 3273
    :cond_0
    return-void

    .line 3264
    :catch_0
    move-exception v0

    .line 3265
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "videocamera"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 5

    .prologue
    .line 900
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 913
    :goto_0
    return-void

    .line 904
    :cond_0
    const/4 v0, 0x1

    .line 905
    .local v0, "uiStyle":I
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v0, v1, :cond_1

    .line 906
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 907
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 908
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changePreviewSurfaceSize()V

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e019b

    .line 1629
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1631
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    .line 1632
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1633
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1634
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1636
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1640
    :cond_1
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1641
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 3305
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3306
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 3307
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 3308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 3309
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2296
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2297
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2298
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 916
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v1, v2, v3

    .line 917
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 920
    .local v0, "degrees":I
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 928
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2713
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 2714
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 2715
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2716
    return-void
.end method

.method private setProfileToRecorder()V
    .locals 3

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3380
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3381
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3382
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3383
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3387
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ltz v0, :cond_0

    .line 3388
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3389
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3390
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3391
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3393
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 2124
    const/4 v0, 0x0

    .line 2125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 2126
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2132
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2135
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v5

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v0, v4, v1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2137
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2138
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2140
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2142
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 2143
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 2144
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2145
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2146
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2147
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2148
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2149
    return-void

    .line 2128
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2129
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 2135
    goto/16 :goto_1
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2834
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_touch_toast_shown_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2837
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2839
    :cond_1
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 14
    .param p1, "recording"    # Z

    .prologue
    const/16 v13, 0x8

    const/16 v12, 0x64

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 1948
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v2

    .line 1949
    .local v2, "popup":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->isAudioFocusPopupVisible(Landroid/view/View;)Z

    move-result v0

    .line 1950
    .local v0, "isAudioFocusPopupShown":Z
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v1

    .line 1951
    .local v1, "isFullScreen":Z
    if-eqz p1, :cond_7

    .line 1952
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v7

    const v8, 0x7f02012e

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 1953
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1954
    if-eqz v0, :cond_4

    .line 1955
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewPage;->showPopupWithoutExitView()V

    .line 1956
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1957
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1958
    .local v3, "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1959
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->computePopupTransY()I

    move-result v5

    .line 1960
    .local v5, "transY":I
    int-to-float v7, v5

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1962
    .end local v5    # "transY":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1963
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .end local v2    # "popup":Landroid/view/View;
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/GridSettingTextPopup;->shrink(I)V

    .line 1973
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 1974
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 1975
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 1976
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 1978
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    move v4, v6

    .line 1980
    .local v4, "statusBarVisible":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 1981
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$5;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/V6SettingsStatusBar;->animateOut(Ljava/lang/Runnable;)V

    .line 1988
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {v8, p0, v4}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    invoke-virtual {v7, v8, v12, v6}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2003
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_6

    .line 2004
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v7

    invoke-virtual {v7, v9, v12, v6}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2062
    .end local v4    # "statusBarVisible":Z
    :goto_1
    return-void

    .line 1966
    .restart local v2    # "popup":Landroid/view/View;
    :cond_4
    const-string v7, "pref_camera_stereo_mode_key"

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1967
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 1968
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewPage;->showPopupWithoutExitView()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/StereoButton;->getPopup()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1971
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    goto/16 :goto_0

    .line 2006
    .end local v2    # "popup":Landroid/view/View;
    .restart local v4    # "statusBarVisible":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v7

    invoke-virtual {v7, v9, v12, v6}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    goto :goto_1

    .line 2009
    .end local v4    # "statusBarVisible":Z
    .restart local v2    # "popup":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v7

    const v8, 0x7f02012d

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 2010
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 2011
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 2013
    if-eqz v0, :cond_9

    .line 2014
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2015
    .restart local v3    # "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 2016
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2018
    :cond_8
    if-eqz v1, :cond_9

    .line 2019
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .end local v2    # "popup":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/camera/ui/GridSettingTextPopup;->restoreFromShrink()V

    .line 2022
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_9
    if-nez v0, :cond_a

    const-string v7, "pref_camera_stereo_mode_key"

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2024
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 2027
    :cond_b
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v7, :cond_c

    .line 2028
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2029
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2030
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2032
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$7;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$7;-><init>(Lcom/android/camera/module/VideoModule;)V

    const/16 v9, 0x96

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2044
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$8;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$8;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v7, v8, v12, v6}, Lcom/android/camera/ui/V6PauseRecordingButton;->animateOut(Ljava/lang/Runnable;IZ)V

    goto/16 :goto_1
.end method

.method private showStoppingUI()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 432
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 576
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1890
    const-string v0, "videocamera"

    const-string v3, "startVideoRecording"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1892
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    .line 1894
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v6, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1898
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->prepareRecording()V

    .line 1899
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1900
    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1901
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1927
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1892
    goto :goto_0

    .line 1904
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1911
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1912
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1913
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 1914
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 1915
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 1917
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 1918
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 1919
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 1920
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 1921
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1922
    const-string v0, "videocamera"

    const-string v1, "listen call state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 1925
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOn()V

    .line 1926
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackRecordingInfo()V

    goto :goto_1
.end method

.method private stopVideoOnPause()V
    .locals 4

    .prologue
    .line 2275
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause() mMediaRecorderRecording =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const/4 v0, 0x0

    .line 2277
    .local v0, "videoSaving":Z
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 2278
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 2279
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    .line 2284
    :goto_0
    if-eqz v0, :cond_1

    .line 2285
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    .line 2290
    :goto_1
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoSavingTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    return-void

    .line 2282
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 2288
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method private stopVideoRecordingAsync()V
    .locals 3

    .prologue
    .line 2259
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 2268
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateHold()V

    .line 2261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2262
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 2263
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 2266
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2267
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3032
    .local v18, "dateTaken":J
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 3033
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3035
    .local v17, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v17

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 3047
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/VideoModule;->trackPictureTaken(IZIIZ)V

    .line 3048
    return-void

    .line 3047
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2777
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2823
    :goto_0
    return-void

    .line 2778
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2779
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2781
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 2782
    const-string v1, "videocamera"

    const-string v2, "Start to switch camera."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 2784
    iput v4, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2785
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2786
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 2787
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2788
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2789
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 2790
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2791
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 2792
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2793
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 2794
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 2795
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 2797
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2801
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2802
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto :goto_0

    .line 2806
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 2807
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 2808
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 2809
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2810
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2811
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 2812
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 2815
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 2816
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 2817
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2818
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 2819
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 2822
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2798
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2666
    :goto_0
    return v0

    .line 2665
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 2666
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private trackRecordingInfo()V
    .locals 2

    .prologue
    .line 3318
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_recorded_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3319
    const-string v0, "fast"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3320
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_fast_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3326
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 3327
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_720_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3335
    :goto_1
    const-string v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3336
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_torch_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3338
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3339
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_front_camera_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3342
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    .line 3343
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3345
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_with_location_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3350
    :cond_4
    :goto_2
    return-void

    .line 3321
    :cond_5
    const-string v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3322
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_slow_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3323
    :cond_6
    const-string v0, "pref_video_hdr_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_hdr_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3328
    :cond_7
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 3329
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_480_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 3330
    :cond_8
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 3331
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_1080_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3333
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_quality_4k_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3346
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3347
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_without_location_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2

    .prologue
    .line 3091
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3093
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3095
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateMotionFocusManager()V
    .locals 3

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 2628
    return-void
.end method

.method private updateMutexModePreference()V
    .locals 3

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "hdr":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2828
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 2830
    :cond_0
    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "videocamera"

    const-string v1, "set video stabilization to false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 705
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 24

    .prologue
    .line 2365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2445
    :goto_0
    return-void

    .line 2368
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2369
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v20, v0

    sub-long v8, v12, v20

    .line 2370
    .local v8, "delta":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2371
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 2376
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    const v20, 0xea60

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v8, v20

    if-ltz v17, :cond_7

    const/4 v6, 0x1

    .line 2379
    .local v6, "countdownRemainingTime":Z
    :goto_1
    move-wide v10, v8

    .line 2380
    .local v10, "deltaAdjusted":J
    if-eqz v6, :cond_2

    .line 2381
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x3e7

    add-long v10, v20, v22

    .line 2385
    :cond_2
    const-wide/16 v14, 0x3e8

    .line 2386
    .local v14, "targetNextUpdateDelay":J
    const-string v17, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2387
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2416
    .local v16, "text":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 2417
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 2419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_4

    .line 2422
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2425
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 2426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 2427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 2428
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2439
    :cond_5
    :goto_3
    const-wide/16 v4, 0x1f4

    .line 2440
    .local v4, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2441
    rem-long v20, v8, v14

    sub-long v4, v14, v20

    .line 2443
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2376
    .end local v4    # "actualNextUpdateDelay":J
    .end local v6    # "countdownRemainingTime":Z
    .end local v10    # "deltaAdjusted":J
    .end local v14    # "targetNextUpdateDelay":J
    .end local v16    # "text":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2389
    .restart local v6    # "countdownRemainingTime":Z
    .restart local v10    # "deltaAdjusted":J
    .restart local v14    # "targetNextUpdateDelay":J
    :cond_8
    const-wide/16 v18, 0x0

    .line 2390
    .local v18, "timeBetweenFrameMs":D
    const-string v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2392
    move-wide/from16 v0, v18

    double-to-long v14, v0

    .line 2404
    :cond_9
    :goto_4
    const-wide/16 v20, 0x0

    cmpl-double v17, v18, v20

    if-eqz v17, :cond_b

    .line 2405
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v20

    const-string v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-wide/from16 v0, v20

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2408
    .restart local v16    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2409
    move-wide/from16 v0, v18

    double-to-long v14, v0

    goto/16 :goto_2

    .line 2393
    .end local v16    # "text":Ljava/lang/String;
    :cond_a
    const-string v17, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isShowHFRDuration()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2395
    sget-object v17, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    .line 2396
    .local v7, "hfr":Ljava/lang/String;
    if-eqz v7, :cond_9

    const-string v17, "off"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2397
    const-wide v20, 0x408f400000000000L    # 1000.0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    div-double v18, v20, v22

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    div-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v14, v0

    goto/16 :goto_4

    .line 2412
    .end local v7    # "hfr":Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 2430
    .end local v18    # "timeBetweenFrameMs":D
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 2434
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    goto/16 :goto_3
.end method

.method private updateSettingPage()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2747
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    .line 2748
    .local v0, "quality":I
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v0, v1, :cond_1

    if-ge v0, v2, :cond_0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-lt v1, v2, :cond_1

    .line 2751
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    .line 2753
    :cond_1
    return-void
.end method

.method private updateStereoSettings(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 3443
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    if-eqz p1, :cond_1

    .line 3445
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_video_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3451
    :cond_0
    :goto_0
    return-void

    .line 3448
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private waitStereoSwitchThread()V
    .locals 1

    .prologue
    .line 3432
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v0, :cond_0

    .line 3433
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->cancel()V

    .line 3434
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->join()V

    .line 3435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3440
    :cond_0
    :goto_0
    return-void

    .line 3437
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .prologue
    .line 2851
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2852
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2860
    :goto_0
    return-void

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2856
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2857
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 2858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1161
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1164
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :goto_0
    return-void

    .line 1168
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1170
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1171
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1172
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1173
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1174
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3315
    return-void
.end method

.method protected enterMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2895
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2896
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2898
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2903
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2904
    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2908
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2909
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2910
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 832
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 2

    .prologue
    .line 847
    const-string v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 851
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
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
    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    const-string v1, "pref_video_speed_fast_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    const-string v1, "pref_video_speed_slow_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    const-string v1, "pref_audio_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_1
    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1240
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1381
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 1243
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 1381
    goto :goto_0

    .line 1245
    :sswitch_0
    const-string v5, "pref_camera_stereo_mode_key"

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1246
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1252
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1253
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto :goto_0

    .line 1255
    :cond_3
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1259
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 1263
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->onCameraPickerClicked(I)Z

    move-result v4

    goto :goto_0

    .line 1266
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1270
    :sswitch_3
    if-nez p1, :cond_5

    .line 1271
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1272
    :cond_5
    if-ne p1, v4, :cond_6

    .line 1273
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClick()Z

    goto :goto_0

    .line 1274
    :cond_6
    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 1275
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p3

    .line 1276
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 1277
    check-cast v0, Landroid/graphics/Point;

    .line 1278
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto/16 :goto_0

    .line 1280
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_7
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 1281
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 1286
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_4
    new-instance v2, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;Ljava/lang/Object;)V

    .line 1293
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 1294
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToCamera(Ljava/lang/Runnable;)V

    .line 1297
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto/16 :goto_0

    .line 1301
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_5
    if-nez p1, :cond_8

    .line 1302
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewDoneClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1304
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1309
    :sswitch_6
    if-nez p1, :cond_9

    .line 1310
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v5, :cond_0

    move-object v1, p3

    .line 1311
    check-cast v1, Landroid/graphics/Point;

    .line 1312
    .local v1, "p":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    goto/16 :goto_0

    .line 1314
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_9
    if-ne p1, v4, :cond_0

    .line 1315
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/VideoModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1320
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPlayVideoActivity()V

    goto/16 :goto_0

    .line 1324
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    goto/16 :goto_0

    .line 1328
    :sswitch_9
    const-string v5, "pref_camera_stereo_mode_key"

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1329
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    goto/16 :goto_0

    .line 1333
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1335
    if-ne p1, v8, :cond_c

    .line 1336
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 1346
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    goto/16 :goto_0

    .line 1337
    :cond_c
    const/4 v5, 0x6

    if-ne p1, v5, :cond_b

    .line 1338
    const-string v5, "pref_video_speed_fast_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "pref_video_speed_slow_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1340
    :cond_d
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    .line 1341
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 1342
    :cond_e
    const-string v5, "pref_video_hdr_key"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1343
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    goto :goto_1

    .line 1349
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 1352
    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->capture()Z

    .line 1353
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v5

    const-string v6, "capture_nums_video_capture"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1356
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_0

    .line 1359
    :sswitch_d
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-nez v5, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 1361
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    goto/16 :goto_0

    .line 1366
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->useProperView()V

    goto/16 :goto_0

    .line 1369
    :sswitch_f
    if-ne p1, v8, :cond_f

    .line 1370
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/VideoModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_f
    const-string v5, "pref_camera_stereo_mode_key"

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1373
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 1377
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStereoModeChanged()V

    goto/16 :goto_0

    .line 1375
    :cond_10
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v5}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_2

    .line 1243
    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_e
        0x7f09000e -> :sswitch_2
        0x7f090011 -> :sswitch_c
        0x7f090012 -> :sswitch_3
        0x7f090015 -> :sswitch_4
        0x7f090016 -> :sswitch_b
        0x7f09001e -> :sswitch_1
        0x7f090023 -> :sswitch_5
        0x7f09005d -> :sswitch_0
        0x7f09005e -> :sswitch_8
        0x7f090070 -> :sswitch_f
        0x7f090078 -> :sswitch_6
        0x7f09007e -> :sswitch_7
        0x7f090082 -> :sswitch_9
        0x7f090084 -> :sswitch_a
        0x7f090090 -> :sswitch_d
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 3291
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 3396
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 3113
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 3107
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # Ljava/lang/Integer;

    .prologue
    .line 3312
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method

.method protected isShowHFRDuration()Z
    .locals 1

    .prologue
    .line 2448
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 1881
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

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

.method public notifyError()V
    .locals 1

    .prologue
    .line 3353
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    .line 3355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 3356
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 3357
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3358
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3360
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2988
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3008
    :cond_0
    :goto_0
    return-void

    .line 2990
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitforrecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 2994
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    .line 2996
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    .line 2997
    if-eqz p1, :cond_4

    .line 2998
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 2999
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    .line 3000
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 3006
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 3007
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    goto :goto_0

    .line 3003
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3118
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusMoving moving= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3121
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 3122
    if-eqz p1, :cond_1

    .line 3123
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3125
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3126
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    .line 3128
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1185
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v2

    .line 1187
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v4, :cond_2

    move v2, v3

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_4

    .line 1192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1193
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 1194
    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 1195
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0e011d

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1198
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1202
    .end local v0    # "now":J
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1207
    const-string v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1208
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v2}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    goto :goto_0

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1219
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1220
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1224
    :cond_7
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onCameraOpen()V
    .locals 0

    .prologue
    .line 3372
    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2757
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2773
    :goto_0
    return v0

    .line 2760
    :cond_1
    const-string v2, "videocamera"

    const-string v3, "Start to copy texture."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2764
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2769
    :goto_1
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2771
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2772
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2766
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 2767
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 475
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 476
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->createContentView()V

    .line 477
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 478
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isRestoring()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 484
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 485
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changeConflictPreference()V

    .line 486
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 487
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 488
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 489
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 490
    invoke-static {v4}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 492
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 493
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v3, v6}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 494
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v6, "open_camera_times_key"

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    .line 497
    .local v1, "launch":Z
    if-eqz v1, :cond_0

    .line 498
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    .end local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 499
    .restart local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    .line 505
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3, v5}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 508
    if-eqz v0, :cond_1

    .line 509
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    .line 550
    :goto_3
    return-void

    .line 482
    .end local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    .end local v1    # "launch":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resetCameraSettingsIfNeed()V

    goto :goto_0

    .restart local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    .restart local v1    # "launch":Z
    :cond_3
    move v3, v5

    .line 505
    goto :goto_1

    .line 519
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeFocusManager()V

    .line 520
    if-eqz v1, :cond_7

    .line 521
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 522
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 523
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 524
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareUIByPreviewSize()V

    .line 525
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 527
    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v3, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 533
    .local v2, "startPreviewThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 536
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 542
    .end local v2    # "startPreviewThread":Ljava/lang/Thread;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 544
    :cond_7
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "android.intent.extra.quickCapture"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 546
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 547
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 548
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 511
    :catch_0
    move-exception v3

    goto :goto_2

    .line 537
    .restart local v2    # "startPreviewThread":Ljava/lang/Thread;
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1757
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1761
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1763
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 3147
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 3149
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_0

    .line 3151
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_0

    .line 3152
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 3155
    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 3137
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    .line 3143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 1768
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1769
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1771
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1772
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-ge v0, v1, :cond_2

    .line 1774
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    .line 1776
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1777
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0e00db

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1401
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return v1

    .line 1405
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1430
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1408
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1411
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v2, "record_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1405
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1442
    sparse-switch p1, :sswitch_data_0

    .line 1448
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1445
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    .line 1446
    const/4 v0, 0x1

    goto :goto_0

    .line 1442
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewIntent()V
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 555
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changeConflictPreference()V

    .line 556
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 557
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 558
    return-void
.end method

.method public onObjectStable()V
    .locals 7

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 3181
    .local v6, "rect":Landroid/graphics/RectF;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->canAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3182
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 3185
    :cond_0
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1008
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->waitStereoSwitchThread()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 1018
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_6

    .line 1020
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 1022
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 1032
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 1040
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1042
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1044
    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetScreenOn()V

    .line 1048
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1056
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    .line 1060
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1061
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1064
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1067
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 1069
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 1070
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 1025
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1026
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    goto/16 :goto_1

    .line 1028
    :cond_8
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    goto/16 :goto_1
.end method

.method public onPauseButtonClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3226
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListener.onClick() mMediaRecorderRecordingPaused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mRecorderBusy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3231
    .local v2, "now":J
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 3256
    :cond_0
    :goto_0
    return-void

    .line 3234
    :cond_1
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 3235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3236
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_2

    .line 3237
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v4, 0x7f0200c7

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3239
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 3240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 3241
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 3243
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3244
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 3245
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3254
    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3255
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListener.onClick() end. mRecorderBusy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3246
    :catch_0
    move-exception v0

    .line 3247
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "videocamera"

    const-string v4, "Could not start media recorder. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3248
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_1

    .line 3251
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    .line 3252
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v4, "video_pause_recording_times_key"

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->animateSwitchCamera()V

    .line 2846
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2847
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 938
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 940
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 942
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 947
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_6

    .line 948
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 950
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 951
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onOpenCameraException()V

    goto :goto_0

    .line 955
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 956
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 957
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 958
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 959
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 961
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 963
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_a

    .line 964
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 966
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 967
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 969
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 973
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 974
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 975
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 978
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 984
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 985
    new-instance v1, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 986
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 988
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_b

    .line 989
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 992
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onSettingsBack()V

    .line 994
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_c

    .line 995
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    .line 996
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 999
    :cond_c
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1000
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 933
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 934
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->deleteCurrentVideo()V

    .line 611
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideAlert()V

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    .line 605
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2721
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2744
    :goto_0
    return-void

    .line 2722
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v3

    .line 2725
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2742
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2727
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2728
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2730
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateSettingPage()V

    .line 2731
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2733
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2734
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    if-eqz v2, :cond_3

    .line 2736
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2737
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2738
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2742
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2743
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    goto :goto_0

    .line 2740
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 652
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick mSwitchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMediaRecorderRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInStartingFocusRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 656
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 663
    .local v0, "stop":Z
    if-eqz v0, :cond_2

    .line 664
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 665
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersAfterRecording()V

    .line 682
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    goto :goto_0

    .line 667
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkCallingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 669
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 675
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    goto :goto_1

    .line 678
    :cond_4
    const-string v1, "videocamera"

    const-string v2, "wait for autofocus"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    .line 631
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 635
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 636
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 2915
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2934
    :cond_0
    :goto_0
    return-void

    .line 2920
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2921
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 2924
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_3

    .line 2925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 2928
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2929
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    .line 2930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 2931
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1083
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1085
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1087
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseBeforeSuper()V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 1089
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseAfterSuper()V

    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 1096
    :cond_1
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 3376
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2870
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 591
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1180
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 1181
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2881
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2882
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2883
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2884
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2885
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2886
    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2888
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2889
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 2891
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2892
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 5
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3277
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "pause"

    const-string v4, "()V"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 3278
    .local v1, "pauseMethod":Lmiui/reflect/Method;
    const-class v2, Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3283
    .end local v1    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 3280
    :catch_0
    move-exception v0

    .line 3281
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "videocamera"

    const-string v3, "pauseMediaRecorder IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3279
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 1435
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1436
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1438
    :cond_0
    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    .prologue
    .line 3374
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    const/4 v7, 0x0

    .line 755
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v4

    .line 758
    .local v4, "quality":I
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 759
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 760
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 762
    .local v1, "extraVideoQuality":I
    if-lez v1, :cond_6

    .line 763
    const/4 v4, 0x1

    .line 769
    .end local v1    # "extraVideoQuality":I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 770
    iput v7, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 771
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 773
    const-string v6, "fast"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 775
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v8, "pref_video_time_lapse_frame_interval_key"

    const v9, 0x7f0e0029

    invoke-virtual {p0, v9}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 779
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 781
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_2

    .line 782
    add-int/lit16 v4, v4, 0x3e8

    .line 783
    if-lt v4, v10, :cond_1

    const/16 v6, 0x3fa

    if-le v4, v6, :cond_2

    .line 785
    :cond_1
    add-int/lit16 v4, v4, -0x3e8

    .line 786
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 787
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_video_speed_key"

    const-string v8, "normal"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 790
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v6

    const v8, 0x7f0e0121

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-virtual {v6, v8, v9}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 792
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 795
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    rem-int/lit16 v6, v4, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 803
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->quality:I

    rem-int/lit16 v6, v6, 0x3e8

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v6, v8, :cond_4

    .line 804
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 806
    :cond_4
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 807
    const-string v6, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readVideoPreferences: frameRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", codec="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    .line 813
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 814
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 816
    .local v5, "seconds":I
    mul-int/lit16 v6, v5, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 825
    .end local v5    # "seconds":I
    :goto_3
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-ge v6, v10, :cond_5

    .line 827
    iput v10, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 829
    :cond_5
    return-void

    .line 765
    .restart local v1    # "extraVideoQuality":I
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v1    # "extraVideoQuality":I
    .restart local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_7
    move v6, v7

    .line 779
    goto/16 :goto_1

    .line 797
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_8
    iput v4, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 798
    const-string v6, "slow"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 799
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-direct {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v4

    goto/16 :goto_2

    .line 817
    :cond_9
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-nez v6, :cond_a

    .line 819
    const v6, 0x75300

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3

    .line 821
    :cond_a
    iput v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3
.end method

.method public record()V
    .locals 4

    .prologue
    .line 686
    const-string v0, "videocamera"

    const-string v1, "record"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 688
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    .line 693
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3288
    return-void
.end method

.method protected setCameraParameters()V
    .locals 3

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 2632
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2634
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2635
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    .line 2636
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 2638
    :cond_1
    return-void
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1099
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 1100
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    .line 1103
    :cond_0
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "speed"    # I

    .prologue
    .line 856
    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .prologue
    .line 3158
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3177
    :cond_0
    :goto_0
    return-void

    .line 3162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3165
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3167
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3168
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 3169
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3171
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 3173
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3174
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method protected startPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1106
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v2, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1111
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-ne v2, v5, :cond_2

    .line 1112
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1115
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setDisplayOrientation()V

    .line 1116
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 1119
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1120
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1121
    .local v1, "sh":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_3

    .line 1122
    const-string v2, "videocamera"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 1133
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1125
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1129
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1130
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1136
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    goto :goto_0

    .line 1127
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected startRecordVideo()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1857
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()V

    .line 1858
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 1859
    const-string v2, "videocamera"

    const-string v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_0
    return v1

    .line 1864
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    const/4 v1, 0x1

    goto :goto_0

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1867
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_1

    .line 1868
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    const v3, 0x7f0e01c3

    const v4, 0x7f0e01c5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 1871
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1873
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method public stopObjectTracking(Z)V
    .locals 4
    .param p1, "restartFD"    # Z

    .prologue
    const/16 v3, 0x8

    .line 3197
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    .line 3199
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 3200
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3201
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3220
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3207
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3208
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 3209
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3210
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3211
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3213
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3215
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 3217
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3218
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1140
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1145
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1146
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1147
    return-void
.end method

.method protected subStopRecording()Z
    .locals 5

    .prologue
    .line 2166
    monitor-enter p0

    .line 2167
    const/4 v1, 0x0

    .line 2168
    .local v1, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2170
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2171
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2172
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 2173
    const/4 v1, 0x1

    .line 2174
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2175
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2195
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2196
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2201
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 2202
    monitor-exit p0

    return v1

    .line 2177
    :catch_0
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2180
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 2181
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2203
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected switchMutexHDR()V
    .locals 2

    .prologue
    .line 2873
    const-string v0, "off"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2878
    :goto_0
    return-void

    .line 2876
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0
.end method

.method protected updateLoadUI(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0xd

    .line 2673
    if-eqz p1, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2679
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2680
    return-void

    .line 2676
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2677
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2679
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v1, -0x1

    .line 2066
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_2

    .line 2069
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 2073
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 2074
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2077
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2079
    :cond_2
    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 26

    .prologue
    .line 2452
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Preview dimension in App->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "X"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 2456
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2458
    .local v13, "recordSize":Ljava/lang/String;
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Video dimension in App->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string v22, "video-size"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    const-string v22, "pref_camera_video_flashmode_key"

    const v23, 0x7f0e0073

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2466
    .local v6, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v18

    .line 2467
    .local v18, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2471
    :cond_0
    sget-object v21, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    .line 2472
    .local v19, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    const-string v22, "pref_video_focusmode_key"

    const v23, 0x7f0e006b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2476
    .local v7, "focusMode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2477
    const-string v21, "continuous-video"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 2478
    const-string v21, "continuous-video"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 2485
    :goto_0
    sget-object v21, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2486
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 2487
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2492
    .end local v6    # "flashMode":Ljava/lang/String;
    .end local v7    # "focusMode":Ljava/lang/String;
    .end local v18    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    const-string v22, "pref_camera_coloreffect_key"

    const v23, 0x7f0e0084

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2495
    .local v5, "colorEffect":Ljava/lang/String;
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Color effect value ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2500
    :cond_2
    const-string v20, "auto"

    .line 2504
    .local v20, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2515
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getZoomValue()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2519
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v21

    if-eqz v21, :cond_10

    sget-boolean v21, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v21, :cond_5

    const-string v21, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v21

    if-nez v21, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 2531
    const-string v21, "videocamera"

    const-string v22, "set video stabilization to true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 2541
    :goto_2
    const v10, 0x7fffffff

    .line 2542
    .local v10, "maxWidth":I
    const v9, 0x7fffffff

    .line 2543
    .local v9, "maxHeight":I
    invoke-static {}, Lcom/android/camera/Device;->isVideoSnapshotSizeLimited()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2551
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v17

    .line 2552
    .local v17, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v10, v9}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2555
    .local v11, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2556
    .local v12, "original":Landroid/hardware/Camera$Size;
    if-nez v12, :cond_11

    .line 2557
    const-string v21, "videocamera"

    const-string v22, "get null pictureSize"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_7
    :goto_3
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Video snapshot size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2565
    const/16 v21, 0x15

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_12

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 2570
    .local v14, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v15

    .line 2571
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v15, v0, v1}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2574
    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2577
    :cond_8
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Thumbnail size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    .end local v14    # "size":Landroid/hardware/Camera$Size;
    .end local v15    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v21, v0

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 2588
    .local v8, "jpegQuality":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 2596
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v21, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v4, "off"

    .line 2601
    .local v4, "antiBanding":Ljava/lang/String;
    :goto_5
    const-string v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "antiBanding value ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2605
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v16

    .line 2607
    .local v16, "style":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 2608
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 2609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 2610
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 2617
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string v22, "xiaomi-time-watermark"

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string v22, "xiaomi-time-watermark"

    const-string v23, "off"

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string v22, "watermark"

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string v22, "watermark"

    const-string v23, "off"

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    :cond_d
    return-void

    .line 2482
    .end local v4    # "antiBanding":Ljava/lang/String;
    .end local v5    # "colorEffect":Ljava/lang/String;
    .end local v8    # "jpegQuality":I
    .end local v9    # "maxHeight":I
    .end local v10    # "maxWidth":I
    .end local v11    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v12    # "original":Landroid/hardware/Camera$Size;
    .end local v16    # "style":I
    .end local v17    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v20    # "whiteBalance":Ljava/lang/String;
    .restart local v6    # "flashMode":Ljava/lang/String;
    .restart local v7    # "focusMode":Ljava/lang/String;
    .restart local v18    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    const-string v21, "auto"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    goto/16 :goto_0

    .line 2508
    .end local v6    # "flashMode":Ljava/lang/String;
    .end local v7    # "focusMode":Ljava/lang/String;
    .end local v18    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "colorEffect":Ljava/lang/String;
    .restart local v20    # "whiteBalance":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v20

    .line 2509
    if-nez v20, :cond_3

    .line 2510
    const-string v20, "auto"

    goto/16 :goto_1

    .line 2535
    :cond_10
    const-string v21, "videocamera"

    const-string v22, "set video stabilization to false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_2

    .line 2558
    .restart local v9    # "maxHeight":I
    .restart local v10    # "maxWidth":I
    .restart local v11    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v12    # "original":Landroid/hardware/Camera$Size;
    .restart local v17    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_11
    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_3

    .line 2581
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_4

    .line 2596
    .restart local v8    # "jpegQuality":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    const-string v22, "pref_camera_antibanding_key"

    const v23, 0x7f0e00cf

    invoke-static/range {v23 .. v23}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 2612
    .restart local v4    # "antiBanding":Ljava/lang/String;
    .restart local v16    # "style":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6
.end method

.method protected waitForRecorder()V
    .locals 4

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v1, :cond_1

    .line 2208
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2209
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2211
    :try_start_1
    const-string v1, "videocamera"

    const-string v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2217
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2219
    :cond_1
    return-void

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "videocamera"

    const-string v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2217
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

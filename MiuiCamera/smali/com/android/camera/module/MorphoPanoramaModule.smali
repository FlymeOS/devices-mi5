.class public Lcom/android/camera/module/MorphoPanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;,
        Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;,
        Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;,
        Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USE_PREVIEW_IMAGE:Z

.field private static sSaveOutputType:I


# instance fields
.field private MAX_DST_IMG_WIDTH:I

.field private final USE_MULTI_THREAD:Z

.field private mAeLockSupported:Z

.field private mAppDeviceRotation:I

.field private mAppPanoramaDirection:I

.field private mAppPanoramaDirectionSettings:I

.field private mAttachPosOffsetX:I

.field private mAttachPosOffsetY:I

.field protected mAwbLockSupported:Z

.field private mCameraPreviewBuff:[B

.field private mCameraState:I

.field private mCaptureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCntProcessd:I

.field private mCntReqShoot:I

.field private mDeviceOrientationAtCapture:I

.field private mDirection:[I

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mFrameRatio:F

.field private mImageID:[I

.field private mInitFocusMode:Ljava/lang/String;

.field private mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

.field private mIsShooting:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mLocation:Landroid/location/Location;

.field protected final mMainHandler:Landroid/os/Handler;

.field private mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

.field private mMotionData:[B

.field private mMotionlessThres:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMoveSpeed:[I

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/ViewGroup;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPrevDirection:I

.field private mPreviewCount:I

.field private mPreviewCroppingAdjustByAuto:I

.field private final mPreviewCroppingRatio:I

.field private mPreviewDisplayRatio:F

.field private mPreviewHeight:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPreviewRefY:I

.field private mPreviewSkipCount:I

.field private mPreviewWidth:I

.field private mRequestTakePicture:Z

.field private mRightIndicator:Landroid/view/View;

.field private mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

.field private mSensorSyncObj:Ljava/lang/Object;

.field private mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStatus:[I

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field private mSyncObj:Ljava/lang/Object;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mTimeTaken:J

.field private mUseHint:Landroid/widget/TextView;

.field private mUseHintArea:Landroid/view/View;

.field private mUseImage:I

.field private mUseSensorAWF:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/android/camera/Device;->isPanoUsePreviewFrame()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 146
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 154
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 155
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    .line 179
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_MULTI_THREAD:Z

    .line 192
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    .line 193
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    .line 194
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    .line 195
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    .line 196
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    .line 198
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 199
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    .line 200
    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 203
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    .line 204
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    .line 205
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    .line 206
    const v0, 0x8000

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    .line 207
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    .line 208
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    .line 209
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingRatio:I

    .line 210
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 211
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    .line 212
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 213
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    .line 217
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    .line 1468
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setupCaptureParams()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/module/MorphoPanoramaModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Lcom/android/camera/panorama/MorphoPanoramaGP;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initCommenConfig()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/module/MorphoPanoramaModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic access$3300()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/module/MorphoPanoramaModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/MorphoPanoramaModule;->createNameString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MorphoPanoramaModule;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initPreviewLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .prologue
    const/4 v10, 0x0

    .line 1579
    sget-boolean v1, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v1, :cond_1

    .line 1583
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-wide v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    iget-object v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p1

    move v3, p3

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v9

    .line 1585
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_nums_panorama"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1586
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "camera_picture_taken_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1587
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1589
    if-eqz v9, :cond_0

    .line 1590
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v9}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1591
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 1593
    .local v0, "t":Lcom/android/camera/Thumbnail;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1594
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1596
    .end local v0    # "t":Lcom/android/camera/Thumbnail;
    :cond_0
    return-void

    .line 1580
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    invoke-static {p1, p3, v1, v2, v3}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    goto :goto_0
.end method

.method private addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V
    .locals 1
    .param p1, "dat"    # Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 1442
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->start()V

    .line 1444
    :cond_0
    return-void
.end method

.method private allocateDisplayBuffers(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 1599
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v1, v2, :cond_1

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1603
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1604
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1605
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1608
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1610
    packed-switch p1, :pswitch_data_0

    .line 1631
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1632
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1633
    .local v0, "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1634
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    .line 1638
    .end local v0    # "aspect":F
    :cond_2
    :goto_0
    return-void

    .line 1612
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1613
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1614
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1615
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    goto :goto_0

    .line 1618
    .end local v0    # "aspect":F
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1619
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1620
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1621
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_0

    .line 1624
    .end local v0    # "aspect":F
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1625
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1626
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1627
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private calibrateRotation(I)I
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1570
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 1573
    const/4 p1, 0x0

    .line 1575
    :cond_0
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 583
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->inflatePanoramaView()V

    .line 600
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPanoramaViewRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    .line 602
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    .line 603
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090042

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 604
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090046

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    .line 607
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090040

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    .line 608
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090043

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    .line 609
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090047

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    .line 611
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f09003f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    .line 612
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090041

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    .line 614
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    .line 616
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/MorphoPanoramaModule$2;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 622
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 624
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 629
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    sub-int v0, v3, v0

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    .line 635
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 636
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 629
    goto :goto_1
.end method

.method private createNameString(JI)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J
    .param p3, "type"    # I

    .prologue
    .line 1641
    const v1, 0x7f0e00da

    invoke-virtual {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1643
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bounding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    :cond_0
    return-object v0
.end method

.method private finishAttachStillImageTask()V
    .locals 4

    .prologue
    .line 1451
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    if-le v1, v2, :cond_0

    .line 1453
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1458
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 1459
    return-void
.end method

.method private initCommenConfig()V
    .locals 2

    .prologue
    .line 1083
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    .line 1084
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitFocusMode:Ljava/lang/String;

    .line 1085
    return-void
.end method

.method private initPreviewLayout()V
    .locals 8

    .prologue
    .line 639
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 641
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 642
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    .line 643
    .local v2, "screen":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    .line 644
    .local v4, "screenWidth":I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    .line 645
    .local v3, "screenHeight":I
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v0, v5, 0x64

    .line 648
    .local v0, "croppedScreenHeight":I
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 649
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr v5, v4

    div-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 651
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    .line 652
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    .line 653
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    .line 654
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    .line 655
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->requestLayout()V

    .line 656
    return-void
.end method

.method private initializeCapabilities()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    .line 578
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    .line 579
    return-void
.end method

.method private initializeMiscControls()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    .line 296
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    .line 299
    return-void
.end method

.method private isProcessingFinishTask()Z
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1463
    const/4 v0, 0x1

    .line 1465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZslMode()Z
    .locals 2

    .prologue
    .line 1729
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->isZSLMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 989
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 990
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 982
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 984
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 985
    return-void
.end method

.method private onCaptureOrientationDecided()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1652
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 1655
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1658
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1660
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttibute(III)V

    .line 1661
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 470
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 473
    :cond_0
    return-void
.end method

.method private onPreviewMoving()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1673
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1670
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 492
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 493
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 494
    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 497
    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseCamera()V

    .line 995
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    .line 997
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 979
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    .line 818
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v0, :cond_2

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    .line 821
    :cond_2
    return-void
.end method

.method private resetUI()V
    .locals 6

    .prologue
    const v5, 0x7f020035

    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 783
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 784
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 786
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 787
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 796
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 798
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    .line 799
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 791
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    .line 1558
    const/4 v0, 0x1

    .line 1559
    .local v0, "orientation":I
    new-array v2, v9, [I

    .line 1560
    .local v2, "progress":[I
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v4, v1, p2, v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v3

    .line 1562
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 1563
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v5, "%s:saveOutputJpeg() -> 0x%x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->calibrateRotation(I)I

    move-result v0

    .line 1566
    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 1567
    return-void
.end method

.method private setProgressUI(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    return-void

    .line 1554
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setShootUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1121
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1136
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 1137
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOn()V

    .line 1138
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f0200ff

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 1139
    invoke-virtual {p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    .line 1140
    return-void
.end method

.method private setZsl()V
    .locals 3

    .prologue
    .line 565
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_0

    .line 569
    :cond_2
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11, v14}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 502
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v6

    .line 503
    .local v6, "pictureSize":Lcom/android/camera/PictureSize;
    iget v10, v6, Lcom/android/camera/PictureSize;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    .line 504
    iget v10, v6, Lcom/android/camera/PictureSize;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    .line 506
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "picture h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 509
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    .line 510
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    sget v11, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v11, v11

    sget v12, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v10, v8, v12, v13}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 512
    .local v7, "size":Landroid/hardware/Camera$Size;
    if-nez v7, :cond_0

    .line 513
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Can not find suitable preview size for panorama"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 515
    :cond_0
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    .line 516
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    .line 517
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preview h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 519
    .local v5, "original":Landroid/hardware/Camera$Size;
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 520
    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 521
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 522
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 525
    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 526
    .local v1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 527
    .local v2, "last":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v4, v10, v14

    .line 528
    .local v4, "minFps":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x1

    aget v3, v10, v11

    .line 529
    .local v3, "maxFps":I
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 530
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preview fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v9

    .line 533
    .local v9, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 534
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 540
    :goto_0
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 541
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 542
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 544
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_camera_antibanding_key"

    const v12, 0x7f0e00cf

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "antiBanding":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "antiBanding value ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 549
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 553
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setZsl()V

    .line 554
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 555
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 556
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "t2t"

    const-string v12, "off"

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_3
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10, v14}, Lcom/android/camera/module/MorphoPanoramaModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 559
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 560
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 561
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v14}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 562
    return-void

    .line 537
    .end local v0    # "antiBanding":Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot set the focus mode to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " because the mode is not supported."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showSmallPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 810
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 811
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 946
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopCameraPreview()V

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setDisplayOrientation()V

    .line 949
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 951
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 952
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 953
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 958
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 959
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private startPanoramaGP()Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1144
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v5, :cond_2

    .line 1145
    new-array v0, v6, [I

    .line 1146
    .local v0, "buff_size":[I
    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    .line 1147
    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    .line 1148
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-string v8, "YVU420_SEMIPLANAR"

    iput-object v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 1149
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 1151
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 1152
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 1154
    sget-boolean v5, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v5, :cond_4

    .line 1155
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1156
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    .line 1161
    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 1162
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v7, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 1163
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 1164
    .local v1, "degrees":I
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    invoke-static {v1, v5}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v4

    .line 1165
    .local v4, "tmpDegrees":I
    iput v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 1166
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 1168
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    .line 1170
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1171
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1172
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1173
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1174
    packed-switch v4, :pswitch_data_0

    .line 1176
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x5a

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1178
    :goto_1
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    sget v9, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 1179
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v5, v8, v9}, Lcom/android/camera/panorama/MorphoPanoramaGP;->calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    .line 1180
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v5, v8, :cond_0

    .line 1181
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v8, v8

    div-float v3, v5, v8

    .line 1182
    .local v3, "scale":F
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1183
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1185
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v5, v8, :cond_1

    .line 1186
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v8, v8

    div-float v3, v5, v8

    .line 1187
    .restart local v3    # "scale":F
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1188
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1190
    .end local v3    # "scale":F
    :cond_1
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1191
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1193
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-virtual {v5, v8, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v2

    .line 1194
    .local v2, "ret":I
    if-eqz v2, :cond_2

    .line 1195
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v8, "%s:initialize() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .end local v0    # "buff_size":[I
    .end local v1    # "degrees":I
    .end local v2    # "ret":I
    .end local v4    # "tmpDegrees":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    .line 1199
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    .line 1200
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    add-int/2addr v5, v8

    invoke-direct {p0, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->allocateDisplayBuffers(I)V

    .line 1201
    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-boolean v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v7, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v2

    .line 1202
    .restart local v2    # "ret":I
    if-eqz v2, :cond_3

    .line 1203
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v8, "%s:setUseSensorAssist() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_3
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->start()I

    move-result v2

    .line 1207
    if-eqz v2, :cond_6

    .line 1208
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v8, "%s:start() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_3
    return v7

    .line 1158
    .end local v2    # "ret":I
    .restart local v0    # "buff_size":[I
    :cond_4
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1159
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    goto/16 :goto_0

    .line 1175
    .restart local v1    # "degrees":I
    .restart local v4    # "tmpDegrees":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x10e

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto/16 :goto_1

    .end local v0    # "buff_size":[I
    .end local v1    # "degrees":I
    .end local v4    # "tmpDegrees":I
    :cond_5
    move v5, v7

    .line 1201
    goto :goto_2

    .restart local v2    # "ret":I
    :cond_6
    move v7, v6

    .line 1211
    goto :goto_3

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x10e
        :pswitch_0
    .end packed-switch
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 964
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 967
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 968
    return-void
.end method

.method private stopPanoramaShooting(Z)V
    .locals 3
    .param p1, "save_image"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1215
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "stopPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 1217
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1224
    if-nez p1, :cond_2

    .line 1225
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1227
    :cond_2
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1229
    :cond_3
    const/4 p1, 0x0

    .line 1232
    :cond_4
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    .line 1233
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1235
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    goto :goto_0
.end method

.method private switchToCameraMode()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    .line 755
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1001
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->cancel()V

    .line 1003
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->join()V

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
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
    const/4 v2, 0x0

    .line 393
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraPadOne;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 413
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v3, v4

    .line 465
    goto :goto_0

    .line 415
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 419
    :sswitch_1
    if-nez p1, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 421
    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne v4, v3, :cond_0

    .line 422
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string v5, "capture_times_shutter"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 426
    check-cast v2, Landroid/graphics/Point;

    .local v2, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 427
    check-cast v0, Landroid/graphics/Point;

    .line 428
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_0

    .line 430
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v2    # "start":Landroid/graphics/Point;
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 431
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 436
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    new-instance v1, Lcom/android/camera/module/MorphoPanoramaModule$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/module/MorphoPanoramaModule$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/Object;)V

    .line 442
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 444
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 445
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto :goto_0

    .line 451
    .end local v1    # "r":Ljava/lang/Runnable;
    :sswitch_3
    iput-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    .line 452
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    goto :goto_0

    .line 456
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 460
    :sswitch_5
    if-ne p1, v3, :cond_0

    .line 461
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/MorphoPanoramaModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x7f09000e -> :sswitch_0
        0x7f090012 -> :sswitch_1
        0x7f090015 -> :sswitch_2
        0x7f090078 -> :sswitch_5
        0x7f090082 -> :sswitch_3
        0x7f090084 -> :sswitch_4
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 760
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 764
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 765
    monitor-exit v1

    .line 772
    :goto_0
    return v3

    .line 768
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 771
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    .line 273
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 274
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 275
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    .line 279
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 280
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 283
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 290
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->createContentView()V

    .line 291
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeMiscControls()V

    .line 292
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const v1, 0x7f090062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    .line 595
    const-string v0, "pref_camera_panoramamode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 676
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v1

    .line 679
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 710
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 682
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 686
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 701
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 679
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 715
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 724
    :goto_0
    return v0

    .line 718
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 724
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 721
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 718
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 879
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 882
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 885
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 887
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    if-eqz v0, :cond_1

    .line 889
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 902
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    .line 903
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->waitCameraStartUpThread()V

    .line 906
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_7

    .line 907
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    .line 912
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_6

    .line 913
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 914
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 916
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetScreenOn()V

    .line 917
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    .line 920
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 922
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 923
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 925
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 926
    return-void

    .line 903
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 909
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 873
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 874
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 875
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1677
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    .line 1678
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 1680
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v1, :cond_1

    .line 1681
    :cond_0
    monitor-exit v8

    .line 1726
    :goto_0
    return-void

    .line 1683
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1685
    .local v6, "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    .line 1686
    .local v0, "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1695
    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 1703
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1705
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1724
    :cond_2
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    :sswitch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1700
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    goto :goto_1

    .line 1724
    .end local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1709
    .restart local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .restart local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :cond_3
    const-wide/16 v2, 0x32

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1713
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1714
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_2

    .line 1717
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1718
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1719
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1

    .line 1710
    :catch_0
    move-exception v7

    .line 1711
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1695
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPictureTakenPreview([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 1401
    iget-object v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v1, :cond_0

    .line 1403
    monitor-exit v7

    .line 1436
    :goto_0
    return-void

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1408
    .local v6, "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    .line 1409
    .local v0, "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1417
    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 1425
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1426
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1430
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1431
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1435
    :cond_1
    :goto_1
    monitor-exit v7

    goto :goto_0

    .end local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1421
    .restart local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .restart local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :sswitch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1422
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1417
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1247
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewFrame"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1249
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1250
    :cond_0
    monitor-exit v21

    .line 1398
    :goto_0
    return-void

    .line 1253
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    if-lez v2, :cond_2

    .line 1254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1256
    monitor-exit v21

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1260
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1264
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v17

    .line 1266
    .local v17, "ret":I
    if-eqz v17, :cond_3

    .line 1267
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v3, "%s:attachPreview() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_3
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame attachPreview status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_4

    .line 1271
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":attachPreview Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1290
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v17

    .line 1291
    if-eqz v17, :cond_5

    .line 1292
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v3, "%s:getCurrentDirection() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1300
    .local v20, "sw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1301
    .local v18, "sh":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1302
    .local v14, "dw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1303
    .local v12, "dh":I
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1304
    .local v10, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1305
    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1307
    .local v13, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v18, v18, v2

    .line 1308
    new-instance v19, Landroid/graphics/Rect;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v4, v18, 0xa

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v5, v18, 0x5a

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1309
    .local v19, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v2, v0, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1312
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 1313
    .local v9, "attachedPos":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 1314
    .local v15, "guidePos":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v2, v9, v15}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 1315
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame getGuidancePos attachedPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  guidePos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1330
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 1331
    if-ge v14, v12, :cond_c

    int-to-float v2, v12

    move/from16 v0, v18

    int-to-float v3, v0

    div-float/2addr v2, v3

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    .line 1333
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 1335
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1337
    :cond_7
    iget v2, v9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 1338
    iget v2, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 1339
    iget v2, v15, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->x:I

    .line 1340
    iget v2, v15, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->y:I

    .line 1341
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame change position with ratio Point="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " output_rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDirection[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x5

    if-ne v2, v4, :cond_d

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setToofast(ZI)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    invoke-virtual {v2, v9, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    .line 1349
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewMoving()V

    .line 1359
    .end local v9    # "attachedPos":Landroid/graphics/Point;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "dh":I
    .end local v13    # "dst":Landroid/graphics/Rect;
    .end local v14    # "dw":I
    .end local v15    # "guidePos":Landroid/graphics/Point;
    .end local v18    # "sh":I
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v20    # "sw":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_f

    .line 1361
    move-object/from16 v11, p1

    .line 1364
    .local v11, "data2":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    .line 1366
    .local v16, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/android/camera/module/MorphoPanoramaModule$3;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1387
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 1392
    .end local v11    # "data2":[B
    .end local v16    # "mHandler":Landroid/os/Handler;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    .line 1395
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    .line 1396
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame mPrevDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1263
    .end local v17    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 1275
    .restart local v17    # "ret":I
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1276
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    .line 1277
    monitor-exit v21

    goto/16 :goto_0

    .line 1281
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    .line 1283
    monitor-exit v21

    goto/16 :goto_0

    .line 1285
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    goto/16 :goto_1

    .line 1319
    .restart local v9    # "attachedPos":Landroid/graphics/Point;
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "dh":I
    .restart local v13    # "dst":Landroid/graphics/Rect;
    .restart local v14    # "dw":I
    .restart local v15    # "guidePos":Landroid/graphics/Point;
    .restart local v18    # "sh":I
    .restart local v19    # "src":Landroid/graphics/Rect;
    .restart local v20    # "sw":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_b

    .line 1320
    :cond_a
    iget v2, v9, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 1321
    iget v2, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 1324
    :cond_b
    iget v2, v9, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 1325
    iget v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 1331
    :cond_c
    int-to-float v2, v14

    move/from16 v0, v20

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto/16 :goto_3

    .line 1346
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1352
    .end local v9    # "attachedPos":Landroid/graphics/Point;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "dh":I
    .end local v13    # "dst":Landroid/graphics/Rect;
    .end local v14    # "dw":I
    .end local v15    # "guidePos":Landroid/graphics/Point;
    .end local v18    # "sh":I
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v20    # "sw":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCaptureOrientationDecided()V

    goto/16 :goto_5

    .line 1389
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1316
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    .line 836
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 839
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetupCameraThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitForRelease="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_2

    .line 845
    :cond_0
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 846
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    .line 860
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    .line 861
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 864
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 865
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 867
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 868
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 869
    return-void

    .line 856
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    if-eqz v0, :cond_1

    .line 857
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    .line 858
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 825
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 827
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 828
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    .line 830
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    .line 832
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 735
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_2

    .line 741
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 742
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaShooting()V

    .line 747
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 744
    :cond_2
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 745
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 750
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 930
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 932
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    .line 935
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 972
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 973
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 974
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 478
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 484
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 486
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 2
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 660
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 662
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 663
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 666
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 1243
    :cond_0
    return-void
.end method

.method public startPanoramaShooting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1088
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "startPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaGP()Z

    .line 1095
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    .line 1096
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    .line 1097
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 1098
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    .line 1099
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    .line 1102
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1103
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    .line 1104
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1107
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1108
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1109
    :cond_2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    .line 1110
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1111
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1114
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1117
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setShootUI()V

    goto :goto_0
.end method

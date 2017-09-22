.class public Lcom/android/camera/camera_adapter/CameraMTK;
.super Lcom/android/camera/module/CameraModule;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;,
        Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBParams;,
        Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private mClearImage:[B

.field private mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field private mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mCurrentNum:I

.field private mDepthMap:[B

.field private mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field private mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mIsLongShotMode:Z

.field private mIsMTKFaceBeautyMode:Z

.field private mIsStereoCapture:Z

.field private mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private final mOperator:Ljava/lang/Object;

.field private mOriginalJpegData:[B

.field private mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

.field private final mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 44
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 45
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 46
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 54
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$1;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .line 608
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$1;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    .line 609
    new-instance v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v0}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    .line 612
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    .line 613
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    .line 614
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 50
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    .line 51
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->constructObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/camera_adapter/CameraMTK;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/camera_adapter/CameraMTK;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->setJsonBuffer([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B
    .param p5, "x5"    # [B
    .param p6, "x6"    # [B
    .param p7, "x7"    # [B

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/camera_adapter/CameraMTK;->writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camera_adapter/CameraMTK;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    return-object v0
.end method

.method private applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .prologue
    .line 378
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 379
    :cond_0
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFBParams: unexpected null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "cameraParam"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_1
    return-void

    .line 379
    :cond_1
    const-string v0, "fbParam"

    goto :goto_0

    .line 382
    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private constructObject()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 804
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    :goto_0
    return-object v2

    .line 806
    :cond_0
    :try_start_0
    const-string v3, "com.mediatek.xmp.XmpOperator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "()V"

    invoke-static {v3, v4}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 807
    .local v0, "constructor":Lmiui/reflect/Constructor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 808
    .local v2, "o":Ljava/lang/Object;
    goto :goto_0

    .line 809
    .end local v0    # "constructor":Lmiui/reflect/Constructor;
    .end local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera"

    const-string v4, "NoSuchMethod"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 811
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Camera"

    const-string v4, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enableZSL()Z
    .locals 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B6:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 8
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 481
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 482
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_1

    .line 483
    const/4 v5, 0x0

    .line 495
    :goto_1
    return-object v5

    .line 481
    .end local v1    # "length":I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 485
    .restart local v1    # "length":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v2, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 488
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 489
    .local v3, "x":I
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 490
    .local v4, "y":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    .line 492
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 495
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 2
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 338
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 339
    .local v0, "faceNum":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 345
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    :goto_1
    return-object v1

    .line 338
    .end local v0    # "faceNum":I
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 341
    .restart local v0    # "faceNum":I
    :pswitch_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    goto :goto_1

    .line 343
    :pswitch_1
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFlashWillOn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramsFlashOn"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "on"

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

.method private static isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 464
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 465
    .local v0, "supportedCaptureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUseMediaTekFaceBeautify()Z
    .locals 1

    .prologue
    .line 857
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mtkUpdateCameraParametersPreference()V
    .locals 15

    .prologue
    .line 65
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 69
    const v11, 0x7f0e0052

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "thumbnailQuality":Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "thumbnailQuality = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v9}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, "quality":I
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 75
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v11

    if-nez v11, :cond_8

    :cond_0
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 78
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 84
    :goto_0
    const-string v11, "pref_qc_camera_iso_key"

    const v12, 0x7f0e00be

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "iso":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 87
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ISO value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 92
    :cond_1
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v12, "pref_qc_camera_saturation_key"

    const v13, 0x7f0e00aa

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "saturationStr":Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Saturation value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 99
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v12, "pref_qc_camera_contrast_key"

    const v13, 0x7f0e00a8

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "contrastStr":Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Contrast value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 106
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v12, "pref_qc_camera_sharpness_key"

    const v13, 0x7f0e00ac

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "sharpnessStr":Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sharpness value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 112
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 114
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result v2

    .line 115
    .local v2, "enableZsl":Z
    const-string v12, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZSL value = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v2, :cond_9

    const-string v11, "on"

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v2, :cond_a

    .line 117
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 118
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 125
    :goto_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 126
    const-string v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 127
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 128
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x1388

    const/16 v13, 0x5dc0

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 129
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v12, "pref_camera_stereo_key"

    const v13, 0x7f0e01da

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, "vfLevel":Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vfLevel value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v10}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 140
    .end local v10    # "vfLevel":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMultiSnapStatus:Z

    if-eqz v11, :cond_c

    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v11}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 141
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    .line 148
    :cond_3
    :goto_4
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Long Shot mode value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isLongShotMode()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 151
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "fbValue":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 153
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FB value ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/MTKCameraProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 155
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->setMediatekBeautify(Ljava/lang/String;)V

    .line 159
    :goto_5
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 160
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 163
    .end local v3    # "fbValue":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 164
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v12, "pref_camera_show_gender_age_key"

    const v13, 0x7f0e0150

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 167
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetShowGenderAndAge ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v8    # "showGenderAndAge":Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 173
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 174
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 177
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    if-nez v11, :cond_6

    .line 178
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isSceneMotion()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 180
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 181
    const-string v11, "Camera"

    const-string v12, "AntiMotion = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isBackCamera()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v11

    if-nez v11, :cond_10

    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-nez v11, :cond_10

    const-string v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v0, 0x1

    .line 195
    .local v0, "asdEnable":Z
    :goto_7
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASD Enable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setMetaCallback(Z)V

    .line 198
    .end local v0    # "asdEnable":Z
    :cond_7
    return-void

    .line 80
    .end local v1    # "contrastStr":Ljava/lang/String;
    .end local v2    # "enableZsl":Z
    .end local v4    # "iso":Ljava/lang/String;
    .end local v6    # "saturationStr":Ljava/lang/String;
    .end local v7    # "sharpnessStr":Ljava/lang/String;
    :cond_8
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .restart local v1    # "contrastStr":Ljava/lang/String;
    .restart local v2    # "enableZsl":Z
    .restart local v4    # "iso":Ljava/lang/String;
    .restart local v6    # "saturationStr":Ljava/lang/String;
    .restart local v7    # "sharpnessStr":Ljava/lang/String;
    :cond_9
    const-string v11, "off"

    goto/16 :goto_1

    .line 120
    :cond_a
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 121
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    :cond_b
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x1388

    const/16 v13, 0x7530

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 136
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_3

    .line 144
    :cond_c
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v11, :cond_3

    .line 145
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 146
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    goto/16 :goto_4

    .line 157
    .restart local v3    # "fbValue":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setBeautyParams()V

    goto/16 :goto_5

    .line 183
    .end local v3    # "fbValue":Ljava/lang/String;
    :cond_e
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 184
    const-string v11, "Camera"

    const-string v12, "Hand Nigh = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 186
    :cond_f
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 187
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 188
    const-string v11, "Camera"

    const-string v12, "Morpho HDR = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 193
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method private notifyMergeData()V
    .locals 8

    .prologue
    .line 787
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMergeData mCurrentNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 789
    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 790
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMergeData Vs Dof "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setupPreview()V

    .line 792
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    if-eqz v2, :cond_0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_STEREO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Lcom/android/camera/stereo/StereoDataGroup;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stereo/StereoDataGroup;-><init>(Ljava/lang/String;[B[B[B[B[B[B)V

    .line 797
    .local v0, "dataGroup":Lcom/android/camera/stereo/StereoDataGroup;
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 799
    .end local v0    # "dataGroup":Lcom/android/camera/stereo/StereoDataGroup;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 801
    :cond_1
    return-void
.end method

.method private setFacePoints(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 500
    .local v0, "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 502
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method private setJsonBuffer([B)V
    .locals 6
    .param p1, "maskAndConfigData"    # [B

    .prologue
    .line 835
    :try_start_0
    const-string v3, "com.mediatek.xmp.XmpOperator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 836
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setJsonBuffer"

    const-string v4, "([B)V"

    invoke-static {v0, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 837
    .local v2, "method":Lmiui/reflect/Method;
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 843
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v1

    .line 839
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Camera"

    const-string v4, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 840
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 841
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera"

    const-string v4, "no method setJsonBuffer"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setMediatekBeautify(Ljava/lang/String;)V
    .locals 8
    .param p1, "fbValue"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0e0168

    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 202
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 204
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "normal"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 205
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v5, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->stopFaceDetection(Z)V

    .line 214
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "face_beauty"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 215
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 216
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v3, :cond_3

    .line 220
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v1

    .line 222
    .local v1, "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, v6, :cond_2

    .line 223
    aget-object v0, v1, v5

    .line 228
    .end local v1    # "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 229
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 231
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v6, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 226
    :cond_3
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 460
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 458
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 4
    .param p1, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p2, "fbValue"    # Ljava/lang/String;
    .param p3, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 358
    const v1, 0x7f0e016c

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {p1}, Lcom/android/camera/MtkFBParamsUtil;->getAdvancedValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 374
    :goto_0
    return-void

    .line 362
    :cond_0
    const v1, 0x7f0e0169

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 372
    .local v0, "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :goto_1
    invoke-static {p1, v0, p3}, Lcom/android/camera/MtkFBParamsUtil;->getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    goto :goto_0

    .line 364
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_1
    const v1, 0x7f0e016a

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_1

    .line 366
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_2
    const v1, 0x7f0e016b

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_1

    .line 369
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_3
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFBParams: unexpected fbMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 6
    .param p1, "pictureName"    # Ljava/lang/String;
    .param p2, "originalJpegData"    # [B
    .param p3, "jpsData"    # [B
    .param p4, "maskAndConfigDat"    # [B
    .param p5, "clearImage"    # [B
    .param p6, "depthMap"    # [B
    .param p7, "ldcData"    # [B

    .prologue
    .line 820
    :try_start_0
    const-string v3, "com.mediatek.xmp.XmpOperator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 821
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "writeStereoCaptureInfoToJpg"

    const-string v4, "(Ljava/lang/String;[B[B[B[B[B[B)[B"

    invoke-static {v0, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 823
    .local v2, "method":Lmiui/reflect/Method;
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Lmiui/reflect/Method;
    :goto_0
    return-object v3

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Camera"

    const-string v4, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 827
    :catch_1
    move-exception v1

    .line 828
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera"

    const-string v4, "no method writeStereoCaptureInfoToJpg"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3
    .param p1, "startshut"    # Z

    .prologue
    .line 245
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/CameraMTK;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 246
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_1

    const-string v0, "continuousshot"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 249
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "normal"

    goto :goto_1
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 471
    return-void
.end method

.method protected closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 268
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 269
    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getMaxPictureSize()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 568
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v1

    return-object v1

    .line 561
    :cond_1
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedStereoPictureSizes(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 259
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method protected initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 580
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 582
    const-string v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-nez v1, :cond_0

    .line 584
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Stereo Save Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 586
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    .line 588
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    goto :goto_0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "flash-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "paramsFlashOn":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFlashWillOn(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected needSetupPreview()Z
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "preview-stopped"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "previewStopped":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCameraStartPreview()V
    .locals 2

    .prologue
    .line 846
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    .line 848
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 854
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onDestroy()V

    .line 597
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    .line 601
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 10
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 300
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v4

    .line 302
    .local v4, "view":Lcom/android/camera/ui/FaceView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 304
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    move-result-object v2

    .line 307
    .local v2, "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_1

    .line 334
    .end local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .end local v4    # "view":Lcom/android/camera/ui/FaceView;
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .restart local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .restart local v4    # "view":Lcom/android/camera/ui/FaceView;
    :cond_1
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_5

    const/4 v5, 0x0

    aget-object v1, v0, v5

    .line 313
    .local v1, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :goto_1
    if-eqz v1, :cond_2

    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    float-to-double v6, v5

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_0

    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v6, 0x3f19999a    # 0.6f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 317
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "fbValue":Ljava/lang/String;
    const v5, 0x7f0e0168

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 319
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 321
    :cond_3
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    :cond_4
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_6

    .line 323
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 327
    :goto_2
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 328
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 329
    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 330
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    goto :goto_0

    .line 312
    .end local v1    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v3    # "fbValue":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 325
    .restart local v1    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .restart local v3    # "fbValue":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_qc_camera_iso_key"

    const v4, 0x7f0e00be

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "iso":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 283
    .end local v0    # "iso":Ljava/lang/String;
    :cond_2
    const-string v2, "pref_camera_stereo_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_stereo_key"

    const v4, 0x7f0e01da

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "vfLevel":Ljava/lang/String;
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting changed, vfLevel value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 290
    const-string v2, "pref_camera_stereo_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->updateStatusBar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v1    # "vfLevel":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    .line 429
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setFacePoints(Landroid/hardware/Camera$Parameters;)V

    .line 432
    :cond_0
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 241
    :cond_0
    return-void
.end method

.method protected prepareOpenCamera()V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->closeCamera()V

    .line 573
    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 575
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    .line 577
    :cond_0
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 423
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 404
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, "aeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 443
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->mtkUpdateCameraParametersPreference()V

    .line 444
    return-void
.end method

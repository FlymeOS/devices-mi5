.class public Lcom/android/camera/snap/SnapCamera;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentValues:Landroid/content/ContentValues;

.field private mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsCamcorder:Z

.field private mLastAngle:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecording:Z

.field private mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 70
    iput v1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 76
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 309
    new-instance v1, Lcom/android/camera/snap/SnapCamera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/snap/SnapCamera$2;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 84
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 86
    iput-object p2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 87
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSnapType()V

    .line 90
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V

    .line 91
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/snap/SnapCamera;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapCamera;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initCamera()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 129
    :try_start_0
    const-string v5, "android.graphics.SurfaceTexture"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 131
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 132
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/SurfaceTexture;

    iput-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 134
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 135
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "persist.camera.snap.auto_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 139
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 143
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 145
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 146
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    iget v5, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v6

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "recordSize":Ljava/lang/String;
    const-string v5, "video-size"

    invoke-virtual {v2, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v5, "camera-service-mute"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "continuous-video"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 154
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 171
    .end local v4    # "recordSize":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 174
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 189
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .line 156
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 159
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v3

    .line 160
    .local v3, "pictureSize":Lcom/android/camera/PictureSize;
    iget v5, v3, Lcom/android/camera/PictureSize;->width:I

    iput v5, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 161
    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    iput v5, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    .line 163
    iget v5, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    iget v6, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 164
    iget v5, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 165
    const-string v5, "zsl"

    const-string v6, "on"

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "continuous-picture"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 167
    const-string v5, "street-snap-mode"

    const-string v6, "on"

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v5, "no-display-mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 176
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "pictureSize":Lcom/android/camera/PictureSize;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "camera init failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/camera/CameraHardwareException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v1    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 182
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/InstantiationException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private initOrientationListener()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/android/camera/snap/SnapCamera$1;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/snap/SnapCamera$1;-><init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 232
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private initSnapType()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_snap_key"

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v4, 0x7f0e01cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "snapType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iput-boolean v5, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    goto :goto_0

    .line 122
    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    goto :goto_0
.end method

.method public static isSnapEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_snap_key"

    const v3, 0x7f0e01c9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stopCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 434
    iget-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v3, :cond_0

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 444
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 445
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 449
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v3, :cond_2

    .line 450
    const/4 v2, 0x0

    .line 452
    .local v2, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 463
    :goto_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v3, :cond_2

    .line 464
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v3, v2}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 468
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 469
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v6, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 440
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 459
    .local v1, "th":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    sget-object v3, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public isCamcorder()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 44
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 48
    const/16 v0, 0x320

    if-eq p2, v0, :cond_0

    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 50
    :cond_0
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "duration or file size reach MAX"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 53
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 266
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 277
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 292
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 300
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    :cond_2
    :goto_3
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_1

    .line 303
    :catch_1
    move-exception v0

    goto :goto_3

    .line 287
    :catch_2
    move-exception v0

    goto :goto_2

    .line 272
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public startCamcorder()V
    .locals 14

    .prologue
    .line 352
    :try_start_0
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 354
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 355
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 356
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 357
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 358
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v11, 0x493e0

    iput v11, v10, Landroid/media/CamcorderProfile;->duration:I

    .line 363
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 364
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 366
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 367
    .local v4, "loc":Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 368
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    double-to-float v11, v12

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 372
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 373
    .local v0, "dateTaken":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v12, 0x7f0e00d9

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "title":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_SNAP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v11}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "filename":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v10}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "mime":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 380
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "mime_type"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "_data"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "resolution"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-eqz v4, :cond_1

    .line 389
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 390
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string v11, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 393
    :cond_1
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "save to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v10

    const-wide/32 v12, 0x3200000

    sub-long v6, v10, v12

    .line 398
    .local v6, "maxFileSize":J
    const-wide v10, 0xdac00000L

    cmp-long v10, v10, v6

    if-gez v10, :cond_2

    .line 399
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need reduce , now maxFileSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-wide v6, 0xdac00000L

    .line 402
    :cond_2
    sget-wide v10, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    .line 403
    sget-wide v6, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    :goto_0
    :try_start_2
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set orientation to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v11, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 418
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->prepare()V

    .line 420
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 421
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 423
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->start()V

    .line 424
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 430
    .end local v0    # "dateTaken":J
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "maxFileSize":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare or start failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 428
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_1

    .line 408
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dateTaken":J
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "loc":Landroid/location/Location;
    .restart local v5    # "mime":Ljava/lang/String;
    .restart local v6    # "maxFileSize":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public takeSnap()V
    .locals 6

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCameraOrientation(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 249
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 250
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 252
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

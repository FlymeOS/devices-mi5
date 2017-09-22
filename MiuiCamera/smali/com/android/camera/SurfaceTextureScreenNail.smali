.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mCameraHeight:I

.field private mCameraWidth:I

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mIsRatio16_9:Z

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field private mRenderHeight:I

.field protected mRenderLayoutRect:Landroid/graphics/Rect;

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceWidth:I

.field private mTargetRatio:I

.field protected mTheight:I

.field private mTransform:[F

.field protected mTwidth:I

.field protected mTx:I

.field protected mTy:I

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    .line 44
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    .line 45
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    .line 72
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/camera/GLSurfaceStatusBar;

    invoke-direct {v0}, Lcom/android/camera/GLSurfaceStatusBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    .line 64
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 67
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 68
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 73
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 75
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 80
    return-void
.end method

.method private calRenderScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 289
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    if-eqz v0, :cond_0

    .line 290
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 294
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 296
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 297
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 298
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 299
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 314
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 316
    return-void

    .line 301
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 302
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 303
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 304
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 308
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 309
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 310
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 311
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    goto :goto_0
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 174
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 176
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private initializeTexture()V
    .locals 9

    .prologue
    const/16 v6, 0x15

    .line 97
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 102
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_1

    .line 104
    :try_start_0
    const-class v3, Landroid/graphics/SurfaceTexture;

    const-string v4, "(ILandroid/os/Looper;)V"

    invoke-static {v3, v4}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 106
    .local v0, "con":Lmiui/reflect/Constructor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    iput-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 109
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "fullHandlerCapacity:set urgent display"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    const/4 v4, -0x8

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 111
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .end local v0    # "con":Lmiui/reflect/Constructor;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_2

    .line 120
    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 127
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v3

    if-nez v3, :cond_4

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 140
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture Constructor NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture Constructor IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_1
    const-class v3, Landroid/graphics/SurfaceTexture;

    const-string v4, "setOnFrameAvailableListener"

    const-string v5, "(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 133
    .local v2, "m":Lmiui/reflect/Method;
    const-class v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/os/Handler;

    sget-object v8, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 134
    .end local v2    # "m":Lmiui/reflect/Method;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture setOnFrameAvailableListener NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture setOnFrameAvailableListener IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    if-eq v0, v1, :cond_0

    .line 333
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 334
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 338
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 84
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 85
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    .line 86
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    const/16 v1, 0x2d0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/lit16 v2, v2, 0x2d0

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 88
    monitor-enter p0

    .line 89
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_1

    .line 362
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 363
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 364
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 370
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    .line 371
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 374
    :cond_2
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 394
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 383
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 385
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 386
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 387
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateExtraTransformMatrix([F)V

    .line 390
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 391
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 393
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderTargeRatio()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 156
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 161
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 165
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 167
    :cond_2
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/GLSurfaceStatusBar;->release()V

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 170
    return-void

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/GLSurfaceStatusBar;->setOrientation(I)V

    .line 403
    return-void
.end method

.method public setRenderSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 320
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 322
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->calRenderScale()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 191
    if-le p1, p2, :cond_2

    .line 192
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 193
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 198
    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getRenderAspectRatio(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 204
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {p1, p2, v2, v3}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v2

    if-nez v2, :cond_8

    .line 206
    :cond_0
    iget p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 207
    iget p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 208
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    packed-switch v2, :pswitch_data_0

    .line 279
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 280
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 281
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 286
    :goto_2
    return-void

    .line 195
    :cond_2
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 196
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    goto :goto_0

    .line 210
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 211
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 212
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 213
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 214
    mul-int/lit8 v2, p1, 0x10

    mul-int/lit8 v3, p2, 0x9

    if-le v2, v3, :cond_3

    .line 215
    move v1, p1

    .line 216
    .local v1, "oldWidth":I
    int-to-float v2, p2

    mul-float/2addr v2, v8

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int p1, v2

    .line 217
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 228
    .end local v1    # "oldWidth":I
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 230
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 231
    int-to-float v2, p2

    mul-float/2addr v2, v6

    float-to-int p2, v2

    .line 232
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_1

    .line 219
    :cond_3
    move v0, p2

    .line 220
    .local v0, "oldHeight":I
    int-to-float v2, p1

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int p2, v2

    .line 221
    int-to-float v2, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    .line 224
    .end local v0    # "oldHeight":I
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 225
    iput v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 226
    iput v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    .line 236
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 237
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 238
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 239
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 240
    mul-int/lit8 v2, p1, 0x4

    mul-int/lit8 v3, p2, 0x3

    if-le v2, v3, :cond_6

    .line 241
    move v1, p1

    .line 242
    .restart local v1    # "oldWidth":I
    int-to-float v2, p2

    mul-float/2addr v2, v6

    float-to-int p1, v2

    .line 243
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 255
    .end local v1    # "oldWidth":I
    :goto_4
    sget-boolean v2, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v2, :cond_5

    .line 256
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 257
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 258
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 259
    int-to-float v2, p1

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int p2, v2

    .line 260
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 263
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_1

    .line 245
    :cond_6
    move v0, p2

    .line 246
    .restart local v0    # "oldHeight":I
    int-to-float v2, p1

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    float-to-int p2, v2

    .line 247
    int-to-float v2, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_4

    .line 250
    .end local v0    # "oldHeight":I
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 251
    iput v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 252
    iput v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_4

    .line 268
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 269
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 270
    iput-boolean v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 271
    if-eq p1, p2, :cond_1

    .line 272
    move v0, p2

    .line 273
    .restart local v0    # "oldHeight":I
    move p2, p1

    .line 274
    int-to-float v2, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto/16 :goto_1

    .line 284
    .end local v0    # "oldHeight":I
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->calRenderScale()V

    goto/16 :goto_2

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 1
    .param p1, "cropped"    # Z

    .prologue
    .line 406
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F

    .prologue
    .line 434
    return-void
.end method

.method protected updateRenderRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 437
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 438
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 439
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 440
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 441
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 442
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    :goto_0
    return-void

    .line 445
    :cond_0
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 446
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 447
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 448
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 449
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected updateTransformMatrix([F)V
    .locals 8
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, -0x41000000    # -0.5f

    const/4 v4, 0x0

    .line 414
    const/high16 v1, 0x3f800000    # 1.0f

    .line 415
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 416
    .local v2, "scaleY":F
    const/4 v0, 0x0

    .line 417
    .local v0, "change":Z
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float/2addr v1, v3

    .line 419
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float/2addr v2, v3

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v3, :cond_1

    .line 423
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 424
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 425
    const/4 v0, 0x1

    .line 427
    :cond_1
    if-eqz v0, :cond_2

    .line 428
    invoke-static {p1, v4, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 429
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 430
    invoke-static {p1, v4, v5, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 432
    :cond_2
    return-void
.end method

.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$1;,
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$SurfacePosition;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I

.field public static final SHOW_COUNT:I

.field public static sBackgroundBlurIndex:I

.field public static sDividerIndex:I

.field public static sFishEyeIndex:I

.field public static sGaussianIndex:I

.field public static sGradienterIndex:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;

.field public static sPeakingMFIndex:I

.field public static sTiltShiftIndex:I


# instance fields
.field private mBlur:Z

.field private mBlurStep:I

.field private mDeviceRotation:F

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mDrawPeaking:Z

.field private mEffectCount:I

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectGroupSize:I

.field private mEffectImageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mEffectKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public volatile mFillAnimationCache:Z

.field private mIsDrawMainFrame:Z

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOverrideEffectIndex:I

.field public mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

.field private mTiltShiftMaskAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    .line 51
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    .line 67
    const/16 v0, 0x11

    sput v0, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 68
    const/16 v0, 0x12

    sput v0, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    .line 69
    const/16 v0, 0x13

    sput v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    .line 70
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    .line 71
    sput v2, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    .line 72
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    .line 73
    const/16 v0, 0x10

    sput v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 59
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 62
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 63
    new-instance v0, Lcom/android/camera/effect/EffectController$SurfacePosition;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController$SurfacePosition;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    .line 74
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mFillAnimationCache:Z

    .line 79
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 80
    sget v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 88
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$1;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    .line 93
    return-void
.end method

.method private addEntryItem(II)V
    .locals 2
    .param p1, "strId"    # I
    .param p2, "id"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/android/camera/effect/EffectController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 173
    :cond_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "strId"    # I

    .prologue
    .line 383
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEffectWeight()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 177
    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit v0

    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearEffectAttribute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 328
    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$1;)V

    return-object v0
.end method

.method public getAnalyticsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlurAnimationValue()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/16 v3, 0x8

    .line 204
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_1

    .line 205
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 206
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_0

    .line 207
    sget v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_1

    .line 210
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    mul-int/lit16 v0, v0, 0xd4

    div-int/lit8 v1, v0, 0x8

    .line 213
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public getDeviceRotation()F
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getDisplayEndIndex()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect(Z)I
    .locals 2
    .param p1, "includeOverride"    # Z

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    monitor-exit p0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    monitor-exit p0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectCount()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "renderGroup"    # Lcom/android/camera/effect/renders/RenderGroup;
    .param p3, "wholeRender"    # Z
    .param p4, "isSnapShotRender"    # Z
    .param p5, "index"    # I

    .prologue
    .line 393
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    const/4 v5, 0x0

    .line 766
    :goto_0
    return-object v5

    .line 397
    :cond_0
    if-nez p1, :cond_1c

    const/4 v0, 0x1

    .line 398
    .local v0, "addEntry":Z
    :goto_1
    const/4 v1, -0x1

    .line 399
    .local v1, "id":I
    const/4 v2, 0x0

    .line 400
    .local v2, "initOne":Z
    if-nez p1, :cond_1d

    .line 401
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 402
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    .line 404
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    .line 405
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 407
    const/4 v0, 0x1

    .line 419
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 420
    if-eqz v0, :cond_1f

    .line 421
    const v5, 0x7f0e0096

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 422
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 431
    if-eqz v0, :cond_21

    .line 432
    const v5, 0x7f0e0090

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 433
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020028

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_instagram_rise_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 443
    if-eqz v0, :cond_24

    .line 444
    const v5, 0x7f0e008b

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 445
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020025

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_instagram_clarendon_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 455
    if-eqz v0, :cond_27

    .line 456
    const v5, 0x7f0e008c

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 457
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020026

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_instagram_crema_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 467
    if-eqz v0, :cond_2a

    .line 468
    const v5, 0x7f0e0091

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 469
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020027

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_instagram_hudson_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 479
    if-eqz v0, :cond_2d

    .line 480
    const v5, 0x7f0e0098

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 481
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020031

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_vivid_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_7
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 491
    if-eqz v0, :cond_30

    .line 492
    const v5, 0x7f0e008e

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 493
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020032

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_vsco_a4_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_8
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 503
    if-eqz v0, :cond_33

    .line 504
    const v5, 0x7f0e008d

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 505
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020033

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_vsco_f2_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_9
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 515
    if-eqz v0, :cond_36

    .line 516
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    const v5, 0x7f0e0097

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 518
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_gray_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_a
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 531
    if-eqz v0, :cond_39

    .line 532
    const v5, 0x7f0e008f

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 533
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020023

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_blackwhite_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_b
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 543
    if-eqz v0, :cond_3c

    .line 544
    const v5, 0x7f0e0099

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 545
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_sketch_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_c
    :goto_c
    if-eqz v0, :cond_d

    .line 565
    sput v1, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    .line 569
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 570
    if-eqz v0, :cond_45

    .line 571
    const v5, 0x7f0e0092

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 572
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020022

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_big_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_e
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 582
    if-eqz v0, :cond_48

    .line 583
    const v5, 0x7f0e0093

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 584
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020030

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_small_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_f
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 594
    if-eqz v0, :cond_4b

    .line 595
    const v5, 0x7f0e0094

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 596
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_long_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_10
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 606
    if-eqz v0, :cond_4e

    .line 607
    sput v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    .line 608
    const v5, 0x7f0e009a

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 609
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020024

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_fisheye_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_11
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 619
    if-eqz v0, :cond_51

    .line 620
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    const v5, 0x7f0e009b

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 622
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_mosaic_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_12
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 633
    if-eqz v0, :cond_54

    .line 634
    const v5, 0x7f0e009c

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 635
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_mirror_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_13
    :goto_12
    add-int/lit8 v1, v1, 0x1

    .line 645
    if-eqz v0, :cond_57

    .line 646
    const v5, 0x7f0e0095

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 647
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020029

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string v6, "effect_light_tunnel_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_14
    :goto_13
    if-eqz v0, :cond_15

    .line 657
    const/16 v5, 0x12

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    .line 661
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 662
    if-eqz v0, :cond_5a

    .line 663
    sput v1, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    .line 688
    :cond_16
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 689
    if-eqz v0, :cond_65

    .line 690
    sput v1, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 700
    :cond_17
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 701
    if-eqz v0, :cond_69

    .line 702
    sput v1, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    .line 703
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_18
    :goto_16
    const-string v5, "is_camera_replace_higher_cost_effect"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 727
    add-int/lit8 v1, v1, 0x1

    .line 728
    if-eqz v0, :cond_73

    .line 729
    sput v1, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    .line 730
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_19
    :goto_17
    add-int/lit8 v1, v1, 0x1

    .line 753
    if-eqz v0, :cond_7e

    .line 754
    sput v1, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    .line 763
    :cond_1a
    :goto_18
    if-eqz v0, :cond_1b

    .line 764
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    :cond_1b
    move-object v5, p2

    .line 766
    goto/16 :goto_0

    .line 397
    .end local v0    # "addEntry":Z
    .end local v1    # "id":I
    .end local v2    # "initOne":Z
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 409
    .restart local v0    # "addEntry":Z
    .restart local v1    # "id":I
    .restart local v2    # "initOne":Z
    :cond_1d
    if-nez p2, :cond_1e

    .line 410
    new-instance p2, Lcom/android/camera/effect/renders/RenderGroup;

    .end local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    iget v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    invoke-direct {p2, p1, v5}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 411
    .restart local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p3, :cond_1

    if-gez p5, :cond_1

    move-object v5, p2

    goto/16 :goto_0

    .line 412
    :cond_1e
    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, p2

    .line 413
    goto/16 :goto_0

    .line 424
    :cond_1f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_2

    if-nez p3, :cond_20

    if-eqz p5, :cond_20

    if-gez p5, :cond_2

    if-nez v2, :cond_2

    .line 426
    :cond_20
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    goto/16 :goto_2

    .line 435
    :cond_21
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_22

    if-eqz p4, :cond_3

    :cond_22
    if-nez p3, :cond_23

    if-eq p5, v1, :cond_23

    if-gez p5, :cond_3

    if-nez v2, :cond_3

    .line 437
    :cond_23
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 438
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 447
    :cond_24
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_25

    if-eqz p4, :cond_4

    :cond_25
    if-nez p3, :cond_26

    if-eq p5, v1, :cond_26

    if-gez p5, :cond_4

    if-nez v2, :cond_4

    .line 449
    :cond_26
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramClarendonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 450
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 459
    :cond_27
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_28

    if-eqz p4, :cond_5

    :cond_28
    if-nez p3, :cond_29

    if-eq p5, v1, :cond_29

    if-gez p5, :cond_5

    if-nez v2, :cond_5

    .line 461
    :cond_29
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramCremaEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 471
    :cond_2a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_2b

    if-eqz p4, :cond_6

    :cond_2b
    if-nez p3, :cond_2c

    if-eq p5, v1, :cond_2c

    if-gez p5, :cond_6

    if-nez v2, :cond_6

    .line 473
    :cond_2c
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 474
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 483
    :cond_2d
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_2e

    if-eqz p4, :cond_7

    :cond_2e
    if-nez p3, :cond_2f

    if-eq p5, v1, :cond_2f

    if-gez p5, :cond_7

    if-nez v2, :cond_7

    .line 485
    :cond_2f
    new-instance v5, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 495
    :cond_30
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_31

    if-eqz p4, :cond_8

    :cond_31
    if-nez p3, :cond_32

    if-eq p5, v1, :cond_32

    if-gez p5, :cond_8

    if-nez v2, :cond_8

    .line 497
    :cond_32
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/VscoA4EffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 507
    :cond_33
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_34

    if-eqz p4, :cond_9

    :cond_34
    if-nez p3, :cond_35

    if-eq p5, v1, :cond_35

    if-gez p5, :cond_9

    if-nez v2, :cond_9

    .line 509
    :cond_35
    new-instance v5, Lcom/android/camera/effect/renders/VscoF2EffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VscoF2EffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 510
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 520
    :cond_36
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_37

    if-eqz p4, :cond_a

    :cond_37
    if-nez p3, :cond_38

    if-eq p5, v1, :cond_38

    if-gez p5, :cond_a

    if-nez v2, :cond_a

    .line 525
    :cond_38
    new-instance v5, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 535
    :cond_39
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3a

    if-eqz p4, :cond_b

    :cond_3a
    if-nez p3, :cond_3b

    if-eq p5, v1, :cond_3b

    if-gez p5, :cond_b

    if-nez v2, :cond_b

    .line 537
    :cond_3b
    new-instance v5, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 538
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 547
    :cond_3c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3d

    if-eqz p4, :cond_c

    :cond_3d
    if-nez p3, :cond_3e

    if-eq p5, v1, :cond_3e

    if-gez p5, :cond_c

    if-nez v2, :cond_c

    .line 549
    :cond_3e
    if-nez p3, :cond_3f

    if-eq p5, v1, :cond_3f

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 550
    :cond_3f
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_41

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_19
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_42

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_1a
    const/4 v8, 0x0

    invoke-direct {v7, p1, v5, v6, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 554
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 560
    :cond_40
    :goto_1b
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 550
    :cond_41
    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_19

    :cond_42
    new-instance v6, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1a

    .line 555
    :cond_43
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_44

    .line 556
    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1b

    .line 557
    :cond_44
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_40

    .line 558
    new-instance v5, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1b

    .line 574
    :cond_45
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_46

    if-eqz p4, :cond_e

    :cond_46
    if-nez p3, :cond_47

    if-eq p5, v1, :cond_47

    if-gez p5, :cond_e

    if-nez v2, :cond_e

    .line 576
    :cond_47
    new-instance v5, Lcom/android/camera/effect/renders/BigFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BigFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 577
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 586
    :cond_48
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_49

    if-eqz p4, :cond_f

    :cond_49
    if-nez p3, :cond_4a

    if-eq p5, v1, :cond_4a

    if-gez p5, :cond_f

    if-nez v2, :cond_f

    .line 588
    :cond_4a
    new-instance v5, Lcom/android/camera/effect/renders/SmallFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SmallFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 589
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 598
    :cond_4b
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_4c

    if-eqz p4, :cond_10

    :cond_4c
    if-nez p3, :cond_4d

    if-eq p5, v1, :cond_4d

    if-gez p5, :cond_10

    if-nez v2, :cond_10

    .line 600
    :cond_4d
    new-instance v5, Lcom/android/camera/effect/renders/LongFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LongFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 611
    :cond_4e
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_11

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_4f

    if-eqz p4, :cond_11

    :cond_4f
    if-nez p3, :cond_50

    if-eq p5, v1, :cond_50

    if-gez p5, :cond_11

    if-nez v2, :cond_11

    .line 613
    :cond_50
    new-instance v5, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 614
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 624
    :cond_51
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_12

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_52

    if-eqz p4, :cond_12

    :cond_52
    if-nez p3, :cond_53

    if-eq p5, v1, :cond_53

    if-gez p5, :cond_12

    if-nez v2, :cond_12

    .line 626
    :cond_53
    new-instance v5, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 627
    const/4 v2, 0x1

    goto/16 :goto_11

    .line 637
    :cond_54
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_55

    if-eqz p4, :cond_13

    :cond_55
    if-nez p3, :cond_56

    if-eq p5, v1, :cond_56

    if-gez p5, :cond_13

    if-nez v2, :cond_13

    .line 639
    :cond_56
    new-instance v5, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_12

    .line 649
    :cond_57
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_14

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_58

    if-eqz p4, :cond_14

    :cond_58
    if-nez p3, :cond_59

    if-eq p5, v1, :cond_59

    if-gez p5, :cond_14

    if-nez v2, :cond_14

    .line 651
    :cond_59
    new-instance v5, Lcom/android/camera/effect/renders/LightTunnelEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LightTunnelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 652
    const/4 v2, 0x1

    goto/16 :goto_13

    .line 664
    :cond_5a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_16

    if-nez p3, :cond_5b

    if-eq p5, v1, :cond_5b

    if-gez p5, :cond_16

    if-nez v2, :cond_16

    .line 666
    :cond_5b
    if-nez p3, :cond_5c

    if-eq p5, v1, :cond_5c

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 667
    :cond_5c
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_5f

    const/4 v3, 0x1

    .line 669
    .local v3, "matchPartRender0":Z
    :goto_1c
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_60

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_60

    const/4 v4, 0x1

    .line 672
    .local v4, "matchPartRender1":Z
    :goto_1d
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    if-eqz v3, :cond_61

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    move-object v6, v5

    :goto_1e
    if-eqz v4, :cond_62

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_1f
    const/4 v8, 0x0

    invoke-direct {v7, p1, v6, v5, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 676
    if-nez v3, :cond_5d

    if-eqz v4, :cond_5e

    .line 677
    :cond_5d
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 684
    .end local v3    # "matchPartRender0":Z
    .end local v4    # "matchPartRender1":Z
    :cond_5e
    :goto_20
    const/4 v2, 0x1

    goto/16 :goto_14

    .line 667
    :cond_5f
    const/4 v3, 0x0

    goto :goto_1c

    .line 669
    .restart local v3    # "matchPartRender0":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_1d

    .line 672
    .restart local v4    # "matchPartRender1":Z
    :cond_61
    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v6, v5

    goto :goto_1e

    :cond_62
    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1f

    .line 679
    .end local v3    # "matchPartRender0":Z
    .end local v4    # "matchPartRender1":Z
    :cond_63
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_64

    .line 680
    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_20

    .line 681
    :cond_64
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_5e

    .line 682
    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_20

    .line 691
    :cond_65
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_17

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_66

    if-eqz p4, :cond_17

    :cond_66
    if-nez p3, :cond_67

    if-eq p5, v1, :cond_67

    if-gez p5, :cond_17

    if-nez v2, :cond_17

    .line 693
    :cond_67
    if-eqz p4, :cond_68

    new-instance v5, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_21
    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 696
    const/4 v2, 0x1

    goto/16 :goto_15

    .line 693
    :cond_68
    new-instance v5, Lcom/android/camera/effect/renders/GradienterEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_21

    .line 704
    :cond_69
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_18

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez p3, :cond_6a

    if-eq p5, v1, :cond_6a

    if-gez p5, :cond_18

    if-nez v2, :cond_18

    .line 707
    :cond_6a
    if-nez p3, :cond_6b

    if-eq p5, v1, :cond_6b

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 708
    :cond_6b
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_6d

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_22
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_6e

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_23
    const/4 v9, 0x0

    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_6f

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_24
    const/4 v6, 0x0

    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 713
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 721
    :cond_6c
    :goto_25
    const/4 v2, 0x1

    goto/16 :goto_16

    .line 708
    :cond_6d
    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_22

    :cond_6e
    new-instance v6, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_23

    :cond_6f
    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_24

    .line 714
    :cond_70
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_71

    .line 715
    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_25

    .line 716
    :cond_71
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_72

    .line 717
    new-instance v5, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_25

    .line 718
    :cond_72
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_6c

    .line 719
    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_25

    .line 731
    :cond_73
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_19

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_74

    if-eqz p4, :cond_19

    :cond_74
    if-nez p3, :cond_75

    if-eq p5, v1, :cond_75

    if-gez p5, :cond_19

    if-nez v2, :cond_19

    .line 733
    :cond_75
    if-nez p3, :cond_76

    if-eq p5, v1, :cond_76

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 734
    :cond_76
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_78

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_26
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_79

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_27
    const/4 v9, 0x0

    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_7a

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_28
    const/4 v6, 0x0

    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 739
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 747
    :cond_77
    :goto_29
    const/4 v2, 0x1

    goto/16 :goto_17

    .line 734
    :cond_78
    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_26

    :cond_79
    new-instance v6, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_27

    :cond_7a
    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_28

    .line 740
    :cond_7b
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_7c

    .line 741
    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_29

    .line 742
    :cond_7c
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_7d

    .line 743
    new-instance v5, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_29

    .line 744
    :cond_7d
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_77

    .line 745
    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_29

    .line 755
    :cond_7e
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_1a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_7f

    if-eqz p4, :cond_1a

    :cond_7f
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-nez p4, :cond_1a

    if-nez p3, :cond_80

    if-eq p5, v1, :cond_80

    if-gez p5, :cond_1a

    if-nez v2, :cond_1a

    .line 758
    :cond_80
    new-instance v5, Lcom/android/camera/effect/renders/FocusPeakingRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 759
    const/4 v2, 0x1

    goto/16 :goto_18
.end method

.method public getEffectIndexByEntryName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 846
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 247
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 248
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 253
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 254
    return-object v0
.end method

.method public getImageIds()[I
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 259
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v1
.end method

.method public getInvertFlag()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    return-object v0
.end method

.method public getTiltShiftMaskAlpha()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return v0
.end method

.method public hasEffect()Z
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initEffectWeight()V

    .line 100
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 101
    return-void
.end method

.method public isBackGroundBlur()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    sget v2, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayShow()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isEffectPageSelected()Z
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFishEye()Z
    .locals 2

    .prologue
    .line 804
    monitor-enter p0

    .line 805
    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMainFrameDisplay()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 355
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 358
    const/4 v2, 0x1

    .line 362
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needDownScale(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 372
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 375
    const/4 v2, 0x1

    .line 379
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBlurEffect(Z)V
    .locals 2
    .param p1, "blured"    # Z

    .prologue
    const/16 v0, 0x8

    .line 189
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v1, :cond_4

    .line 190
    if-nez p1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 191
    :cond_0
    iget v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ge v0, v1, :cond_3

    .line 192
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 194
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 196
    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 197
    return-void
.end method

.method public setDeviceRotation(ZF)V
    .locals 0
    .param p1, "isLying"    # Z
    .param p2, "rotation"    # F

    .prologue
    .line 774
    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .end local p2    # "rotation":F
    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    .line 775
    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 0
    .param p1, "drawPeaking"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    .line 227
    return-void
.end method

.method public setEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 185
    monitor-exit p0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "point1"    # Landroid/graphics/PointF;
    .param p3, "point2"    # Landroid/graphics/PointF;
    .param p4, "range"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 317
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 1
    .param p1, "invert"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    .line 340
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    .line 348
    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 305
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    .line 306
    return-void
.end method

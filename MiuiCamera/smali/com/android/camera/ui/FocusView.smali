.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureViewListener;
    }
.end annotation


# static fields
.field public static final BIG_INIT_RADIUS:I

.field private static final BIG_LINE_WIDTH:I

.field private static final BIG_MAX_RADIUS:I

.field public static final BIG_RADIUS:I

.field private static final GAP_NUM:F

.field private static final MARGIN:I

.field private static final MAX_SLIDE_DISTANCE:I

.field private static final SMALL_LINE_WIDTH:I

.field private static final SMALL_MAX_RADIUS:I

.field private static final SMALL_MIN_RADIUS:I

.field private static final SMALL_RADIUS:I

.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I

.field private static final TRIANGLE_MAX_DIS:I

.field private static final TRIANGLE_MIN_MARGIN:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBigAlpha:I

.field private mBigPaint:Landroid/graphics/Paint;

.field private mBigRadius:I

.field private mBottomRelative:I

.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mCaptureBitmapBounds:Landroid/graphics/Rect;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field mEVCaptureRatio:F

.field private mEvAdjusted:Z

.field private mEvTriangleDis:I

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mFailTime:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMinusMoonPaint:Landroid/graphics/Paint;

.field private mRelativeLocation:[I

.field private mRotation:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mSlideDistance:I

.field private mSlideStartTime:J

.field private mSmallAlpha:I

.field private mSmallLineWidth:I

.field private mSmallPaint:Landroid/graphics/Paint;

.field private mSmallRadius:I

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 46
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    .line 47
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    .line 48
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    .line 52
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    .line 53
    const v0, 0x422d5c29    # 43.34f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    .line 54
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    .line 56
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    .line 60
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MAX_DIS:I

    .line 85
    const-string v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    .line 86
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    .line 87
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MARGIN:I

    .line 88
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    .line 89
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    .line 90
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    .line 91
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 110
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 111
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 112
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 113
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 114
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 115
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 116
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 117
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 118
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 127
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 128
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 132
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 137
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    .line 168
    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 753
    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 305
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    .line 306
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 337
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 340
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 341
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 342
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 343
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 345
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/FocusView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    return p1
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/FocusView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    return p1
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/FocusView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/FocusView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static synthetic access$4702(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FocusView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic access$816(Lcom/android/camera/ui/FocusView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic access$824(Lcom/android/camera/ui/FocusView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    return v0
.end method

.method private calculateAttribute()V
    .locals 11

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 871
    const/4 v2, 0x0

    .line 872
    .local v2, "ratio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    .line 873
    .local v0, "currentItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    .line 875
    .local v1, "lastItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v3, :pswitch_data_0

    .line 932
    :goto_0
    :pswitch_0
    return-void

    .line 877
    :pswitch_1
    const/4 v2, 0x0

    .line 878
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_0

    .line 879
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v6, v3

    .line 880
    const/high16 v3, 0x40c00000    # 6.0f

    sub-float v4, v7, v1

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 881
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v2

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 882
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 883
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 885
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v8

    mul-float v2, v6, v3

    .line 886
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 887
    mul-float v3, v0, v2

    sub-float v4, v7, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v3, v9

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 888
    const/high16 v3, 0x40f00000    # 7.5f

    mul-float v4, v0, v2

    sub-float v5, v7, v2

    sub-float/2addr v4, v5

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 889
    sub-float v3, v7, v2

    mul-float/2addr v3, v10

    add-float/2addr v3, v9

    mul-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 890
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 895
    :pswitch_2
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_1

    .line 896
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v6, v3

    .line 897
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 898
    sub-float v3, v7, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v6

    add-float/2addr v3, v9

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 899
    const/high16 v3, 0x40f00000    # 7.5f

    sub-float v4, v7, v2

    mul-float/2addr v4, v1

    sub-float/2addr v4, v2

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 900
    mul-float v3, v10, v2

    add-float/2addr v3, v9

    mul-float v4, v6, v1

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 901
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 903
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v8

    mul-float v2, v6, v3

    .line 904
    const/high16 v3, 0x41000000    # 8.0f

    sub-float v4, v7, v0

    mul-float/2addr v4, v2

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 905
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f69fbe7    # 0.914f

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 906
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    sub-float v6, v7, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 907
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 912
    :pswitch_3
    move v2, v0

    .line 913
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 914
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v4, v6, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 915
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 916
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 917
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 919
    :cond_2
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 920
    mul-float v3, v6, v2

    add-float/2addr v3, v9

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 921
    const/high16 v3, 0x40f00000    # 7.5f

    mul-float v4, v10, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 922
    mul-float v3, v6, v2

    add-float/2addr v3, v9

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 923
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 928
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private clearMessages()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 664
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    return-void
.end method

.method private drawCaptureBitmap(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    :cond_0
    return-void
.end method

.method private drawCenterIndicator(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 838
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 839
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 840
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_1

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 843
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 859
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 861
    return-void

    .line 845
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 847
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCaptureBitmap(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 850
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawSun(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 853
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 854
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    .line 591
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v4, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 597
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 598
    .local v3, "rtl":Z
    :goto_1
    if-nez v3, :cond_2

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-lt v4, v5, :cond_3

    :cond_2
    if-eqz v3, :cond_5

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-lt v4, v5, :cond_5

    .line 600
    :cond_3
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 605
    .local v0, "leftx":I
    :goto_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 607
    .local v1, "lefty":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 609
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 611
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 613
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 618
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 620
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 622
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 624
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 627
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 631
    :goto_3
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 597
    .end local v0    # "leftx":I
    .end local v1    # "lefty":I
    .end local v3    # "rtl":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 602
    .restart local v3    # "rtl":Z
    :cond_5
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .restart local v0    # "leftx":I
    goto :goto_2

    .line 629
    .restart local v1    # "lefty":I
    :cond_6
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3
.end method

.method private drawSun(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 971
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 972
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 973
    if-lez v6, :cond_0

    .line 974
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 977
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 979
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 981
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 983
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 972
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 985
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 986
    return-void
.end method

.method private getCurrentAngle()I
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "degree":I
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    .line 938
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 939
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    .line 941
    :cond_0
    const/16 v2, 0x168

    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 956
    :cond_1
    :goto_0
    return v0

    .line 942
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 943
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    .line 944
    .local v1, "relativeDis":I
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v5, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 945
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 946
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 948
    :cond_3
    const/16 v2, 0x168

    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 949
    goto :goto_0

    .end local v1    # "relativeDis":I
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v4, :cond_5

    .line 950
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 951
    const/16 v2, 0x87

    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 952
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_1

    .line 953
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 954
    const/16 v2, 0x87

    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 657
    .local v0, "interpolation":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 658
    const/high16 v0, 0x3f800000    # 1.0f

    .line 660
    :cond_0
    return v0
.end method

.method private getItemByCoordinate()I
    .locals 4

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    .line 701
    .local v0, "item":I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 702
    return v0
.end method

.method private getItemRatio(I)F
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 864
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 865
    .local v0, "itemRatio":F
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    .line 866
    :goto_0
    return v0

    .line 865
    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 989
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 990
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 991
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 992
    .local v0, "distance":D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isStableStart()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSlideBack()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x6

    .line 706
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v0, :cond_0

    .line 708
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    .line 710
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 711
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 393
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 398
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 677
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 678
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, "index":I
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 682
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 539
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 540
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 541
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 542
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 543
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 544
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 545
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 547
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 549
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 719
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 720
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 721
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    .line 731
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 732
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09007c

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 739
    :cond_0
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 685
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 688
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 689
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    .prologue
    .line 696
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    .line 697
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 832
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 835
    return-void
.end method

.method private stopEvAdjust()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 742
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v0, :cond_0

    .line 743
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    const v2, 0x7f09007c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    .line 533
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 535
    :cond_0
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 354
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 355
    return-void
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 6

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 8

    .prologue
    .line 405
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 406
    .local v4, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 408
    .local v3, "min":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 409
    .local v2, "max":I
    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    .line 411
    new-instance v6, Lcom/android/camera/ui/FloatSlideAdapter;

    sget v5, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v6, v3, v2, v5}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v6, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 413
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v5, :cond_0

    .line 414
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 415
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    .line 416
    .local v0, "evValue":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    .line 417
    .local v1, "index":I
    if-gez v1, :cond_3

    .line 418
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_0

    .line 411
    .end local v0    # "evValue":I
    .end local v1    # "index":I
    :cond_2
    sub-int v5, v2, v3

    int-to-float v5, v5

    sget v7, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v5, v7

    goto :goto_1

    .line 420
    .restart local v0    # "evValue":I
    .restart local v1    # "index":I
    :cond_3
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    .line 565
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 571
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 572
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 573
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCenterIndicator(Landroid/graphics/Canvas;)V

    .line 583
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 585
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 552
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 555
    sub-int v0, p5, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 556
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 557
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    .line 561
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 433
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 434
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 428
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v3

    if-nez v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 363
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 364
    .local v0, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 365
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v3, :cond_2

    .line 366
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 367
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 371
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 373
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v3, :cond_4

    .line 374
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 377
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v3, :cond_5

    .line 378
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 381
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v3, :cond_6

    .line 382
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 383
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 388
    :cond_6
    if-nez v0, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 459
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 447
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 451
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 452
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    .line 453
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 455
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 646
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 647
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 648
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 649
    return-void
.end method

.method public showFail()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 514
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 516
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 517
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 518
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 519
    if-eqz v0, :cond_0

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 523
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 525
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 527
    .end local v0    # "animating":Z
    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 468
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 469
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 470
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 471
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 472
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 475
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 477
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 479
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 491
    return-void

    .line 481
    :cond_0
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 482
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 483
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 484
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 485
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 487
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 495
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_2

    .line 496
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 497
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 498
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 499
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 500
    if-eqz v0, :cond_0

    .line 503
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 504
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 510
    .end local v0    # "animating":Z
    :cond_2
    return-void
.end method

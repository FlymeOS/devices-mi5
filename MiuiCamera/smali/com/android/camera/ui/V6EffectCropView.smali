.class public Lcom/android/camera/ui/V6EffectCropView;
.super Landroid/view/View;
.source "V6EffectCropView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final ANIMATE_START_RADIUS:I

.field private static final ANIMATE_START_RANGE:I

.field private static final CIRCLE_RESIZE_TOUCH_TOLERANCE:I

.field private static final CORNER_BALL_RADIUS:I

.field private static final DEFAULT_RADIUS:I

.field private static final DEFAULT_RANGE:I

.field private static final MIN_CROP_WIDTH_HEIGHT:I

.field private static final MIN_DIS_FOR_MOVE_POINT:F

.field private static final MIN_DIS_FOR_SLOPE:I

.field private static final MIN_RANGE:I

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private mAnimateHandler:Landroid/os/Handler;

.field private mAnimateRadius:I

.field private mAnimateRangeWidth:I

.field private mAnimateThread:Landroid/os/HandlerThread;

.field private mAnimationStartRadius:I

.field private mAnimationStartRange:I

.field private mAnimationStartTime:J

.field private mAnimationTotalTime:J

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mCenterLineSquare:I

.field private final mCornerPaint:Landroid/graphics/Paint;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mDefaultCircleBounds:Landroid/graphics/RectF;

.field private final mDefaultRectBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private final mEffectPoint1:Landroid/graphics/PointF;

.field private final mEffectPoint2:Landroid/graphics/PointF;

.field private final mEffectRect:Landroid/graphics/RectF;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCircle:Z

.field private mIsInTapSlop:Z

.field private mIsRect:Z

.field private mIsTiltShift:Z

.field private mLastMoveDis:D

.field private mLastX:F

.field private mLastY:F

.field private mMaxRange:I

.field private mMovingEdges:I

.field private mNormalizedWidth:F

.field private final mPoint1:Landroid/graphics/Point;

.field private final mPoint2:Landroid/graphics/Point;

.field private mRadius:I

.field private mRangeWidth:I

.field private mTapSlop:I

.field private mTiltShiftMaskAlive:Z

.field private mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTiltShiftMaskHandler:Landroid/os/Handler;

.field private final mTouchCenter:Landroid/graphics/Point;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x41200000    # 10.0f

    .line 43
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    .line 44
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    .line 45
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    .line 46
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    .line 47
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    .line 48
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    .line 49
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    .line 50
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x6

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    .line 51
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    .line 52
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    .line 56
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 66
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    .line 76
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    .line 77
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    .line 78
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    .line 79
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    .line 82
    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    .line 83
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 84
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    .line 92
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 93
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    .line 94
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    .line 103
    new-instance v1, Lcom/android/camera/ui/V6EffectCropView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6EffectCropView$1;-><init>(Lcom/android/camera/ui/V6EffectCropView;)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    .line 124
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 128
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    .line 130
    const v1, 0x7f05001a

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 132
    const v1, 0x7f05001b

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Keyframe;

    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    return-void

    .line 121
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EffectCropView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/ui/V6EffectCropView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/V6EffectCropView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/ui/V6EffectCropView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    return v0
.end method

.method private computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 11
    .param p1, "point1"    # Landroid/graphics/Point;
    .param p2, "point2"    # Landroid/graphics/Point;

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v8

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    if-ge v8, v9, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v5, v8

    .line 579
    .local v5, "w":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v0, v8

    .line 581
    .local v0, "h":I
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_2

    .line 582
    iget v8, p1, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    .line 583
    .local v6, "x":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Point;->set(II)V

    .line 584
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v6, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 587
    .end local v6    # "x":I
    :cond_2
    iget v8, p1, Landroid/graphics/Point;->y:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ne v8, v9, :cond_3

    .line 588
    iget v8, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result v7

    .line 589
    .local v7, "y":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Point;->set(II)V

    .line 590
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v5, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 593
    .end local v7    # "y":I
    :cond_3
    const/4 v8, 0x2

    new-array v2, v8, [Landroid/graphics/Point;

    .line 594
    .local v2, "tmpPoint":[Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 595
    .local v3, "validIndex":I
    iget v8, p2, Landroid/graphics/Point;->y:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p2, Landroid/graphics/Point;->x:I

    iget v10, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 598
    .local v1, "slope":F
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 599
    .restart local v6    # "x":I
    if-ltz v6, :cond_4

    if-gt v6, v5, :cond_4

    .line 600
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .local v4, "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 603
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_4
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 604
    if-ltz v6, :cond_5

    if-gt v6, v5, :cond_5

    .line 605
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 608
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_5
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v7, v8

    .line 609
    .restart local v7    # "y":I
    if-ltz v7, :cond_6

    if-gt v7, v0, :cond_6

    const/4 v8, 0x0

    invoke-direct {p0, v2, v8, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 610
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 613
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_6
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    sub-int v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 614
    if-ltz v7, :cond_8

    if-gt v7, v0, :cond_8

    invoke-direct {p0, v2, v5, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 615
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    .line 617
    :goto_1
    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    .line 618
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-direct {v8, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v8, v2, v4

    .line 620
    :goto_2
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    sget v8, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-direct {p0, v9, v10}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 622
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 623
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    :cond_7
    move v3, v4

    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    goto :goto_2

    :cond_8
    move v4, v3

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    goto :goto_1
.end method

.method private computePointWithDistance(I)Landroid/graphics/Point;
    .locals 6
    .param p1, "distance"    # I

    .prologue
    .line 645
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 646
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_0

    .line 647
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 656
    :goto_0
    return-object v3

    .line 648
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ne v4, v5, :cond_1

    .line 649
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 651
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 652
    .local v0, "centerDistance":F
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v1, v4

    .line 653
    .local v1, "deltaX":I
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v2, v4

    .line 654
    .local v2, "deltaY":I
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 200
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 202
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_7

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 206
    .local v12, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 207
    .local v15, "right":F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_3

    cmpg-float v2, v12, v15

    if-gez v2, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 215
    .end local v12    # "left":F
    .end local v15    # "right":F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 217
    .local v17, "top":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 218
    .local v8, "bottom":F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    cmpg-float v2, v17, v8

    if-gez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 226
    .end local v8    # "bottom":F
    .end local v17    # "top":F
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_2

    .line 227
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 271
    :cond_2
    :goto_4
    return-void

    .line 209
    .restart local v12    # "left":F
    .restart local v15    # "right":F
    :cond_3
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_0

    .line 218
    .end local v12    # "left":F
    .end local v15    # "right":F
    .restart local v8    # "bottom":F
    .restart local v17    # "top":F
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 220
    :cond_6
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    .line 229
    .end local v8    # "bottom":F
    .end local v17    # "top":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz v2, :cond_9

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    .line 233
    .local v9, "centerX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 235
    .local v10, "centerY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v13, v2, v3

    .line 236
    .local v13, "radius":F
    mul-float v14, v13, v13

    .line 237
    .local v14, "radiusSquare":F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v13

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    mul-float v16, v2, v3

    .line 239
    .local v16, "toleranceSquare":F
    sub-float v2, p1, v9

    sub-float v3, p1, v9

    mul-float/2addr v2, v3

    sub-float v3, p2, v10

    sub-float v4, p2, v10

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 242
    .local v11, "distanceSquare":F
    cmpl-float v2, v11, v14

    if-lez v2, :cond_8

    cmpg-float v2, v11, v16

    if-gtz v2, :cond_8

    .line 243
    const/16 v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_2

    .line 248
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_4

    .line 251
    .end local v9    # "centerX":F
    .end local v10    # "centerY":F
    .end local v11    # "distanceSquare":F
    .end local v13    # "radius":F
    .end local v14    # "radiusSquare":F
    .end local v16    # "toleranceSquare":F
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    .line 253
    new-instance v19, Landroid/graphics/Point;

    move/from16 v0, p1

    float-to-int v2, v0

    move/from16 v0, p2

    float-to-int v3, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 254
    .local v19, "touchpoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 255
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v3, v3, 0x10

    if-ge v2, v3, :cond_a

    .line 257
    const/16 v2, 0x101

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_4

    .line 258
    :cond_a
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v3, v3, 0x10

    if-ge v2, v3, :cond_b

    .line 260
    const/16 v2, 0x102

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_4

    .line 262
    :cond_b
    new-instance v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v5, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v6, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v6, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v18

    .line 263
    .local v18, "touchDistance":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    cmpg-float v2, v18, v2

    if-gez v2, :cond_c

    .line 264
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_4

    .line 266
    :cond_c
    move/from16 v0, v18

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    .line 267
    const/16 v2, 0x104

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_4
.end method

.method private getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "point1"    # Landroid/graphics/PointF;
    .param p4, "point2"    # Landroid/graphics/PointF;
    .param p5, "segment"    # Z

    .prologue
    .line 557
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 558
    .local v7, "x1":F
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/PointF;->y:F

    .line 559
    .local v9, "y1":F
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 560
    .local v8, "x2":F
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/PointF;->y:F

    .line 562
    .local v10, "y2":F
    cmpl-float v11, v7, v8

    if-nez v11, :cond_0

    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    .line 573
    :goto_0
    return v11

    .line 563
    :cond_0
    cmpl-float v11, v9, v10

    if-nez v11, :cond_1

    sub-float v11, p2, v9

    sub-float v12, p2, v9

    mul-float/2addr v11, v12

    goto :goto_0

    .line 564
    :cond_1
    sub-float v11, v8, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float v2, v11, v12

    .line 565
    .local v2, "cross":F
    if-eqz p5, :cond_2

    float-to-double v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v11, v12, v14

    if-gtz v11, :cond_2

    .line 566
    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, p2, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0

    .line 567
    :cond_2
    sub-float v11, v8, v7

    sub-float v12, v8, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, v10, v9

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 568
    .local v3, "d2":F
    if-eqz p5, :cond_3

    cmpl-float v11, v2, v3

    if-ltz v11, :cond_3

    .line 569
    sub-float v11, p1, v8

    sub-float v12, p1, v8

    mul-float/2addr v11, v12

    sub-float v12, p2, v10

    sub-float v13, p2, v10

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0

    .line 570
    :cond_3
    div-float v6, v2, v3

    .line 571
    .local v6, "r":F
    sub-float v11, v8, v7

    mul-float/2addr v11, v6

    add-float v4, v7, v11

    .line 572
    .local v4, "px":F
    sub-float v11, v10, v9

    mul-float/2addr v11, v6

    add-float v5, v9, v11

    .line 573
    .local v5, "py":F
    sub-float v11, p1, v4

    sub-float v12, p1, v4

    mul-float/2addr v11, v12

    sub-float v12, v5, p2

    sub-float v13, v5, p2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0
.end method

.method private hideTiltShiftMask()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$2;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 698
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "animateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    .line 699
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 700
    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$3;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$3;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    .line 738
    :cond_1
    return-void
.end method

.method private static isCircle(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 418
    sget v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContained([Landroid/graphics/Point;II)Z
    .locals 6
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 628
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 629
    move-object v0, p1

    .local v0, "arr$":[Landroid/graphics/Point;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 630
    .local v1, "exist":Landroid/graphics/Point;
    if-nez v1, :cond_1

    .line 640
    .end local v0    # "arr$":[Landroid/graphics/Point;
    .end local v1    # "exist":Landroid/graphics/Point;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 635
    .restart local v0    # "arr$":[Landroid/graphics/Point;
    .restart local v1    # "exist":Landroid/graphics/Point;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    iget v5, v1, Landroid/graphics/Point;->x:I

    if-eq v5, p2, :cond_2

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-ne v5, p3, :cond_3

    .line 636
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 629
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isRect(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 414
    invoke-static {p0}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTiltShift(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 409
    sget v0, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveCircle(FFFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    const/4 v7, 0x0

    .line 303
    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    .line 305
    cmpl-float v5, p3, v7

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 307
    :goto_0
    cmpl-float v5, p4, v7

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 309
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, p3, p4}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 326
    return-void

    .line 305
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    goto :goto_0

    .line 307
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto :goto_1

    .line 312
    :cond_2
    sget v5, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 313
    .local v3, "minRadius":F
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v2, v5, v6

    .line 315
    .local v2, "maxRadius":F
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 316
    .local v0, "centerX":F
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 318
    .local v1, "centerY":F
    sub-float v5, p1, v0

    sub-float v6, p1, v0

    mul-float/2addr v5, v6

    sub-float v6, p2, v1

    sub-float v7, p2, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 320
    .local v4, "newRadius":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 321
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 322
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    sub-float v7, v1, v4

    add-float v8, v0, v4

    add-float v9, v1, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2
.end method

.method private moveCrop(FFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 329
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_1

    .line 330
    new-instance v3, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v3, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v4, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 331
    .local v6, "currentDis":D
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iget-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    sub-double v2, v6, v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 332
    iput-wide v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    .line 339
    .end local v6    # "currentDis":D
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 340
    return-void

    .line 333
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_3

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 335
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 336
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    float-to-int v3, p4

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    float-to-int v4, p4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v4, 0x0

    .line 274
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 276
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 278
    :goto_0
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 280
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 299
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 300
    return-void

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 283
    :cond_2
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v1, v2

    .line 284
    .local v1, "minWidth":F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v0, v2

    .line 285
    .local v0, "minHeight":F
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 288
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 289
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 291
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 294
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 297
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2
.end method

.method private normalizeRangeWidth()V
    .locals 7

    .prologue
    .line 179
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->computePointWithDistance(I)Landroid/graphics/Point;

    move-result-object v6

    .line 180
    .local v6, "point":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    .line 182
    return-void
.end method

.method private onCropChange()V
    .locals 7

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 161
    .local v1, "w":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 162
    .local v0, "h":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    .line 170
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V

    .line 171
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/effect/EffectController;->setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 173
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 176
    :cond_0
    return-void
.end method

.method private showTiltShiftMask()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method private squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p1, "point1"    # Landroid/graphics/Point;
    .param p2, "point2"    # Landroid/graphics/Point;

    .prologue
    .line 660
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 661
    .local v0, "dx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 662
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 489
    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    .line 490
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 491
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->clearEffectAttribute()V

    .line 492
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 494
    :cond_0
    return-void
.end method

.method public isMoved()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 519
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->initHandler()V

    .line 514
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 743
    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    .line 744
    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    .line 746
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    .line 538
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v3, p2, 0x3

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-int/lit8 v4, p1, 0x5

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    mul-int/lit8 v5, p2, 0x5

    div-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    int-to-float v0, v1

    .line 150
    .local v0, "radius":F
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    div-float/2addr v2, v6

    sub-float/2addr v2, v0

    int-to-float v3, p2

    div-float/2addr v3, v6

    sub-float/2addr v3, v0

    int-to-float v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    int-to-float v5, p2

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v2, 0x0

    div-int/lit8 v3, p2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Point;->set(II)V

    .line 154
    mul-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    .line 155
    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    :goto_1
    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 156
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 157
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 155
    :cond_1
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    goto :goto_1
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    iget-boolean v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v6, :cond_0

    .line 388
    :goto_0
    return v4

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 346
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 348
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 388
    goto :goto_0

    .line 350
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->detectMovingEdges(FF)V

    .line 351
    iput-boolean v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    .line 352
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 353
    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 357
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v0, v2, v6

    .line 358
    .local v0, "deltaX":F
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v6

    .line 359
    .local v1, "deltaY":F
    iget-boolean v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    int-to-float v6, v6

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 360
    iput-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    .line 363
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v4, :cond_1

    .line 364
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v4, :cond_3

    .line 365
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v4, :cond_4

    .line 366
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v4, v6}, Lcom/android/camera/ui/V6EffectCropView;->moveEdges(FF)V

    .line 373
    :cond_3
    :goto_2
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 374
    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 367
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz v4, :cond_5

    .line 368
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/camera/ui/V6EffectCropView;->moveCircle(FFFF)V

    goto :goto_2

    .line 370
    :cond_5
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/camera/ui/V6EffectCropView;->moveCrop(FFFF)V

    goto :goto_2

    .line 381
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :pswitch_3
    iput v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 382
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeTiltShiftMask()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 554
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    .line 405
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    .line 406
    return-void
.end method

.method public show(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 422
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isRect(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isCircle(I)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 424
    :cond_0
    iput-boolean v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    .line 425
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 426
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 427
    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isRect(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    .line 428
    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isCircle(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    .line 429
    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsTiltShift:Z

    .line 430
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsTiltShift:Z

    if-eqz v2, :cond_4

    .line 431
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Point;->set(II)V

    .line 432
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 433
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 434
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    .line 437
    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    .line 438
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    .line 439
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    .line 440
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    .line 441
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    .line 443
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 444
    .local v0, "centerX":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 445
    .local v1, "centerY":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 448
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    .line 449
    sget v2, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-ne v2, p1, :cond_3

    .line 450
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 460
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 461
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 463
    :cond_2
    return-void

    .line 451
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :cond_3
    sget v2, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne v2, p1, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 457
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 458
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Lcom/android/camera/ui/V6EffectCropView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    .line 498
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 499
    return-void
.end method

.method public updateVisible(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 503
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_0
.end method

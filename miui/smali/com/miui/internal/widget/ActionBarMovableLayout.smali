.class public Lcom/miui/internal/widget/ActionBarMovableLayout;
.super Lcom/miui/internal/widget/ActionBarOverlayLayout;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;

.field private static final hm:Z


# instance fields
.field private final fy:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private qA:Z

.field private qB:Z

.field private qC:Landroid/view/VelocityTracker;

.field private qD:Lmiui/app/ActionBar$OnScrollListener;

.field private qm:Landroid/view/View;

.field private qn:Landroid/widget/OverScroller;

.field private qo:I

.field private qp:Z

.field private qq:I

.field private qr:I

.field private final qs:I

.field private final qt:I

.field private qu:I

.field private qv:I

.field private qw:I

.field private qx:I

.field private qy:I

.field private qz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qr:I

    .line 61
    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    .line 65
    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    .line 69
    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qy:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qA:Z

    .line 84
    sget-object v0, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout:[I

    sget v1, Lcom/miui/internal/R$attr;->actionBarMovableLayoutStyle:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    .line 88
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qv:I

    .line 92
    :cond_0
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollRange:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    .line 93
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->fy:I

    .line 98
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    .line 99
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qs:I

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qt:I

    .line 102
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOverScrollMode(I)V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 628
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    if-ne v1, v2, :cond_0

    .line 629
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 630
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 632
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 636
    :cond_0
    return-void

    .line 629
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aV()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private aW()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    .line 419
    :cond_0
    return-void
.end method

.method private aX()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    .line 426
    :cond_0
    return-void
.end method

.method private aZ()Z
    .locals 3

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aY()V

    .line 641
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 643
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qy:I

    if-eq v1, v2, :cond_0

    .line 644
    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qy:I

    .line 645
    const/4 v0, 0x1

    .line 649
    :cond_0
    return v0
.end method

.method private b(Landroid/view/View;II)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v2, v1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v3, v1

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 398
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    if-ne p1, v5, :cond_2

    .line 399
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ActionBarContainer;->getTop()I

    move-result v5

    .line 400
    add-int/2addr v2, v5

    .line 401
    add-int/2addr v1, v5

    .line 404
    :cond_2
    if-lt p3, v2, :cond_0

    if-ge p3, v1, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method aY()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    .line 431
    return-void
.end method

.method protected applyTranslationY(F)V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aY()V

    .line 610
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 613
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    .line 277
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 279
    if-eq v0, v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 281
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 282
    sub-int/2addr v2, v0

    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qB:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    .line 289
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qB:Z

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    .line 493
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qt:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 494
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected fling(I)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 503
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 504
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qB:Z

    .line 507
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidate()V

    .line 508
    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qv:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollRange()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    return v0
.end method

.method public getScrollStart()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qx:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 437
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 447
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qx:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 451
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected motionToTranslation(F)F
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qv:I

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 597
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aY()V

    .line 598
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 602
    :cond_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    sget v2, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 166
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 117
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_1
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 166
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 127
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aV()V

    .line 128
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 129
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_1

    .line 138
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    .line 140
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aW()V

    .line 141
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_1

    .line 153
    :pswitch_3
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 155
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aX()V

    .line 156
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 456
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 461
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qz:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aZ()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    .line 462
    :goto_0
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qz:Z

    if-nez v2, :cond_2

    .line 463
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    if-gez v2, :cond_1

    .line 464
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    .line 467
    :cond_1
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    .line 468
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qz:Z

    .line 471
    :cond_2
    if-eqz v0, :cond_3

    .line 472
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 474
    :cond_3
    return-void

    .line 461
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .prologue
    .line 331
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 333
    iput p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    .line 339
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 342
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qs:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 343
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    neg-int v0, v0

    int-to-float v0, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v2

    const/16 v2, 0x1f4

    invoke-interface {v1, v0, v2}, Lmiui/app/ActionBar$OnScrollListener;->onFling(FI)V

    .line 348
    :cond_0
    return-void
.end method

.method protected onScroll(F)V
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 581
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qr:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lmiui/app/ActionBar$OnScrollListener;->onScroll(IF)V

    .line 584
    :cond_0
    return-void
.end method

.method protected onScrollBegin()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStartScroll()V

    .line 576
    :cond_0
    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qr:I

    .line 589
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStopScroll()V

    .line 592
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aW()V

    .line 172
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v1, v9

    .line 270
    :cond_1
    return v1

    .line 181
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 182
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    goto :goto_0

    .line 187
    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    if-eqz v0, :cond_3

    .line 188
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 189
    if-eq v0, v11, :cond_1

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 198
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 199
    sub-float v0, v10, v0

    float-to-int v2, v0

    .line 200
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 201
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 202
    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 204
    iput v10, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    if-nez v0, :cond_2

    .line 208
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    .line 209
    iput v11, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 211
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iput-boolean v9, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    .line 219
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->aW()V

    .line 220
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 221
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    if-eqz v0, :cond_0

    .line 230
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qp:Z

    .line 231
    iput v11, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 233
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qs:I

    if-le v2, v3, :cond_4

    .line 240
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->fling(I)V

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 243
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->invalidate()V

    goto/16 :goto_0

    .line 246
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    goto/16 :goto_0

    .line 257
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    goto/16 :goto_0

    .line 264
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->a(Landroid/view/MotionEvent;)V

    .line 265
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollMode()I

    move-result v3

    .line 301
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result v4

    if-le v2, v4, :cond_2

    move v2, v0

    .line 303
    :goto_0
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_3

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    .line 306
    :goto_1
    add-int v3, p4, p2

    .line 307
    if-nez v2, :cond_1

    move p8, v1

    .line 313
    :cond_1
    add-int v2, p8, p6

    .line 316
    if-le v3, v2, :cond_4

    .line 324
    :goto_2
    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 326
    return v0

    :cond_2
    move v2, v1

    .line 301
    goto :goto_0

    :cond_3
    move v2, v1

    .line 303
    goto :goto_1

    .line 319
    :cond_4
    if-gez v3, :cond_5

    move v2, v1

    .line 321
    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v3

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0

    .prologue
    .line 351
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qw:I

    .line 352
    return-void
.end method

.method public setMotionY(I)V
    .locals 1

    .prologue
    .line 653
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    .line 654
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 655
    return-void
.end method

.method public setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    .line 374
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 1

    .prologue
    .line 355
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qv:I

    .line 358
    :cond_0
    return-void
.end method

.method public setScrollRange(I)V
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qu:I

    .line 366
    return-void
.end method

.method public setScrollStart(I)V
    .locals 0

    .prologue
    .line 377
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qx:I

    .line 378
    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qA:Z

    .line 386
    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 511
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qo:I

    .line 512
    if-ne v2, v3, :cond_0

    .line 569
    :goto_0
    return v0

    .line 516
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 517
    if-ne v2, v3, :cond_1

    .line 518
    sget-object v1, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v2, "invalid pointer index"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 523
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 525
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v2, v4, v2

    float-to-int v5, v2

    .line 526
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 527
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v7, v2

    .line 529
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    float-to-int v8, v3

    float-to-int v9, v4

    invoke-direct {p0, v2, v8, v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->b(Landroid/view/View;II)Z

    move-result v2

    .line 530
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qm:Landroid/view/View;

    float-to-int v9, v3

    float-to-int v10, v4

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/internal/widget/ActionBarMovableLayout;->b(Landroid/view/View;II)Z

    move-result v8

    .line 532
    if-nez v2, :cond_2

    if-eqz v8, :cond_5

    :cond_2
    move v2, v1

    .line 535
    :goto_1
    if-eqz v2, :cond_9

    .line 536
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->fy:I

    if-le v6, v2, :cond_9

    if-le v6, v7, :cond_9

    .line 538
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    if-nez v2, :cond_7

    .line 539
    if-gez v5, :cond_6

    move v2, v0

    .line 553
    :goto_2
    if-eqz v2, :cond_4

    .line 554
    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 555
    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 557
    if-lez v5, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qr:I

    .line 559
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_4

    .line 561
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    move v0, v2

    .line 569
    goto :goto_0

    :cond_5
    move v2, v0

    .line 532
    goto :goto_1

    .line 542
    :cond_6
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v2}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 543
    goto :goto_2

    .line 546
    :cond_7
    if-lez v5, :cond_8

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v6

    if-lt v2, v6, :cond_8

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qD:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v2}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 548
    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_2

    :cond_9
    move v2, v0

    goto :goto_2
.end method

.method protected springBack()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qA:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    .line 618
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    div-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    sub-int v4, v0, v2

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qn:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    const/16 v5, 0x320

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 620
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 622
    :cond_0
    return-void

    .line 618
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qq:I

    neg-int v4, v0

    goto :goto_0
.end method

.class public Lmiui/widget/TriggerViewDrawer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TriggerViewDrawer$b;,
        Lmiui/widget/TriggerViewDrawer$c;,
        Lmiui/widget/TriggerViewDrawer$a;,
        Lmiui/widget/TriggerViewDrawer$ScrollableView;,
        Lmiui/widget/TriggerViewDrawer$TriggerListener;,
        Lmiui/widget/TriggerViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TriggerViewDrawer"

.field private static final XY:Z = false

.field private static final Zl:I = 0x0

.field private static final Zm:I = 0x1

.field private static final Zn:I = 0x2

.field private static final Zo:I = 0x0

.field private static final Zp:I = 0x1

.field private static final Zq:I = 0x2

.field private static final Zr:F = 2.0f


# instance fields
.field private Md:Z

.field private XZ:I

.field private Ya:I

.field private Yb:I

.field private Yc:Landroid/view/View;

.field private Yf:Landroid/graphics/drawable/Drawable;

.field private Yg:I

.field private Yi:I

.field private Ym:F

.field private Yn:F

.field private ZB:Z

.field private ZC:Landroid/view/View;

.field private ZD:I

.field private ZE:I

.field private ZF:Z

.field private ZG:Z

.field private Zs:I

.field private Zt:Landroid/view/View;

.field private Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

.field private Zv:Landroid/view/View;

.field private Zw:I

.field private Zx:I

.field private Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

.field private Zz:Lmiui/widget/TriggerViewDrawer$TriggerListener;

.field private fA:F

.field private fy:I

.field private mContentView:Landroid/view/View;

.field private qC:Landroid/view/VelocityTracker;

.field private vB:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 129
    sget v0, Lmiui/R$attr;->triggerViewDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->fy:I

    .line 136
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->vB:Landroid/widget/Scroller;

    .line 137
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    .line 139
    sget-object v0, Lmiui/R$styleable;->TriggerViewDrawer:[I

    sget v1, Lmiui/R$style;->Widget_TriggerViewDrawer:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_contentView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->XZ:I

    .line 142
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_targetView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Ya:I

    .line 143
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Ya:I

    if-nez v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_scrollableView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Yb:I

    .line 148
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_triggerView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Zs:I

    .line 149
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_triggerDistance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    .line 150
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_scrollDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Yg:I

    .line 154
    :cond_1
    sget v1, Lmiui/R$styleable;->TriggerViewDrawer_dragEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/TriggerViewDrawer;->Md:Z

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 448
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 449
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 450
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 451
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 1

    .prologue
    .line 439
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 441
    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 442
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 443
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 472
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-le v0, v1, :cond_0

    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v1

    .line 479
    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Yg:I

    if-lez v2, :cond_1

    .line 480
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/widget/TriggerViewDrawer;->Yg:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 481
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->Yf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Yg:I

    sub-int/2addr v0, v2

    .line 484
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 485
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 486
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private az(I)V
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-gtz v0, :cond_0

    .line 432
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 434
    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 435
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fo()V

    .line 436
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    .line 493
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 494
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 495
    if-ge v0, v1, :cond_0

    .line 496
    const/4 v0, 0x1

    .line 508
    :goto_0
    return v0

    .line 497
    :cond_0
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-le v0, v1, :cond_1

    .line 498
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 500
    :cond_1
    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v2

    .line 502
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 505
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 506
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 507
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private fm()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fn()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 614
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 615
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 616
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v1, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerClose(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_0

    .line 620
    :cond_2
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-ne v0, v1, :cond_3

    .line 621
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerOpen(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_0

    .line 623
    :cond_3
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v1, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    goto :goto_0
.end method

.method private fo()V
    .locals 5

    .prologue
    .line 630
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zz:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 631
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    sub-int/2addr v0, v1

    .line 632
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    sub-int/2addr v1, v2

    .line 633
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->Zz:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-interface {v2, p0, v3}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    .line 634
    if-lt v1, v0, :cond_1

    .line 635
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    .line 637
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zz:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerOpen(Lmiui/widget/TriggerViewDrawer;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    goto :goto_0
.end method

.method private g(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 412
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 414
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-le v0, v1, :cond_0

    .line 415
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    .line 419
    :goto_0
    add-float/2addr v0, p1

    .line 420
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 421
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 425
    :goto_1
    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->az(I)V

    .line 426
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 427
    return-void

    .line 417
    :cond_0
    int-to-float v0, v0

    goto :goto_0

    .line 423
    :cond_1
    float-to-int v0, v0

    goto :goto_1
.end method

.method private o(II)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 393
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 395
    const/4 v1, 0x2

    new-array v3, v1, [Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    aput-object v4, v3, v1

    .line 396
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 397
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 401
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 402
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    :goto_1
    return-object v0

    .line 396
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private p(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Z

    .line 456
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    .line 457
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->closeDrawer(Z)V

    .line 570
    return-void
.end method

.method public closeDrawer(Z)V
    .locals 2

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 578
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 579
    neg-int v1, v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    .line 585
    :goto_0
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->az(I)V

    .line 582
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fn()V

    .line 583
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 516
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 519
    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->az(I)V

    .line 520
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->postInvalidateOnAnimation()V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Z

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->ZF:Z

    .line 523
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fn()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Md:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fm()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-gtz v0, :cond_0

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    if-nez v0, :cond_3

    .line 242
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 385
    :cond_2
    :goto_0
    return v2

    .line 245
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_1
    :pswitch_0
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    if-ne v0, v3, :cond_1d

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 377
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-ne v0, v3, :cond_2

    .line 378
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    .line 248
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 249
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 250
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Ym:F

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->fA:F

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yn:F

    .line 252
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Ym:F

    float-to-int v0, v0

    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->Yn:F

    float-to-int v4, v4

    invoke-direct {p0, v0, v4}, Lmiui/widget/TriggerViewDrawer;->o(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZC:Landroid/view/View;

    .line 253
    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 254
    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 255
    iput-boolean v1, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    goto :goto_1

    .line 258
    :pswitch_2
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 259
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 261
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    move v0, v1

    .line 264
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 266
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Ym:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 267
    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->Yn:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 268
    iget v6, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    if-ne v6, v2, :cond_5

    .line 269
    iget v6, p0, Lmiui/widget/TriggerViewDrawer;->fy:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_e

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    .line 271
    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 283
    :cond_5
    :goto_2
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->fA:F

    sub-float v4, v5, v0

    .line 284
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    if-ne v0, v3, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-gez v0, :cond_6

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_d

    .line 285
    :cond_6
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 286
    cmpl-float v6, v4, v7

    if-lez v6, :cond_10

    .line 289
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v6, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    invoke-interface {v0}, Lmiui/widget/TriggerViewDrawer$ScrollableView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_8
    move v0, v3

    .line 303
    :cond_9
    :goto_3
    if-ne v0, v2, :cond_13

    .line 304
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-eq v1, v3, :cond_a

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ZC:Landroid/view/View;

    iget-object v6, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    if-ne v1, v6, :cond_b

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-nez v1, :cond_b

    .line 308
    :cond_a
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-direct {p0, v1, p1, v8}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 310
    :cond_b
    invoke-direct {p0, v4}, Lmiui/widget/TriggerViewDrawer;->g(F)V

    .line 311
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fn()V

    .line 323
    :cond_c
    :goto_4
    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 324
    iput v5, p0, Lmiui/widget/TriggerViewDrawer;->fA:F

    .line 327
    :cond_d
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 272
    :cond_e
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->fy:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_5

    .line 274
    iput v3, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 275
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 277
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ZC:Landroid/view/View;

    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne v0, v4, :cond_5

    .line 278
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, v8}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    goto :goto_2

    :cond_f
    move v0, v2

    .line 293
    goto :goto_3

    .line 295
    :cond_10
    cmpg-float v6, v4, v7

    if-gez v6, :cond_9

    .line 296
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-nez v0, :cond_12

    :cond_11
    move v0, v2

    .line 297
    goto :goto_3

    :cond_12
    move v0, v3

    .line 299
    goto :goto_3

    .line 312
    :cond_13
    if-ne v0, v3, :cond_c

    .line 313
    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-eq v4, v2, :cond_14

    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->ZC:Landroid/view/View;

    iget-object v6, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    if-eq v4, v6, :cond_15

    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    if-nez v4, :cond_15

    .line 317
    :cond_14
    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-direct {p0, v4, p1, v1}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    goto :goto_4

    .line 319
    :cond_15
    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 331
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 333
    iget v5, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    if-ne v4, v5, :cond_17

    .line 334
    if-nez v0, :cond_16

    move v1, v2

    .line 335
    :cond_16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yi:I

    .line 336
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Ym:F

    .line 337
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Yn:F

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->fA:F

    .line 339
    :cond_17
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 342
    :pswitch_4
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 343
    iget-boolean v4, p0, Lmiui/widget/TriggerViewDrawer;->ZB:Z

    if-eqz v4, :cond_19

    if-eqz v0, :cond_19

    .line 344
    neg-int v4, v0

    invoke-direct {p0, v0, v4}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    .line 354
    :cond_18
    :goto_5
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 355
    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 356
    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 357
    iput-boolean v1, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    goto/16 :goto_1

    .line 345
    :cond_19
    if-eqz v0, :cond_18

    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-eq v0, v4, :cond_18

    .line 346
    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 347
    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 348
    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1a

    .line 349
    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v0, v4}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    goto :goto_5

    .line 351
    :cond_1a
    neg-int v4, v0

    invoke-direct {p0, v0, v4}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    goto :goto_5

    .line 361
    :pswitch_5
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 362
    if-eqz v0, :cond_1c

    iget-boolean v4, p0, Lmiui/widget/TriggerViewDrawer;->ZB:Z

    if-nez v4, :cond_1b

    iget v4, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    if-eq v0, v4, :cond_1c

    .line 363
    :cond_1b
    neg-int v4, v0

    invoke-direct {p0, v0, v4}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    .line 365
    :cond_1c
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 366
    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->ZD:I

    .line 367
    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->ZE:I

    .line 368
    iput-boolean v1, p0, Lmiui/widget/TriggerViewDrawer;->ZG:Z

    goto/16 :goto_1

    .line 382
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 462
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 466
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 464
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->b(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 466
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 162
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->XZ:I

    if-lez v0, :cond_1

    .line 163
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->XZ:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Ya:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    .line 179
    :goto_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 180
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zt:Landroid/view/View;

    goto :goto_0

    .line 183
    :cond_3
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Yb:I

    if-lez v0, :cond_5

    .line 184
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Yb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    if-nez v0, :cond_4

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    instance-of v1, v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_6

    .line 190
    check-cast v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    .line 201
    :cond_5
    :goto_1
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zs:I

    if-lez v0, :cond_a

    .line 202
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zs:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    if-nez v0, :cond_9

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_6
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_7

    .line 192
    new-instance v1, Lmiui/widget/TriggerViewDrawer$c;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$c;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_1

    .line 193
    :cond_7
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_8

    .line 194
    new-instance v1, Lmiui/widget/TriggerViewDrawer$a;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$a;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_1

    .line 196
    :cond_8
    const-string v0, "TriggerViewDrawer"

    const-string v1, "The scrollableView is a fixed view that can\'t scroll all the time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Lmiui/widget/TriggerViewDrawer$b;

    invoke-direct {v0}, Lmiui/widget/TriggerViewDrawer$b;-><init>()V

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zu:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_1

    .line 206
    :cond_9
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_a

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 215
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 219
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    .line 222
    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->Zv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    .line 225
    :cond_1
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string v0, "TriggerViewDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height of trigger must bigger than height of content, mTriggerDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContentDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    return-void
.end method

.method public openDrawer()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->openDrawer(Z)V

    .line 548
    return-void
.end method

.method public openDrawer(Z)V
    .locals 2

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Yc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 557
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/TriggerViewDrawer;->p(II)V

    .line 563
    :goto_0
    return-void

    .line 559
    :cond_0
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zw:I

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->az(I)V

    .line 560
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fn()V

    .line 561
    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    goto :goto_0
.end method

.method public setAutoClose(Z)V
    .locals 0

    .prologue
    .line 608
    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->ZB:Z

    .line 609
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 532
    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->Md:Z

    .line 533
    return-void
.end method

.method public setDrawerListener(Lmiui/widget/TriggerViewDrawer$DrawerListener;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->Zy:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    .line 541
    return-void
.end method

.method public setTriggerDistance(I)V
    .locals 0

    .prologue
    .line 592
    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->Zx:I

    .line 593
    return-void
.end method

.method public setTriggerListener(Lmiui/widget/TriggerViewDrawer$TriggerListener;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->Zz:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    .line 601
    return-void
.end method

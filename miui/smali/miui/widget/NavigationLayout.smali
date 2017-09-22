.class public Lmiui/widget/NavigationLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NavigationLayout$a;,
        Lmiui/widget/NavigationLayout$b;,
        Lmiui/widget/NavigationLayout$LayoutParams;,
        Lmiui/widget/NavigationLayout$SavedState;,
        Lmiui/widget/NavigationLayout$NavigationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final DRAWER_ENABLED_LANDSCAPE:I = 0x2

.field public static final DRAWER_ENABLED_NONE:I = 0x0

.field public static final DRAWER_ENABLED_PORTRAIT:I = 0x1

.field public static final DRAWER_MODE_CONTENT_SQUEEZED:I = 0x2

.field public static final DRAWER_MODE_OVERLAY:I = 0x0

.field public static final DRAWER_MODE_PUSHED_AWAY:I = 0x1

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field private static final SQ:I = 0x190

.field private static final SS:I = -0x330a0809

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final SU:I = 0x96

.field private static final SW:F = 0.5f


# instance fields
.field private LE:F

.field private Qj:Landroid/view/View;

.field private final Ta:Lcom/miui/internal/widget/ViewDragHelper;

.field private Tb:I

.field private Tc:Z

.field private Td:I

.field private Te:Landroid/view/View;

.field private Tf:Lmiui/widget/NavigationLayout$b;

.field private Tg:Lmiui/widget/NavigationLayout$b;

.field private Th:Landroid/graphics/drawable/Drawable;

.field private Ti:I

.field private Tj:Landroid/graphics/drawable/Drawable;

.field private Tk:F

.field private Tl:Z

.field private Tm:I

.field private Tn:Landroid/graphics/Paint;

.field private To:Lmiui/widget/NavigationLayout$NavigationListener;

.field private Tp:Z

.field private Tq:I

.field private Tr:Ljava/lang/Runnable;

.field private Ts:F

.field private Tt:F

.field private Tu:Landroid/animation/ValueAnimator;

.field private Tv:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Tw:Landroid/view/View;

.field private Tx:Z

.field private sF:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 209
    sget v0, Lmiui/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v2, -0x330a0809

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->sF:Landroid/graphics/Rect;

    .line 157
    iput v2, p0, Lmiui/widget/NavigationLayout;->Tm:I

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Tn:Landroid/graphics/Paint;

    .line 163
    iput-boolean v4, p0, Lmiui/widget/NavigationLayout;->Tp:Z

    .line 165
    iput v3, p0, Lmiui/widget/NavigationLayout;->Tq:I

    .line 167
    new-instance v0, Lmiui/widget/NavigationLayout$1;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$1;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    .line 214
    sget-object v0, Lmiui/R$styleable;->NavigationLayout:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    sget v1, Lmiui/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    sget v1, Lmiui/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_1
    sget v1, Lmiui/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 230
    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setDividerWidth(I)V

    .line 234
    :cond_2
    sget v1, Lmiui/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/NavigationLayout;->Tm:I

    .line 237
    sget v1, Lmiui/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/NavigationLayout;->Tb:I

    .line 240
    sget v1, Lmiui/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/widget/NavigationLayout$b;->a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$b;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/NavigationLayout;->Tf:Lmiui/widget/NavigationLayout$b;

    .line 243
    sget v1, Lmiui/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/widget/NavigationLayout$b;->a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$b;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/NavigationLayout;->Tg:Lmiui/widget/NavigationLayout$b;

    .line 247
    sget v1, Lmiui/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/NavigationLayout;->Td:I

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    const/high16 v0, 0x3f000000    # 0.5f

    new-instance v1, Lmiui/widget/NavigationLayout$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/widget/NavigationLayout$a;-><init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V

    invoke-static {p0, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    .line 254
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 255
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 257
    invoke-virtual {p0, v4}, Lmiui/widget/NavigationLayout;->setFocusableInTouchMode(Z)V

    .line 258
    return-void
.end method

.method static synthetic a(Lmiui/widget/NavigationLayout;F)F
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lmiui/widget/NavigationLayout;->Tt:F

    return p1
.end method

.method static synthetic a(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 364
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 368
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    aput v0, v4, v5

    if-eqz p2, :cond_4

    move v0, v2

    :goto_2
    aput v0, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 373
    :goto_3
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    .line 374
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v3, :cond_8

    const-wide/16 v4, 0x1f4

    :goto_4
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 376
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->ex()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    if-eqz p2, :cond_9

    :goto_5
    iput v1, p0, Lmiui/widget/NavigationLayout;->Tt:F

    .line 378
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 368
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 370
    :cond_5
    new-array v3, v4, [F

    if-eqz p2, :cond_6

    move v0, v1

    :goto_6
    aput v0, v3, v5

    if-eqz p2, :cond_7

    move v0, v2

    :goto_7
    aput v0, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Tu:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_7

    .line 374
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_9
    move v1, v2

    .line 377
    goto :goto_5
.end method

.method static synthetic b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic b(Lmiui/widget/NavigationLayout;F)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->d(F)V

    return-void
.end method

.method private bb()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    if-nez v0, :cond_0

    .line 441
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    .line 442
    sget v0, Lmiui/R$id;->navigation:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    .line 444
    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 600
    iget v0, p0, Lmiui/widget/NavigationLayout;->Ts:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 601
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tm:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    .line 602
    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/NavigationLayout;->Ts:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 603
    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->Tm:I

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 604
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Tn:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 607
    :goto_0
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    move v3, v1

    .line 609
    :goto_1
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->Tn:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 611
    :cond_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v1

    move v3, v1

    goto :goto_1
.end method

.method static synthetic c(Lmiui/widget/NavigationLayout;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    return v0
.end method

.method private d(F)V
    .locals 4

    .prologue
    .line 797
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 798
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 815
    :goto_0
    return-void

    .line 802
    :cond_0
    iput p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    .line 803
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v1, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    .line 807
    :cond_1
    iget v1, p0, Lmiui/widget/NavigationLayout;->Td:I

    if-nez v1, :cond_2

    .line 808
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    .line 809
    :cond_2
    iget v1, p0, Lmiui/widget/NavigationLayout;->Td:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 810
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 811
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    iget-boolean v3, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v3, :cond_3

    :goto_1
    int-to-float v1, v1

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    :cond_3
    neg-int v1, v1

    goto :goto_1

    .line 813
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 614
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tt:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 615
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tm:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    .line 616
    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/NavigationLayout;->Tt:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 617
    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->Tm:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 618
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Tn:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->Tn:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 622
    :cond_0
    return-void
.end method

.method static synthetic d(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->ey()V

    return-void
.end method

.method static synthetic e(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    return-object v0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 625
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tj:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 630
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v1

    .line 632
    :goto_1
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Tj:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v0

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1
.end method

.method private eA()F
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 793
    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    return v0
.end method

.method private eB()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 880
    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Tz:Z

    if-eqz v1, :cond_0

    .line 881
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Tz:Z

    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 884
    :cond_0
    return-void
.end method

.method private ex()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tv:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lmiui/widget/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$2;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->Tv:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 436
    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tv:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private ey()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 759
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    if-nez v0, :cond_1

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 761
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getChildCount()I

    move-result v1

    .line 764
    :goto_0
    if-ge v7, v1, :cond_0

    .line 765
    invoke-virtual {p0, v7}, Lmiui/widget/NavigationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 764
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    .line 770
    :cond_1
    return-void
.end method

.method private ez()Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 774
    iget-boolean v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Tz:Z

    return v0
.end method

.method static synthetic f(Lmiui/widget/NavigationLayout;)F
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eA()F

    move-result v0

    return v0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 637
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->sF:Landroid/graphics/Rect;

    .line 639
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 640
    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    iget v2, p0, Lmiui/widget/NavigationLayout;->Ti:I

    sub-int/2addr v0, v2

    .line 642
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/NavigationLayout;->Ti:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 645
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Th:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 648
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 649
    return-void
.end method

.method static synthetic g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 576
    instance-of v0, p1, Lmiui/widget/NavigationLayout$LayoutParams;

    return v0
.end method

.method public closeNavigationDrawer(Z)V
    .locals 4

    .prologue
    .line 892
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tp:Z

    if-eqz v0, :cond_0

    .line 893
    const/4 p1, 0x0

    .line 895
    :cond_0
    if-eqz p1, :cond_4

    .line 896
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-nez v0, :cond_1

    .line 909
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    .line 900
    :goto_1
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 907
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 908
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 899
    :cond_3
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    .line 902
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->d(F)V

    .line 903
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 779
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 781
    iget v0, p0, Lmiui/widget/NavigationLayout;->Td:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->Ts:F

    .line 786
    :goto_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation()V

    .line 789
    :cond_0
    return-void

    .line 784
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eA()F

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->Ts:F

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 583
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->c(Landroid/graphics/Canvas;)V

    .line 585
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->e(Landroid/graphics/Canvas;)V

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->f(Landroid/graphics/Canvas;)V

    .line 588
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->d(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 922
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    :goto_0
    return v0

    .line 926
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v1

    .line 929
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    move v0, v1

    .line 930
    goto :goto_0

    .line 933
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 408
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 411
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 412
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 413
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 414
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->Tw:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 415
    if-ge v2, v0, :cond_0

    if-ge v0, v3, :cond_0

    if-ge v4, v1, :cond_0

    if-ge v1, v5, :cond_0

    .line 416
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 559
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lmiui/widget/NavigationLayout;->Ti:I

    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tb:I

    return v0
.end method

.method public getDrawerLockMode()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tq:I

    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 449
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->bb()V

    .line 450
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 654
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/NavigationLayout;->Tq:I

    if-eqz v0, :cond_2

    .line 655
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 688
    :cond_1
    :goto_0
    return v2

    .line 660
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v2

    .line 688
    :goto_2
    if-nez v3, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->ez()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    if-eqz v0, :cond_1

    :cond_4
    move v2, v1

    goto :goto_0

    .line 662
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 664
    iput v0, p0, Lmiui/widget/NavigationLayout;->LE:F

    .line 665
    iput v4, p0, Lmiui/widget/NavigationLayout;->Tk:F

    .line 666
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eA()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 669
    :goto_3
    iput-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    goto :goto_2

    .line 674
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v0, v2

    goto :goto_2

    .line 682
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 683
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eB()V

    .line 684
    iput-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 521
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 523
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 524
    neg-int v0, v7

    int-to-float v0, v0

    int-to-float v1, v7

    iget v2, v6, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v2, v0

    .line 525
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    add-int v4, v2, v7

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 529
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p2, v0

    .line 531
    iget v0, p0, Lmiui/widget/NavigationLayout;->Td:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 532
    neg-int v0, v7

    int-to-float v0, v0

    iget v1, v6, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 533
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v2, :cond_0

    rsub-int/lit8 v0, v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollX(I)V

    move v2, p2

    .line 541
    :goto_0
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 555
    :goto_1
    return-void

    .line 534
    :cond_1
    iget v0, p0, Lmiui/widget/NavigationLayout;->Td:I

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollX(I)V

    move v2, p2

    goto :goto_0

    .line 536
    :cond_2
    iget v0, p0, Lmiui/widget/NavigationLayout;->Td:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 537
    int-to-float v0, p2

    int-to-float v1, v7

    iget v2, v6, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int p2, v0

    move v4, p4

    move v2, p2

    .line 538
    goto :goto_0

    .line 545
    :cond_3
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 547
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lmiui/widget/NavigationLayout;->Ti:I

    add-int v2, v0, v1

    .line 550
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 553
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollX(I)V

    goto :goto_1

    :cond_4
    move v2, p2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 454
    iput-boolean v5, p0, Lmiui/widget/NavigationLayout;->Tp:Z

    .line 455
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->bb()V

    .line 457
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 458
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 460
    invoke-virtual {p0, v1, v3}, Lmiui/widget/NavigationLayout;->setMeasuredDimension(II)V

    .line 462
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v8, :cond_1

    move v2, v6

    .line 465
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tg:Lmiui/widget/NavigationLayout$b;

    .line 468
    :goto_1
    iget v4, v0, Lmiui/widget/NavigationLayout$b;->type:I

    packed-switch v4, :pswitch_data_0

    move v0, v5

    .line 476
    :goto_2
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 479
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 481
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lmiui/widget/NavigationLayout;->measureChild(Landroid/view/View;II)V

    .line 486
    iget v0, p0, Lmiui/widget/NavigationLayout;->Td:I

    if-ne v0, v8, :cond_4

    .line 487
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 488
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    .line 489
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 493
    :goto_3
    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Mj:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    .line 494
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    move v3, v1

    .line 498
    :goto_4
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 499
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move v5, v6

    .line 508
    :goto_5
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eq v0, v5, :cond_0

    .line 509
    iput-boolean v5, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    .line 510
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0, v5}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    .line 514
    :cond_0
    return-void

    :cond_1
    move v2, v5

    .line 462
    goto :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Tf:Lmiui/widget/NavigationLayout$b;

    goto :goto_1

    .line 470
    :pswitch_0
    iget v0, v0, Lmiui/widget/NavigationLayout$b;->value:F

    float-to-int v0, v0

    .line 471
    goto :goto_2

    .line 473
    :pswitch_1
    iget v0, v0, Lmiui/widget/NavigationLayout$b;->value:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v1, v5

    .line 491
    goto :goto_3

    :cond_4
    move v3, v5

    .line 496
    goto :goto_4

    .line 500
    :cond_5
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tb:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 501
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move v5, v6

    goto :goto_5

    .line 504
    :cond_6
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lmiui/widget/NavigationLayout;->Ti:I

    add-int v3, v0, v2

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_5

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 948
    check-cast p1, Lmiui/widget/NavigationLayout$SavedState;

    .line 949
    invoke-virtual {p1}, Lmiui/widget/NavigationLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 951
    iget v0, p1, Lmiui/widget/NavigationLayout$SavedState;->Mj:F

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->d(F)V

    .line 952
    iget v0, p1, Lmiui/widget/NavigationLayout$SavedState;->Mj:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 953
    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 262
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    .line 263
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 265
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 938
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 939
    new-instance v1, Lmiui/widget/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V

    .line 941
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eA()F

    move-result v0

    iput v0, v1, Lmiui/widget/NavigationLayout$SavedState;->Mj:F

    .line 943
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 694
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 695
    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/widget/NavigationLayout;->Tq:I

    if-eqz v2, :cond_2

    .line 696
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 742
    :cond_1
    :goto_0
    return v1

    .line 699
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 703
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 705
    :pswitch_1
    iput v3, p0, Lmiui/widget/NavigationLayout;->LE:F

    .line 706
    iput v4, p0, Lmiui/widget/NavigationLayout;->Tk:F

    .line 707
    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    goto :goto_0

    .line 712
    :pswitch_2
    iget v2, p0, Lmiui/widget/NavigationLayout;->LE:F

    sub-float v2, v3, v2

    .line 713
    iget v5, p0, Lmiui/widget/NavigationLayout;->Tk:F

    sub-float v5, v4, v5

    .line 714
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 717
    iget-object v7, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v7, v3, v4}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    .line 718
    if-eqz v3, :cond_4

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    if-ne v3, v4, :cond_4

    .line 719
    mul-float/2addr v2, v2

    mul-float v3, v5, v5

    add-float/2addr v2, v3

    mul-int v3, v6, v6

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 720
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    :goto_1
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Tr:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 727
    if-eqz v0, :cond_3

    .line 728
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eB()V

    goto :goto_0

    .line 730
    :cond_3
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tq:I

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0

    .line 736
    :pswitch_3
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eB()V

    .line 737
    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tl:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openNavigationDrawer(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 861
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Tp:Z

    if-eqz v1, :cond_0

    move p1, v0

    .line 864
    :cond_0
    if-eqz p1, :cond_3

    .line 865
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->Tc:Z

    if-nez v1, :cond_1

    .line 876
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 875
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    goto :goto_0

    .line 870
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->d(F)V

    .line 871
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .prologue
    .line 747
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->Tx:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 752
    :cond_0
    if-eqz p1, :cond_1

    .line 753
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->eB()V

    .line 755
    :cond_1
    return-void

    .line 747
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setContentEnabled(Z)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Qj:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->a(Landroid/view/View;Z)V

    .line 395
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->Ti:I

    .line 329
    :goto_0
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->Th:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 331
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 332
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->Ti:I

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0

    .prologue
    .line 348
    iput p1, p0, Lmiui/widget/NavigationLayout;->Ti:I

    .line 349
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 350
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 351
    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lmiui/widget/NavigationLayout;->Tb:I

    .line 295
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 296
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 827
    iget v0, p0, Lmiui/widget/NavigationLayout;->Tq:I

    if-ne v0, p1, :cond_0

    .line 843
    :goto_0
    return-void

    .line 830
    :cond_0
    iput p1, p0, Lmiui/widget/NavigationLayout;->Tq:I

    .line 832
    if-eqz p1, :cond_1

    .line 833
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Ta:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 835
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 840
    :pswitch_0
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0

    .line 837
    :pswitch_1
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawerMode(I)V
    .locals 0

    .prologue
    .line 402
    iput p1, p0, Lmiui/widget/NavigationLayout;->Td:I

    .line 403
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 404
    return-void
.end method

.method public setNavigationEanbled(Z)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->Te:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->a(Landroid/view/View;Z)V

    .line 387
    return-void
.end method

.method public setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->To:Lmiui/widget/NavigationLayout$NavigationListener;

    .line 276
    return-void
.end method

.method public setNavigationShadow(I)V
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->Tj:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 306
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .prologue
    .line 596
    iput p1, p0, Lmiui/widget/NavigationLayout;->Tm:I

    .line 597
    return-void
.end method

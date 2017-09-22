.class public Lmiui/widget/Rotation3DLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/Rotation3DLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final LAYOUT_DIRECTION_LTR:I = 0x0

.field private static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final Wg:I = 0x800033

.field private static final Wh:I = 0xa

.field private static final Wi:F

.field private static final Wj:I = 0x2d

.field private static final Wm:I = 0x12c

.field private static final Wn:[F


# instance fields
.field private WA:Landroid/hardware/SensorManager;

.field private WB:Landroid/hardware/SensorEventListener;

.field private Wk:F

.field private Wl:F

.field private Wo:I

.field private Wp:[F

.field private Wq:[F

.field private Wr:[F

.field private Ws:J

.field private Wt:Z

.field private Wu:Z

.field private Wv:Z

.field private Ww:Z

.field private Wx:F

.field private Wy:F

.field private Wz:Landroid/hardware/Sensor;

.field private sH:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lmiui/widget/Rotation3DLayout;->e(F)F

    move-result v0

    sput v0, Lmiui/widget/Rotation3DLayout;->Wi:F

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/Rotation3DLayout;->Wn:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    .line 49
    sget v0, Lmiui/widget/Rotation3DLayout;->Wi:F

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->Wl:F

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->Wo:I

    .line 55
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Wn:[F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wp:[F

    .line 56
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Wn:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wq:[F

    .line 57
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Wn:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wr:[F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/widget/Rotation3DLayout;->Ws:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Wt:Z

    .line 62
    iput-boolean v2, p0, Lmiui/widget/Rotation3DLayout;->Wu:Z

    .line 63
    iput-boolean v2, p0, Lmiui/widget/Rotation3DLayout;->Wv:Z

    .line 64
    iput-boolean v2, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    .line 425
    new-instance v0, Lmiui/widget/Rotation3DLayout$4;

    invoke-direct {v0, p0}, Lmiui/widget/Rotation3DLayout$4;-><init>(Lmiui/widget/Rotation3DLayout;)V

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->WB:Landroid/hardware/SensorEventListener;

    .line 84
    sget-object v0, Lcom/miui/internal/R$styleable;->Rotation3DLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    sget v1, Lcom/miui/internal/R$styleable;->Rotation3DLayout_maxRotationDegree:I

    iget v2, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/Rotation3DLayout;->setMaxRotationDegree(F)V

    .line 86
    sget v1, Lcom/miui/internal/R$styleable;->Rotation3DLayout_autoGravityRotation:I

    iget-boolean v2, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    return v0
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Wx:F

    return p1
.end method

.method private a(IF)I
    .locals 4

    .prologue
    .line 418
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private a(FZ)V
    .locals 6

    .prologue
    .line 301
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 302
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    .line 305
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 313
    :cond_0
    :goto_1
    return-void

    .line 302
    :cond_1
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    neg-float v0, v0

    goto :goto_0

    .line 309
    :cond_2
    if-nez p2, :cond_3

    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wu:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wv:Z

    if-nez v1, :cond_0

    .line 310
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setRotationX(F)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Wv:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wx:F

    return v0
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Wy:F

    return p1
.end method

.method private b(FZ)V
    .locals 6

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 317
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    .line 320
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 317
    :cond_1
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    neg-float v0, v0

    goto :goto_0

    .line 324
    :cond_2
    if-nez p2, :cond_3

    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wu:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wv:Z

    if-nez v1, :cond_0

    .line 325
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setRotationY(F)V

    .line 326
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    return-void
.end method

.method static synthetic c(Lmiui/widget/Rotation3DLayout;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wy:F

    return v0
.end method

.method private static e(F)F
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v0, p0, v0

    return v0
.end method


# virtual methods
.method public enableAutoRotationByGravity(Z)V
    .locals 1

    .prologue
    .line 103
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    .line 104
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    goto :goto_0
.end method

.method public enableTouchRotation(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Wt:Z

    .line 96
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 344
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 345
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    .line 346
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 448
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lmiui/widget/Rotation3DLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxRotationDegree()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Wt:Z

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 350
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getChildCount()I

    move-result v4

    .line 352
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getPaddingLeft()I

    move-result v5

    .line 353
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    .line 355
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getPaddingTop()I

    move-result v7

    .line 356
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getPaddingBottom()I

    move-result v1

    sub-int v8, v0, v1

    .line 358
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 359
    invoke-virtual {p0, v3}, Lmiui/widget/Rotation3DLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 360
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 361
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    .line 363
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 364
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 369
    iget v1, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->gravity:I

    .line 370
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 371
    const v1, 0x800033

    .line 375
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 376
    and-int/lit8 v12, v1, 0x70

    .line 378
    and-int/lit8 v1, v2, 0x7

    packed-switch v1, :pswitch_data_0

    .line 390
    :pswitch_0
    iget v1, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    move v2, v1

    .line 393
    :goto_1
    sparse-switch v12, :sswitch_data_0

    .line 405
    iget v1, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v7

    .line 408
    :goto_2
    iget v12, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v13

    invoke-direct {p0, v12, v13}, Lmiui/widget/Rotation3DLayout;->a(IF)I

    move-result v12

    add-int/2addr v2, v12

    .line 409
    iget v0, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v12

    invoke-direct {p0, v0, v12}, Lmiui/widget/Rotation3DLayout;->a(IF)I

    move-result v0

    sub-int v0, v1, v0

    .line 410
    if-nez p1, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ne v2, v1, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 411
    :cond_1
    add-int v1, v2, v10

    add-int v10, v0, v11

    invoke-virtual {v9, v2, v0, v1, v10}, Landroid/view/View;->layout(IIII)V

    .line 358
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 380
    :pswitch_1
    iget v1, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    move v2, v1

    .line 381
    goto :goto_1

    .line 383
    :pswitch_2
    sub-int v1, v6, v5

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v2, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    move v2, v1

    .line 385
    goto :goto_1

    .line 387
    :pswitch_3
    sub-int v1, v6, v10

    iget v2, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    move v2, v1

    .line 388
    goto :goto_1

    .line 395
    :sswitch_0
    iget v1, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v7

    .line 396
    goto :goto_2

    .line 398
    :sswitch_1
    sub-int v1, v8, v7

    sub-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v12, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v12

    iget v12, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v12

    .line 400
    goto :goto_2

    .line 402
    :sswitch_2
    sub-int v1, v8, v11

    iget v12, v0, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v12

    .line 403
    goto :goto_2

    .line 415
    :cond_3
    return-void

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 253
    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wt:Z

    if-nez v1, :cond_0

    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 286
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/widget/Rotation3DLayout;->Ws:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 264
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/Rotation3DLayout;->Ws:J

    .line 267
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 269
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 270
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 271
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 274
    :cond_3
    int-to-float v4, v4

    sub-float v2, v4, v2

    iget v4, p0, Lmiui/widget/Rotation3DLayout;->Wl:F

    mul-float/2addr v2, v4

    invoke-direct {p0, v2, v0}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    .line 275
    int-to-float v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lmiui/widget/Rotation3DLayout;->Wl:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    .line 276
    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Wu:Z

    goto :goto_1

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Wu:Z

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 333
    if-nez p2, :cond_1

    .line 334
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Ww:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    goto :goto_0
.end method

.method protected resetRotation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    .line 145
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    new-instance v2, Lmiui/widget/Rotation3DLayout$1;

    invoke-direct {v2, p0}, Lmiui/widget/Rotation3DLayout$1;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 167
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    new-instance v2, Lmiui/widget/Rotation3DLayout$2;

    invoke-direct {v2, p0}, Lmiui/widget/Rotation3DLayout$2;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    iget v2, p0, Lmiui/widget/Rotation3DLayout;->Wo:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 178
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    new-instance v3, Lmiui/widget/Rotation3DLayout$3;

    invoke-direct {v3, p0}, Lmiui/widget/Rotation3DLayout$3;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget v3, p0, Lmiui/widget/Rotation3DLayout;->Wo:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object v3, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v1

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 190
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v2

    .line 191
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v3

    move v0, v1

    .line 193
    :goto_0
    iget-object v4, p0, Lmiui/widget/Rotation3DLayout;->Wp:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 194
    iget-object v4, p0, Lmiui/widget/Rotation3DLayout;->Wq:[F

    iget v5, p0, Lmiui/widget/Rotation3DLayout;->Wx:F

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->Wp:[F

    aget v6, v6, v0

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 195
    iget-object v4, p0, Lmiui/widget/Rotation3DLayout;->Wr:[F

    iget v5, p0, Lmiui/widget/Rotation3DLayout;->Wy:F

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->Wp:[F

    aget v6, v6, v0

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->Wq:[F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 198
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->Wr:[F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 199
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 200
    return-void
.end method

.method public setMaxRotationDegree(F)V
    .locals 1

    .prologue
    .line 230
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Wk:F

    .line 231
    invoke-static {p1}, Lmiui/widget/Rotation3DLayout;->e(F)F

    move-result v0

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->Wl:F

    .line 232
    return-void
.end method

.method public setResetAnimDuration(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Wo:I

    .line 209
    return-void
.end method

.method public setResetBouncePatterns([F)V
    .locals 2

    .prologue
    .line 218
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 219
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->Wp:[F

    .line 220
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wq:[F

    .line 221
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wr:[F

    .line 223
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    .line 293
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    .line 298
    return-void
.end method

.method public startGravityDetection()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    .line 118
    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    .line 120
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->WB:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    :cond_1
    return-void
.end method

.method public stopGravityDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->WB:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 130
    iput-object v3, p0, Lmiui/widget/Rotation3DLayout;->Wz:Landroid/hardware/Sensor;

    .line 131
    iput-object v3, p0, Lmiui/widget/Rotation3DLayout;->WA:Landroid/hardware/SensorManager;

    .line 132
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    .line 134
    :cond_0
    return-void
.end method

.method protected stopResetRotation()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->sH:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 140
    :cond_0
    return-void
.end method

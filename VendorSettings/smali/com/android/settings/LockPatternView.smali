.class public Lcom/android/vendorsettings/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# instance fields
.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private oY:Z

.field private oZ:Landroid/graphics/Paint;

.field private pa:Landroid/graphics/Paint;

.field private pb:Lcom/android/vendorsettings/dN;

.field private pc:Ljava/util/ArrayList;

.field private pd:[[Z

.field private pe:F

.field private pf:F

.field private pg:J

.field private ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

.field private pi:Z

.field private pj:Z

.field private pk:Z

.field private pl:Z

.field private pm:F

.field private pn:I

.field private po:F

.field private pp:F

.field private pq:F

.field private pr:Landroid/graphics/Bitmap;

.field private ps:Landroid/graphics/Bitmap;

.field private final pt:Landroid/graphics/Path;

.field private final pu:Landroid/graphics/Rect;

.field private pv:I

.field private pw:I

.field private px:I

.field private final py:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/vendorsettings/LockPatternView;->oY:Z

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    .line 75
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    .line 82
    iput v4, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    .line 83
    iput v4, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    .line 87
    sget-object v0, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pz:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    .line 88
    iput-boolean v2, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/vendorsettings/LockPatternView;->pk:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 93
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pm:F

    .line 94
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pn:I

    .line 95
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->po:F

    .line 103
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pt:Landroid/graphics/Path;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pu:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/LockPatternView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/LockPatternView;->setClickable(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pn:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 219
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 221
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pn:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 226
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 227
    return-void
.end method

.method private L(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 230
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private M(I)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 645
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->sendAccessibilityEvent(I)V

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method private N(I)F
    .locals 3

    .prologue
    .line 689
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private O(I)F
    .locals 3

    .prologue
    .line 693
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private a(F)I
    .locals 6

    .prologue
    .line 532
    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    .line 533
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->po:F

    mul-float v2, v1, v0

    .line 535
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 536
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 538
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 539
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 543
    :goto_1
    return v0

    .line 536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(II)I
    .locals 2

    .prologue
    .line 401
    .line 402
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 403
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 414
    :goto_0
    :sswitch_0
    return p2

    .line 408
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/LockPatternView;->b(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v5

    .line 462
    if-eqz v5, :cond_5

    .line 466
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 469
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    sub-int v6, v1, v4

    .line 470
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    sub-int v7, v1, v4

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    .line 473
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    .line 475
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    if-lez v6, :cond_6

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    .line 479
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_7

    .line 480
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    .line 483
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 486
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 488
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 490
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 491
    iget-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pk:Z

    if-eqz v0, :cond_4

    .line 492
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/android/vendorsettings/LockPatternView;->performHapticFeedback(II)Z

    :cond_4
    move-object v0, v5

    .line 498
    :cond_5
    return-object v0

    :cond_6
    move v1, v3

    .line 476
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 167
    sget-object v1, Lcom/android/vendorsettings/gt;->LockPatternView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "square"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/LockPatternView;->pm:F

    .line 185
    const/4 v2, 0x4

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/LockPatternView;->pn:I

    .line 187
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/LockPatternView;->L(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    .line 188
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 189
    if-ne v4, v2, :cond_5

    .line 190
    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->ps:Landroid/graphics/Bitmap;

    .line 196
    :goto_1
    new-array v2, v6, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/vendorsettings/LockPatternView;->ps:Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    aput-object v3, v2, v5

    .line 198
    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 199
    if-eqz v4, :cond_0

    .line 200
    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    .line 201
    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_1
    const-string v3, "lock_width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iput v5, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    goto :goto_0

    .line 174
    :cond_2
    const-string v3, "lock_height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iput v6, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    goto :goto_0

    .line 176
    :cond_3
    const-string v3, "fixed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    iput v7, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    goto/16 :goto_0

    .line 179
    :cond_4
    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    goto/16 :goto_0

    .line 192
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/LockPatternView;->L(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->ps:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIZ)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 825
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_2

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    .line 842
    :goto_0
    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    .line 843
    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    .line 845
    iget v3, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    .line 846
    iget v4, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    .line 848
    int-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 849
    int-to-float v2, v2

    sub-float v2, v4, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 852
    iget v3, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    iget v4, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 853
    iget v4, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 855
    iget-object v5, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    add-int/2addr v1, p2

    int-to-float v1, v1

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 856
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 857
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 858
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/vendorsettings/LockPatternView;->pw:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 860
    if-eqz v0, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->py:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 863
    :cond_1
    return-void

    .line 828
    :cond_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_4

    .line 833
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ps:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pz:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pA:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_6

    .line 837
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 839
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 622
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_4

    .line 623
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v1, v0

    .line 624
    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    .line 625
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/LockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 626
    iget-object v5, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 627
    if-eqz v4, :cond_0

    if-ne v5, v7, :cond_0

    .line 628
    iput-boolean v7, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 629
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->ey()V

    .line 632
    :cond_0
    iget v4, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 633
    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 635
    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 636
    iput v1, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    .line 637
    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    .line 638
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 622
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    .line 641
    :cond_4
    return-void
.end method

.method private a(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 503
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->ex()V

    .line 505
    return-void
.end method

.method private b(F)I
    .locals 6

    .prologue
    .line 552
    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    .line 553
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->po:F

    mul-float v2, v1, v0

    .line 555
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 556
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 558
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 559
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 563
    :goto_1
    return v0

    .line 556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/LockPatternView;->a(F)I

    move-result v1

    .line 511
    if-gez v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-object v0

    .line 514
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->b(F)I

    move-result v2

    .line 515
    if-ltz v2, :cond_0

    .line 519
    iget-object v3, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 522
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 653
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->ez()V

    .line 654
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 662
    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eB()V

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 668
    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/LockPatternView;->a(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 669
    if-eqz v2, :cond_0

    .line 670
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 671
    sget-object v2, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pz:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    .line 672
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->ey()V

    .line 673
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 678
    :goto_0
    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    .line 679
    iput v1, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    .line 686
    return-void

    .line 675
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 676
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eA()V

    goto :goto_0
.end method

.method private eA()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    invoke-interface {v0}, Lcom/android/vendorsettings/dN;->onPatternCleared()V

    .line 344
    :cond_0
    const v0, 0x11070082

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->M(I)V

    .line 345
    return-void
.end method

.method private eB()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eC()V

    .line 360
    sget-object v0, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pz:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    .line 361
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 362
    return-void
.end method

.method private eC()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 368
    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 369
    :goto_1
    if-ge v0, v4, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method private ex()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/dN;->onPatternCellAdded(Ljava/util/List;)V

    .line 323
    :cond_0
    const v0, 0x11070083

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->M(I)V

    .line 324
    return-void
.end method

.method private ey()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    invoke-interface {v0}, Lcom/android/vendorsettings/dN;->onPatternStart()V

    .line 330
    :cond_0
    const v0, 0x11070081

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->M(I)V

    .line 331
    return-void
.end method

.method private ez()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/dN;->onPatternDetected(Ljava/util/List;)V

    .line 337
    :cond_0
    const v0, 0x11070084

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->M(I)V

    .line 338
    return-void
.end method


# virtual methods
.method public P(I)V
    .locals 1

    .prologue
    .line 968
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->L(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pr:Landroid/graphics/Bitmap;

    .line 969
    return-void
.end method

.method public a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    .line 305
    sget-object v0, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pA:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/LockPatternView;->pg:J

    .line 311
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/LockPatternView;->N(I)F

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->O(I)F

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    .line 314
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eC()V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 317
    return-void
.end method

.method public a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eC()V

    .line 290
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 291
    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;)V

    .line 295
    return-void
.end method

.method public a(Lcom/android/vendorsettings/dN;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/vendorsettings/LockPatternView;->pb:Lcom/android/vendorsettings/dN;

    .line 278
    return-void
.end method

.method public clearPattern()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eB()V

    .line 352
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    .line 381
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    .line 388
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->pv:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 698
    iget-object v4, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 700
    iget-object v6, p0, Lcom/android/vendorsettings/LockPatternView;->pd:[[Z

    .line 702
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pA:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 707
    add-int/lit8 v0, v5, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/vendorsettings/LockPatternView;->pg:J

    sub-long/2addr v2, v8

    long-to-int v1, v2

    rem-int v2, v1, v0

    .line 710
    div-int/lit16 v3, v2, 0x2bc

    .line 712
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eC()V

    .line 713
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 714
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 715
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    aget-object v7, v6, v7

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 713
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 720
    :cond_0
    if-lez v3, :cond_3

    if-ge v3, v5, :cond_3

    const/4 v0, 0x1

    .line 723
    :goto_1
    if-eqz v0, :cond_1

    .line 724
    rem-int/lit16 v0, v2, 0x2bc

    int-to-float v0, v0

    const/high16 v1, 0x442f0000    # 700.0f

    div-float v1, v0, v1

    .line 728
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 729
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/LockPatternView;->N(I)F

    move-result v2

    .line 730
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->O(I)F

    move-result v7

    .line 732
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/vendorsettings/LockPatternView;->N(I)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    .line 735
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->O(I)F

    move-result v0

    sub-float/2addr v0, v7

    mul-float/2addr v0, v1

    .line 737
    add-float v1, v2, v3

    iput v1, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    .line 738
    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->invalidate()V

    .line 744
    :cond_2
    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    .line 745
    iget v3, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    .line 747
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->pm:F

    mul-float/2addr v0, v2

    .line 748
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 749
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    iget-object v7, p0, Lcom/android/vendorsettings/LockPatternView;->pt:Landroid/graphics/Path;

    .line 752
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 755
    iget v8, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingTop:I

    .line 756
    iget v9, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingLeft:I

    .line 758
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v1, v0, :cond_5

    .line 759
    int-to-float v0, v8

    int-to-float v10, v1

    mul-float/2addr v10, v3

    add-float/2addr v10, v0

    .line 761
    const/4 v0, 0x0

    :goto_3
    const/4 v11, 0x3

    if-ge v0, v11, :cond_4

    .line 762
    int-to-float v11, v9

    int-to-float v12, v0

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    .line 763
    float-to-int v11, v11

    float-to-int v12, v10

    aget-object v13, v6, v1

    aget-boolean v13, v13, v0

    invoke-direct {p0, p1, v11, v12, v13}, Lcom/android/vendorsettings/LockPatternView;->a(Landroid/graphics/Canvas;IIZ)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 720
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 758
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 771
    :cond_5
    iget-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_b

    :cond_6
    const/4 v0, 0x1

    .line 775
    :goto_4
    iget-object v1, p0, Lcom/android/vendorsettings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 776
    :goto_5
    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 778
    if-eqz v0, :cond_a

    .line 779
    const/4 v2, 0x0

    .line 780
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_6
    if-ge v2, v5, :cond_7

    .line 781
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 786
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    aget-object v8, v6, v8

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v9

    aget-boolean v8, v8, v9

    if-nez v8, :cond_d

    .line 801
    :cond_7
    iget-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pA:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-ne v0, v2, :cond_9

    :cond_8
    if-eqz v3, :cond_9

    .line 803
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->pe:F

    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->pf:F

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 805
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pB:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    if-eq v0, v2, :cond_f

    .line 806
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->oZ:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 813
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 814
    return-void

    .line 771
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 775
    :cond_c
    const/4 v1, 0x0

    goto :goto_5

    .line 789
    :cond_d
    const/4 v3, 0x1

    .line 791
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/vendorsettings/LockPatternView;->N(I)F

    move-result v8

    .line 792
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->O(I)F

    move-result v0

    .line 793
    if-nez v2, :cond_e

    .line 794
    invoke-virtual {v7, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 780
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 796
    :cond_e
    invoke-virtual {v7, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    .line 808
    :cond_f
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->pa:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 570
    packed-switch v0, :pswitch_data_0

    .line 581
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 584
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 572
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 575
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 578
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 432
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 433
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/LockPatternView;->a(II)I

    move-result v1

    .line 434
    invoke-direct {p0, p2, v2}, Lcom/android/vendorsettings/LockPatternView;->a(II)I

    move-result v0

    .line 436
    iget v2, p0, Lcom/android/vendorsettings/LockPatternView;->px:I

    packed-switch v2, :pswitch_data_0

    .line 450
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/LockPatternView;->setMeasuredDimension(II)V

    .line 451
    return-void

    .line 438
    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 439
    goto :goto_0

    .line 441
    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 444
    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 447
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 876
    check-cast p1, Lcom/android/vendorsettings/LockPatternView$SavedState;

    .line 877
    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 878
    sget-object v0, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->pz:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/LockPatternView;->a(Lcom/android/vendorsettings/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 881
    invoke-static {}, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->values()[Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    .line 882
    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    .line 883
    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    .line 884
    invoke-virtual {p1}, Lcom/android/vendorsettings/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/LockPatternView;->pk:Z

    .line 886
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/LockPatternView;->b(Landroid/view/MotionEvent;)V

    .line 887
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 867
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 868
    new-instance v0, Lcom/android/vendorsettings/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/vendorsettings/LockPatternView;->pc:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/LockPatternView;->ph:Lcom/android/vendorsettings/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/vendorsettings/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    iget-boolean v5, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    iget-boolean v6, p0, Lcom/android/vendorsettings/LockPatternView;->pk:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/vendorsettings/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/vendorsettings/dM;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 392
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 393
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pp:F

    .line 395
    iget v0, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/vendorsettings/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 396
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/vendorsettings/LockPatternView;->pq:F

    .line 397
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 589
    iget-boolean v2, p0, Lcom/android/vendorsettings/LockPatternView;->pi:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 615
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 615
    goto :goto_0

    .line 595
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 601
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/LockPatternView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 604
    :pswitch_3
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eB()V

    .line 605
    iput-boolean v1, p0, Lcom/android/vendorsettings/LockPatternView;->pl:Z

    .line 606
    invoke-direct {p0}, Lcom/android/vendorsettings/LockPatternView;->eA()V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/vendorsettings/LockPatternView;->pj:Z

    .line 259
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/vendorsettings/LockPatternView;->pk:Z

    .line 269
    return-void
.end method

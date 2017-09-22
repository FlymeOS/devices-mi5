.class public Lmiui/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final Op:I = 0xa

.field private static final Oq:I = 0x12c

.field private static final Or:I = 0x12c


# instance fields
.field private OA:I

.field private OB:Landroid/graphics/Bitmap;

.field private OC:Landroid/graphics/Canvas;

.field private OD:I

.field private OE:I

.field private OF:I

.field private OG:Landroid/graphics/drawable/Drawable;

.field private Os:Landroid/graphics/RectF;

.field private Ot:Landroid/graphics/Path;

.field private Ou:Landroid/animation/Animator;

.field private Ov:[I

.field private Ow:[Landroid/graphics/drawable/Drawable;

.field private Ox:[Landroid/graphics/drawable/Drawable;

.field private Oy:[Landroid/graphics/drawable/Drawable;

.field private Oz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

.field private qL:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->Ot:Landroid/graphics/Path;

    .line 61
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/CircleProgressBar;->OF:I

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressBar;->setIndeterminate(Z)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 8

    .prologue
    .line 331
    if-eqz p2, :cond_0

    .line 332
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 342
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 344
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ot:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 345
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ot:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Os:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 346
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ot:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 372
    :goto_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OG:Landroid/graphics/drawable/Drawable;

    .line 373
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 376
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 377
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 378
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 379
    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 380
    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v2, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    div-int/lit8 v3, v4, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 386
    :cond_1
    if-eqz p3, :cond_2

    .line 387
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 388
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    :cond_2
    return-void

    .line 354
    :cond_3
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OB:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 355
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->OB:Landroid/graphics/Bitmap;

    .line 357
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->OB:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    .line 360
    :cond_4
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OB:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 361
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 362
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Os:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, p5

    const/4 v4, 0x1

    iget-object v5, p0, Lmiui/widget/CircleProgressBar;->qL:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 364
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 365
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OC:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 368
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->OB:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private ab(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private ac(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ox:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ox:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private ad(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private ae(I)I
    .locals 2

    .prologue
    .line 237
    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lmiui/widget/CircleProgressBar;->OF:I

    div-int/2addr v0, v1

    return v0
.end method

.method private b([I)[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 165
    array-length v0, p1

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    move v0, v1

    .line 166
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 167
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    .line 168
    aget-object v4, v2, v0

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 171
    goto :goto_0
.end method

.method private dS()F
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getIntrinsicHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-direct {p0, v2}, Lmiui/widget/CircleProgressBar;->ac(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 302
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    :cond_0
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 306
    :cond_1
    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-direct {p0, v2}, Lmiui/widget/CircleProgressBar;->ac(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 293
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 295
    :cond_0
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 297
    :cond_1
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 243
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v1

    .line 244
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 245
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 246
    :cond_0
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Ox:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Ox:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 247
    :cond_1
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 250
    return-void
.end method

.method public getPrevAlpha()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lmiui/widget/CircleProgressBar;->OE:I

    return v0
.end method

.method public getProgressLevelCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/widget/CircleProgressBar;->OA:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ab(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lmiui/widget/CircleProgressBar;->OA:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ad(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->OA:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ac(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->dS()F

    move-result v5

    iget v0, p0, Lmiui/widget/CircleProgressBar;->OE:I

    rsub-int v6, v0, 0xff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 322
    iget v0, p0, Lmiui/widget/CircleProgressBar;->OE:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 323
    iget v0, p0, Lmiui/widget/CircleProgressBar;->OD:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ab(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lmiui/widget/CircleProgressBar;->OD:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ad(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->OD:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ac(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->dS()F

    move-result v5

    iget v6, p0, Lmiui/widget/CircleProgressBar;->OE:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/CircleProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 104
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Ow:[Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->Ox:[Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p3, p0, Lmiui/widget/CircleProgressBar;->Oy:[Landroid/graphics/drawable/Drawable;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    array-length v1, p1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    .line 111
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    if-eqz p2, :cond_1

    .line 115
    array-length v1, p2

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v3, p2, v0

    .line 116
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_1
    if-eqz p3, :cond_2

    .line 120
    array-length v1, p3

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_2

    aget-object v3, p3, v0

    .line 121
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 125
    :cond_2
    if-eqz p2, :cond_6

    .line 127
    array-length v3, p2

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_5

    aget-object v0, p2, v1

    .line 128
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    .line 129
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 131
    :cond_3
    instance-of v4, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_4

    .line 132
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 135
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    aget-object v1, p2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    aget-object v4, p2, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->Os:Landroid/graphics/RectF;

    .line 144
    :cond_6
    return-void
.end method

.method public setOnProgressChangedListener(Lmiui/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Oz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    .line 208
    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .prologue
    .line 397
    iput p1, p0, Lmiui/widget/CircleProgressBar;->OE:I

    .line 398
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 399
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 254
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 257
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    if-nez v1, :cond_3

    .line 271
    :cond_0
    :goto_0
    iget v1, p0, Lmiui/widget/CircleProgressBar;->OA:I

    if-eq v0, v1, :cond_1

    .line 273
    iget v1, p0, Lmiui/widget/CircleProgressBar;->OA:I

    iput v1, p0, Lmiui/widget/CircleProgressBar;->OD:I

    .line 274
    iput v0, p0, Lmiui/widget/CircleProgressBar;->OA:I

    .line 275
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 276
    const-string v0, "prevAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 278
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 282
    :cond_1
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Oz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Oz:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {v0}, Lmiui/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_2
    monitor-exit p0

    return-void

    .line 260
    :cond_3
    :try_start_1
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    array-length v1, v1

    .line 261
    :goto_1
    if-ge v0, v1, :cond_5

    .line 262
    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    aget v3, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p1, v3, :cond_4

    .line 267
    :goto_2
    if-ne v0, v2, :cond_0

    move v0, v1

    .line 268
    goto :goto_0

    .line 261
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public setProgressByAnimator(I)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    .line 200
    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 217
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 218
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    .line 219
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ae(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 220
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    if-eqz p2, :cond_0

    .line 222
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 225
    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Ov:[I

    .line 86
    return-void
.end method

.method public setRotateVelocity(I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lmiui/widget/CircleProgressBar;->OF:I

    .line 192
    return-void
.end method

.method public setThumb(I)V
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->OG:Landroid/graphics/drawable/Drawable;

    .line 423
    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->Ou:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 234
    :cond_0
    return-void
.end method

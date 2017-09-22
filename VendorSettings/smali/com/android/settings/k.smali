.class Lcom/android/settings/k;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/k;->C:Landroid/graphics/Rect;

    .line 330
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/k;->mCanvas:Landroid/graphics/Canvas;

    .line 333
    iget-object v0, p0, Lcom/android/settings/k;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 336
    iput-object p3, p0, Lcom/android/settings/k;->mMetrics:Landroid/util/DisplayMetrics;

    .line 337
    iput p1, p0, Lcom/android/settings/k;->A:I

    .line 338
    iput p2, p0, Lcom/android/settings/k;->B:I

    .line 339
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 354
    iget v4, p0, Lcom/android/settings/k;->A:I

    .line 355
    iget v3, p0, Lcom/android/settings/k;->B:I

    .line 357
    if-nez p1, :cond_1

    .line 358
    new-instance p1, Lcom/android/settings/j;

    invoke-direct {p1, v4, v3}, Lcom/android/settings/j;-><init>(II)V

    .line 429
    :cond_0
    :goto_0
    return-object p1

    .line 362
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_5

    .line 363
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 364
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 365
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 374
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 375
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 377
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 378
    if-lt v4, v1, :cond_3

    if-ge v3, v2, :cond_8

    .line 379
    :cond_3
    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 381
    if-le v1, v2, :cond_6

    .line 382
    int-to-float v1, v4

    div-float/2addr v1, v5

    float-to-int v3, v1

    .line 387
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 389
    :goto_3
    iget v2, p0, Lcom/android/settings/k;->A:I

    iget v5, p0, Lcom/android/settings/k;->B:I

    invoke-static {v2, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    iget-object v5, p0, Lcom/android/settings/k;->mCanvas:Landroid/graphics/Canvas;

    .line 391
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v2, p0, Lcom/android/settings/k;->C:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    iget v2, p0, Lcom/android/settings/k;->A:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 399
    iget v6, p0, Lcom/android/settings/k;->B:I

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    .line 400
    add-int v7, v2, v4

    add-int v8, v6, v3

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/k;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 404
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 405
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    iget-object v6, p0, Lcom/android/settings/k;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    .line 407
    goto :goto_0

    .line 366
    :cond_5
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 368
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 369
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-nez v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/settings/k;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    move-exception v1

    move v1, v3

    move v2, v4

    .line 426
    new-instance p1, Lcom/android/settings/j;

    invoke-direct {p1, v2, v1}, Lcom/android/settings/j;-><init>(II)V

    goto/16 :goto_0

    .line 383
    :cond_6
    if-le v2, v1, :cond_4

    .line 384
    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v4, v1

    goto :goto_2

    .line 387
    :cond_7
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 407
    :cond_8
    if-ge v1, v4, :cond_0

    if-ge v2, v3, :cond_0

    .line 408
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 409
    iget v6, p0, Lcom/android/settings/k;->A:I

    iget v7, p0, Lcom/android/settings/k;->B:I

    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 410
    iget-object v6, p0, Lcom/android/settings/k;->mCanvas:Landroid/graphics/Canvas;

    .line 411
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    iget-object v7, p0, Lcom/android/settings/k;->C:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 413
    sub-int v7, v4, v1

    div-int/lit8 v7, v7, 0x2

    .line 414
    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    .line 415
    add-int/2addr v1, v7

    add-int/2addr v2, v8

    invoke-virtual {p1, v7, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/k;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 420
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    iget-object v5, p0, Lcom/android/settings/k;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v2

    goto/16 :goto_0
.end method

.class public Lcom/android/settings/c/a;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private abm:Landroid/graphics/Rect;

.field private abn:Landroid/graphics/RectF;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    iput p2, p0, Lcom/android/settings/c/a;->mSize:I

    .line 62
    iget v0, p0, Lcom/android/settings/c/a;->mSize:I

    iget v1, p0, Lcom/android/settings/c/a;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/c/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/c/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v1, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 73
    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {v2, v1, v6, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 75
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v3, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v3, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    iget-object v2, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/c/a;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/c/a;->mScale:F

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/c/a;->mSize:I

    iget v2, p0, Lcom/android/settings/c/a;->mSize:I

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/c/a;->abm:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/c/a;->abn:Landroid/graphics/RectF;

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/c/a;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 54
    new-instance v1, Lcom/android/settings/c/a;

    float-to-int v0, v0

    invoke-direct {v1, p1, v0}, Lcom/android/settings/c/a;-><init>(Landroid/graphics/Bitmap;I)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Lcom/android/settings/c/a;->mScale:F

    iget v1, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 100
    iget v1, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 102
    iget-object v1, p0, Lcom/android/settings/c/a;->abn:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/settings/c/a;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/c/a;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/c/a;->abm:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/c/a;->abn:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/c/a;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/settings/c/a;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.class public Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongBitmapDrawable"
.end annotation


# static fields
.field static final MAX_PART_HEIGHT:I = 0x400


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "longBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    const/4 v8, 0x0

    new-array v8, v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 66
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 94
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 98
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 99
    .local v6, "restHeight":I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 101
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_1
    if-lez v6, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v3, v8, v6

    .line 103
    .local v3, "currY":I
    const/16 v8, 0x400

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 104
    .local v2, "currBmpHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "currBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    neg-int v9, v3

    int-to-float v9, v9

    invoke-virtual {v0, p1, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sub-int/2addr v6, v2

    .line 110
    goto :goto_1

    .line 111
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "currBmp":Landroid/graphics/Bitmap;
    .end local v2    # "currBmpHeight":I
    .end local v3    # "currY":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    new-array v6, v10, [Landroid/graphics/Bitmap;

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 66
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, "decoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    const/16 v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v4, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    .line 79
    .local v5, "restHeight":I
    :cond_0
    :goto_0
    if-lez v5, :cond_1

    .line 80
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    .line 85
    if-gez v5, :cond_0

    .line 86
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 73
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "restHeight":I
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 89
    .restart local v1    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "restHeight":I
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Bitmap;

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 115
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {p0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 122
    .local v7, "bounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 125
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v0, v8

    .line 126
    .local v6, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void
.end method

.method public getBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 142
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 147
    :cond_1
    return v1

    .line 143
    :cond_2
    const/4 v1, 0x0

    .line 144
    .local v1, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 157
    return-void
.end method

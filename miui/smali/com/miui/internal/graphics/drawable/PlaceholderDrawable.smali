.class public Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private ea:Landroid/graphics/Rect;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 32
    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ea:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ea:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v0, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 46
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 50
    if-gt v2, v0, :cond_0

    .line 55
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    sget-object v1, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    sget v2, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_width:I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 61
    sget v2, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_height:I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 64
    :cond_2
    const-string v2, "padding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    sget-object v1, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_left:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_top:I

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_right:I

    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    sget v6, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_bottom:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ea:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 76
    :cond_3
    const-string v2, "drawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad element under <placeholder>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    :cond_4
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

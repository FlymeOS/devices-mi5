.class Lmiui/widget/AlphabetFastIndexer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field Nm:Landroid/graphics/Rect;

.field Nn:Landroid/graphics/Rect;

.field No:[Ljava/lang/String;

.field Np:I

.field Nq:I

.field Nr:Z

.field Ns:F

.field Nt:F

.field qL:Landroid/graphics/Paint;

.field uD:I

.field uF:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 135
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    .line 137
    array-length v2, v6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    .line 139
    array-length v7, v6

    move v2, v0

    move v3, v0

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v8, v6, v2

    .line 140
    iget-object v9, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v3

    .line 139
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 143
    :cond_0
    sget v2, Lcom/miui/internal/R$array;->alphabet_table:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    .line 146
    :cond_1
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v1, :cond_3

    .line 147
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v2, v2

    .line 148
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    .line 149
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nr:Z

    .line 153
    :cond_3
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_text_color:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uD:I

    .line 155
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextActivatedColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_activated_text_color:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->Np:I

    .line 157
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextHighlightColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_highlight_text_color:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nq:I

    .line 160
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextSize:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_text_size:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    :goto_1
    invoke-virtual {p0, v10, v10}, Lmiui/widget/AlphabetFastIndexer$b;->c(FF)V

    .line 171
    return-void

    .line 167
    :cond_4
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    const-string v2, "miui"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1
.end method


# virtual methods
.method a(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    move v0, p1

    .line 232
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    .line 233
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    .line 234
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;ZIFF)V
    .locals 10

    .prologue
    .line 181
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$b;->qL:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    aget-object v0, v0, p3

    const-string v2, "!"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u2665"

    .line 186
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 188
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 189
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 191
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    iget v5, p0, Lmiui/widget/AlphabetFastIndexer$b;->Ns:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nt:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v3, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lmiui/widget/AlphabetFastIndexer$b;->Ns:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nt:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    if-eqz p2, :cond_1

    .line 198
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Np:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    :goto_1
    const-string v2, "\u2665"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 214
    :goto_2
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p5, v2

    invoke-virtual {p1, v0, p4, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_0

    .line 200
    :cond_1
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nm:Landroid/graphics/Rect;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float v5, p4, v5

    float-to-int v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    sub-float v6, p5, v6

    float-to-int v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, p4

    float-to-int v2, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    add-float/2addr v3, p5

    float-to-int v3, v3

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nq:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 204
    :cond_2
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer$b;->uD:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 211
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2
.end method

.method c(FF)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer$b;->Ns:F

    .line 175
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer$b;->Nt:F

    .line 176
    return-void
.end method

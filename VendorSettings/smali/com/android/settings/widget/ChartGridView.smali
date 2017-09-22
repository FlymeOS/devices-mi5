.class public Lcom/android/vendorsettings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private awW:Lcom/android/vendorsettings/widget/a;

.field private awX:Lcom/android/vendorsettings/widget/a;

.field private awY:Landroid/graphics/drawable/Drawable;

.field private awZ:Landroid/graphics/drawable/Drawable;

.field private axa:Landroid/graphics/drawable/Drawable;

.field private axb:I

.field private axc:I

.field private axd:Landroid/text/Layout;

.field private axe:Landroid/text/Layout;

.field private axf:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/vendorsettings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 70
    sget-object v0, Lcom/android/vendorsettings/gt;->ws:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awY:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awZ:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axa:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 78
    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axb:I

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axc:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method private i(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 168
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 169
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 170
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axc:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 171
    iget v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axb:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 173
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/vendorsettings/widget/a;Lcom/android/vendorsettings/widget/a;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/a;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awW:Lcom/android/vendorsettings/widget/a;

    .line 93
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/a;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awX:Lcom/android/vendorsettings/widget/a;

    .line 94
    return-void
.end method

.method e(JJ)V
    .locals 7

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    add-long v2, p1, p3

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 99
    invoke-static {v0, p1, p2, p1, p2}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/widget/ChartGridView;->i(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axd:Landroid/text/Layout;

    .line 100
    invoke-static {v0, v2, v3, v2, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/widget/ChartGridView;->i(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axe:Landroid/text/Layout;

    .line 101
    invoke-static {v0, p3, p4, p3, p4}, Lcom/android/vendorsettings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ChartGridView;->i(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axf:Landroid/text/Layout;

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->invalidate()V

    .line 103
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->getWidth()I

    move-result v2

    .line 108
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ChartGridView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    .line 110
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awZ:Landroid/graphics/drawable/Drawable;

    .line 111
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 114
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awX:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v1}, Lcom/android/vendorsettings/widget/a;->wa()[F

    move-result-object v6

    .line 115
    array-length v7, v6

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aget v8, v6, v1

    .line 116
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 117
    float-to-int v8, v8

    invoke-virtual {v4, v0, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awY:Landroid/graphics/drawable/Drawable;

    .line 123
    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 125
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 127
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->awW:Lcom/android/vendorsettings/widget/a;

    invoke-interface {v1}, Lcom/android/vendorsettings/widget/a;->wa()[F

    move-result-object v6

    .line 128
    array-length v7, v6

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_1

    aget v8, v6, v1

    .line 129
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 130
    float-to-int v8, v8

    invoke-virtual {v4, v8, v0, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axd:Landroid/text/Layout;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axd:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axd:Landroid/text/Layout;

    .line 141
    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 143
    const/4 v5, 0x0

    add-int v6, v3, v0

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axe:Landroid/text/Layout;

    .line 149
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 151
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v3, v0

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ChartGridView;->axf:Landroid/text/Layout;

    .line 157
    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 159
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    :cond_5
    return-void
.end method

.class public Lcom/android/vendorsettings/widget/i;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field awW:Lcom/android/vendorsettings/widget/a;

.field awX:Lcom/android/vendorsettings/widget/a;

.field private axV:I

.field private axW:F

.field private axX:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/vendorsettings/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/android/vendorsettings/widget/i;->axV:I

    .line 47
    iput v4, p0, Lcom/android/vendorsettings/widget/i;->axW:F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    .line 62
    sget-object v0, Lcom/android/vendorsettings/gt;->wv:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/widget/i;->a(IF)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/widget/i;->setClipToPadding(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/widget/i;->setClipChildren(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/android/vendorsettings/widget/i;->axV:I

    .line 79
    iput p2, p0, Lcom/android/vendorsettings/widget/i;->axW:F

    .line 80
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->requestLayout()V

    .line 81
    return-void
.end method

.method protected a(Lcom/android/vendorsettings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const v4, 0x800033

    .line 143
    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->wm()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->wl()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->wt()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 148
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 149
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 150
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v4, v0, v1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->wt()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 156
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 157
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 158
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 159
    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v4, v0, v1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method a(Lcom/android/vendorsettings/widget/a;Lcom/android/vendorsettings/widget/a;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/a;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/i;->awW:Lcom/android/vendorsettings/widget/a;

    .line 74
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/widget/a;

    iput-object v0, p0, Lcom/android/vendorsettings/widget/i;->awX:Lcom/android/vendorsettings/widget/a;

    .line 75
    return-void
.end method

.method protected h(Lcom/android/vendorsettings/widget/ChartSweepView;)V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vendorsettings/widget/i;->a(Lcom/android/vendorsettings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 139
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/vendorsettings/widget/ChartSweepView;->layout(IIII)V

    .line 140
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getPaddingTop()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/widget/i;->awW:Lcom/android/vendorsettings/widget/a;

    int-to-float v1, v3

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/widget/a;->d(F)Z

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/widget/i;->awX:Lcom/android/vendorsettings/widget/a;

    int-to-float v1, v4

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/widget/a;->d(F)Z

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 107
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 109
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/widget/i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-object v7, p0, Lcom/android/vendorsettings/widget/i;->axX:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    instance-of v7, v1, Lcom/android/vendorsettings/widget/ChartNetworkSeriesView;

    if-eqz v7, :cond_1

    .line 118
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0, v3, v4, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 119
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 121
    :cond_1
    instance-of v7, v1, Lcom/android/vendorsettings/widget/ChartGridView;

    if-eqz v7, :cond_2

    .line 123
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0, v3, v4, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 127
    :cond_2
    instance-of v0, v1, Lcom/android/vendorsettings/widget/ChartSweepView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 128
    check-cast v0, Lcom/android/vendorsettings/widget/ChartSweepView;

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/vendorsettings/widget/i;->a(Lcom/android/vendorsettings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 129
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 132
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/i;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/widget/i;->axV:I

    sub-int/2addr v0, v1

    .line 88
    iget v1, p0, Lcom/android/vendorsettings/widget/i;->axV:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 89
    iget v1, p0, Lcom/android/vendorsettings/widget/i;->axV:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/vendorsettings/widget/i;->axW:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 90
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 91
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 93
    :cond_0
    return-void
.end method

.class public Lmiui/widget/AutoScaleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final Nz:F = 0.001f


# instance fields
.field private NB:F

.field private ND:F

.field private NF:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->dM()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->dM()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AutoScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->dM()V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    sget-object v0, Lmiui/R$styleable;->AutoScaleTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Lmiui/R$styleable;->AutoScaleTextView_minTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private dM()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiui/widget/AutoScaleTextView;->NB:F

    .line 101
    return-void
.end method


# virtual methods
.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->NB:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->NF:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    iget v1, p0, Lmiui/widget/AutoScaleTextView;->NB:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMaxLines()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 122
    invoke-super {p0, v4, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getMeasuredWidth()I

    move-result v1

    .line 124
    if-le v1, v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 130
    sub-int/2addr v0, v2

    .line 131
    sub-int/2addr v1, v2

    .line 133
    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 134
    iget v1, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 135
    iget v0, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    .line 139
    :cond_4
    iput-boolean v5, p0, Lmiui/widget/AutoScaleTextView;->NF:Z

    .line 140
    invoke-super {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iput-boolean v4, p0, Lmiui/widget/AutoScaleTextView;->NF:Z

    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lmiui/widget/AutoScaleTextView;->NF:Z

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 150
    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lmiui/widget/AutoScaleTextView;->setMinTextSize(IF)V

    .line 57
    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lmiui/widget/AutoScaleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lmiui/widget/AutoScaleTextView;->ND:F

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->dM()V

    .line 91
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    invoke-direct {p0}, Lmiui/widget/AutoScaleTextView;->dM()V

    .line 97
    return-void
.end method

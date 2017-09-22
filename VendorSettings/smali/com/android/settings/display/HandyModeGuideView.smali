.class public Lcom/android/settings/display/HandyModeGuideView;
.super Landroid/view/View;
.source "HandyModeGuideView.java"


# instance fields
.field Yv:Landroid/graphics/Rect;

.field Yw:Z

.field Yx:Z

.field mAnimator:Landroid/animation/ValueAnimator;

.field mPaint:Landroid/graphics/Paint;

.field mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 50
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/settings/display/HandyModeGuideView;->Yv:Landroid/graphics/Rect;

    .line 52
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/display/p;

    invoke-direct {v1, p0}, Lcom/android/settings/display/p;-><init>(Lcom/android/settings/display/HandyModeGuideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/display/r;

    invoke-direct {v1, p0}, Lcom/android/settings/display/r;-><init>(Lcom/android/settings/display/HandyModeGuideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    const/4 v0, 0x0

    .line 118
    iget v2, p0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 129
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/display/HandyModeGuideView;->Yw:Z

    if-eqz v2, :cond_0

    sub-float v0, v1, v0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/display/HandyModeGuideView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v2

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 133
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/display/HandyModeGuideView;->Yx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->Yv:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/display/HandyModeGuideView;->Yv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->Yv:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->Yv:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 141
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b014b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b014a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0149

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    iget-boolean v2, p0, Lcom/android/settings/display/HandyModeGuideView;->Yx:Z

    if-eqz v2, :cond_0

    neg-float v0, v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b0148

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 153
    iget v8, p0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    packed-switch v8, :pswitch_data_0

    move v0, v2

    move v1, v3

    move v2, v5

    .line 173
    :goto_0
    cmpl-float v3, v2, v5

    if-lez v3, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 175
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 176
    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 177
    shl-int/lit8 v2, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 178
    iget-object v3, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    :cond_1
    return-void

    .line 156
    :pswitch_0
    sub-float v3, v6, v3

    mul-float/2addr v3, v1

    sub-float v3, v6, v3

    .line 157
    iget-boolean v4, p0, Lcom/android/settings/display/HandyModeGuideView;->Yw:Z

    if-eqz v4, :cond_4

    add-float/2addr v0, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 162
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/settings/display/HandyModeGuideView;->Yw:Z

    if-eqz v6, :cond_2

    sub-float v1, v4, v1

    .line 163
    :cond_2
    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    move v1, v3

    move v2, v4

    .line 164
    goto :goto_0

    .line 167
    :pswitch_2
    sub-float/2addr v4, v1

    .line 168
    sub-float/2addr v6, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    .line 169
    iget-boolean v3, p0, Lcom/android/settings/display/HandyModeGuideView;->Yw:Z

    if-nez v3, :cond_3

    add-float/2addr v0, v2

    move v2, v4

    goto :goto_0

    :cond_3
    move v0, v2

    move v2, v4

    goto :goto_0

    :cond_4
    move v0, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/display/HandyModeGuideView;->a(Landroid/graphics/Canvas;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/display/HandyModeGuideView;->b(Landroid/graphics/Canvas;)V

    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/display/HandyModeGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/HandyModeGuideView;->setMeasuredDimension(II)V

    .line 187
    return-void
.end method

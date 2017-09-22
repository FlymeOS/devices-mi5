.class public Lcom/miui/internal/widget/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private uC:Landroid/content/res/ColorStateList;

.field private uD:I

.field private uE:I

.field private uF:Landroid/animation/ValueAnimator;

.field private uG:I

.field private uH:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uC:Landroid/content/res/ColorStateList;

    .line 30
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uC:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_normal_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uD:I

    .line 32
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uC:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_selected_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uE:I

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabTextView;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uG:I

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uH:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uH:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    :cond_3
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uD:I

    .line 49
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    .line 51
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 55
    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uG:I

    .line 56
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getHeight()I

    move-result v5

    .line 58
    if-eqz v4, :cond_8

    .line 59
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v3

    .line 60
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v1, v6

    .line 63
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uD:I

    if-ne v0, v1, :cond_7

    .line 69
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uE:I

    .line 73
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    .line 75
    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uG:I

    .line 76
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v0

    .line 78
    if-eqz v4, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    .line 80
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 83
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    invoke-virtual {p1, v1, v3, v0, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 85
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uC:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 47
    :cond_6
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uE:I

    goto :goto_1

    .line 70
    :cond_7
    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uE:I

    if-ne v0, v1, :cond_4

    .line 71
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uD:I

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method public startScrollAnimation(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    .line 98
    :goto_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uH:Z

    .line 102
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uH:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v0

    move v2, v1

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v1

    const/4 v1, 0x1

    aput v0, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 111
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/internal/widget/ScrollingTabTextView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/internal/widget/ScrollingTabTextView$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$2;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 107
    goto :goto_1
.end method

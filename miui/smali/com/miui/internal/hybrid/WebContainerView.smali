.class public Lcom/miui/internal/hybrid/WebContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private fA:F

.field private fv:Z

.field private fw:Z

.field private fx:Landroid/view/View;

.field private fy:I

.field private fz:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    .line 30
    sget-object v0, Lmiui/R$styleable;->HybridViewStyle:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    sget v1, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fv:Z

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fy:I

    .line 37
    return-void
.end method

.method private springBack()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 130
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fv:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 95
    :cond_1
    :goto_0
    return v0

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 62
    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    if-ne v2, v0, :cond_4

    .line 63
    :cond_3
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_4
    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 69
    :pswitch_1
    iput v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->fz:F

    .line 70
    iput v4, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    goto :goto_1

    .line 73
    :pswitch_2
    iget-boolean v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    if-nez v2, :cond_1

    .line 77
    iget v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fz:F

    sub-float/2addr v2, v3

    .line 78
    iget v5, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    sub-float/2addr v5, v4

    .line 80
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 81
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 83
    iput v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->fz:F

    .line 84
    iput v4, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    .line 86
    iget-object v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    cmpg-float v3, v5, v3

    if-gez v3, :cond_5

    cmpl-float v2, v6, v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fy:I

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_5

    .line 89
    iput-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fv:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v4

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    goto :goto_0

    .line 111
    :pswitch_1
    iget v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    sub-float v1, v0, v1

    .line 112
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->setTranslationY(F)V

    .line 113
    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fA:F

    goto :goto_0

    .line 117
    :pswitch_2
    iput-boolean v4, p0, Lcom/miui/internal/hybrid/WebContainerView;->fw:Z

    .line 118
    invoke-direct {p0}, Lcom/miui/internal/hybrid/WebContainerView;->springBack()V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWebView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 40
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/hybrid/WebContainerView;->removeView(Landroid/view/View;)V

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fx:Landroid/view/View;

    .line 48
    const/4 v0, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

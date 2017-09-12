.class public Landroid/widget/AbsListViewInjector;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;,
        Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method private static edgeReached(Landroid/widget/AbsListView;I)Z
    .locals 11
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 173
    .local v2, "childCount":I
    if-lez v2, :cond_a

    .line 174
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 175
    .local v3, "firstPosition":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 177
    .local v6, "listPadding":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    .line 178
    .local v4, "firstTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 180
    .local v5, "lastBottom":I
    if-nez v3, :cond_3

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-lt v4, v9, :cond_3

    move v0, v7

    .line 182
    .local v0, "cannotScrollDown":Z
    :goto_0
    add-int v9, v3, v2

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v9, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-gt v5, v9, :cond_4

    move v1, v7

    .line 185
    .local v1, "cannotScrollUp":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    .line 187
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v9, :cond_6

    .line 188
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-nez v9, :cond_0

    .line 189
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 201
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    if-eqz v1, :cond_a

    if-gez p1, :cond_a

    .line 205
    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    .end local v3    # "firstPosition":I
    .end local v4    # "firstTop":I
    .end local v5    # "lastBottom":I
    .end local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_2
    :goto_4
    return v7

    .restart local v3    # "firstPosition":I
    .restart local v4    # "firstTop":I
    .restart local v5    # "lastBottom":I
    .restart local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_3
    move v0, v8

    .line 180
    goto :goto_0

    .restart local v0    # "cannotScrollDown":Z
    :cond_4
    move v1, v8

    .line 182
    goto :goto_1

    .restart local v1    # "cannotScrollUp":Z
    :cond_5
    move v9, v8

    .line 185
    goto :goto_2

    .line 191
    :cond_6
    if-eqz v0, :cond_8

    .line 192
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-ge p1, v9, :cond_0

    .line 193
    :cond_7
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .line 195
    :cond_8
    if-eqz v1, :cond_0

    .line 196
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v9, :cond_9

    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-le p1, v9, :cond_0

    .line 197
    :cond_9
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    .end local v3    # "firstPosition":I
    .end local v4    # "firstTop":I
    .end local v5    # "lastBottom":I
    .end local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_a
    move v7, v8

    .line 205
    goto :goto_4
.end method

.method public static getPanSpeed(Landroid/widget/AbsListView;I)I
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    :goto_0
    return v1

    .line 38
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 39
    iget v1, p0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v0, p1, v1

    .local v0, "inertia":I
    :goto_1
    move v1, v0

    .line 45
    goto :goto_0

    .line 41
    .end local v0    # "inertia":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    :goto_2
    sub-int v0, v2, v1

    .restart local v0    # "inertia":I
    goto :goto_1

    .end local v0    # "inertia":I
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_2
.end method

.method public static initOnTouchDown(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    .line 27
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 28
    iput v1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    .line 30
    return-void
.end method

.method private static isAnimating(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 214
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needFinishActionMode(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onRenderTick(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 74
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-static {p0, p1, v2, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    if-eqz v0, :cond_4

    .line 84
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 85
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, p1, v0, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    .line 86
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    goto :goto_0

    .line 91
    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, v0}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    .line 93
    iput v2, p0, Landroid/widget/AbsListView;->mInertia:I

    goto :goto_0

    .line 95
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    int-to-float v0, v0

    const v1, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 96
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-nez v0, :cond_0

    .line 97
    iput v3, p0, Landroid/widget/AbsListView;->mScaleY:F

    goto :goto_0
.end method

.method public static resetScale(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    .line 70
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 71
    return-void
.end method

.method private static setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V
    .locals 12
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # I
    .param p3, "isTween"    # Z

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 104
    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v10, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    invoke-virtual {p1, v5, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 168
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v6, v8, v10

    .line 110
    .local v6, "sqrtOffset":D
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v6, v8

    .line 111
    .local v2, "scaleRatio":D
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 113
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_1

    if-gez p2, :cond_1

    .line 114
    neg-double v2, v2

    .line 117
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    double-to-float v8, v2

    add-float v4, v5, v8

    .line 118
    .local v4, "scaleY":F
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    .line 119
    if-gtz p2, :cond_2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_5

    .line 120
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    .line 125
    :goto_1
    if-eqz p3, :cond_7

    .line 126
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_3

    .line 127
    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v10, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    invoke-virtual {p1, v5, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 131
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    .line 132
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 134
    :cond_4
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 136
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v4, v5, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 137
    .local v1, "scaleBackAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x190

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    new-instance v5, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    new-instance v5, Landroid/widget/AbsListViewInjector$1;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$1;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_6

    .line 148
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v5, v8

    const/4 v8, 0x1

    aput v4, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 149
    .local v0, "scaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    new-instance v5, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    new-instance v5, Landroid/widget/AbsListViewInjector$2;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$2;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 162
    .end local v0    # "scaleAnimator":Landroid/animation/ValueAnimator;
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 122
    .end local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    goto/16 :goto_1

    .line 160
    .restart local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 164
    .end local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    invoke-virtual {p1, v5, v4, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 165
    iput v4, p0, Landroid/widget/AbsListView;->mScaleY:F

    .line 166
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto/16 :goto_0
.end method

.method public static setListScaleIfNeeded(Landroid/widget/AbsListView;I)Z
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    :goto_0
    return v2

    .line 54
    :cond_0
    invoke-static {p0, p1}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    .line 55
    .local v0, "atEdge":Z
    if-eqz v0, :cond_1

    .line 56
    iget v4, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    sub-int v1, p1, v4

    .line 57
    .local v1, "offsetRevise":I
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 58
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    .line 59
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 61
    .end local v1    # "offsetRevise":I
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mInertia:I

    if-eqz v4, :cond_2

    :goto_1
    and-int/2addr v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .end local v0    # "atEdge":Z
    :cond_3
    move v2, v3

    .line 63
    goto :goto_0
.end method

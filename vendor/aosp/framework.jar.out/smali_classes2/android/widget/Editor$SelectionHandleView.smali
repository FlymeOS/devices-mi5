.class abstract Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private mTranslation:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5026
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5027
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5029
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setPivotX(F)V

    .line 5030
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    .line 5031
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 5105
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 5106
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5109
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setScaleX(F)V

    .line 5110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setTranslationX(F)V

    .line 5111
    return-void
.end method

.method public fadeIn(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5070
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    iget v6, p0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalScale:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 5071
    .local v2, "startX":F
    move v0, p2

    .line 5073
    .local v0, "locationY":I
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 5074
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v5, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5075
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5077
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5079
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    cmpl-float v4, v4, v11

    if-eqz v4, :cond_0

    .line 5080
    new-array v4, v10, [F

    aput v2, v4, v8

    int-to-float v5, p1

    aput v5, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 5081
    .local v3, "translationAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/widget/Editor$SelectionHandleView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/Editor$SelectionHandleView$1;-><init>(Landroid/widget/Editor$SelectionHandleView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5089
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5090
    iput v11, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    .line 5095
    .end local v3    # "translationAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 5096
    return-void

    .line 5092
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 5077
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 5100
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    .line 5101
    return-void
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 2

    .prologue
    .line 5058
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 5059
    new-instance v0, Landroid/widget/Editor$SelectionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1, p0}, Landroid/widget/Editor$SelectionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 5061
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 5053
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    .line 5054
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 5046
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3700(Landroid/widget/Editor$SelectionModifierCursorController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5047
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->hideActionPopupWindow()V

    .line 5049
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5035
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5036
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5041
    :goto_0
    return v0

    .line 5038
    :pswitch_0
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    goto :goto_0

    .line 5036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    .line 5065
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 5066
    return-void
.end method

.method public setTranslation(F)V
    .locals 0
    .param p1, "translation"    # F

    .prologue
    .line 5114
    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    .line 5115
    return-void
.end method

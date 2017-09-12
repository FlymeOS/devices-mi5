.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field private mReShowPopup:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4645
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 4646
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4648
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->createAnimations()V

    .line 4649
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    .line 4650
    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;

    .prologue
    .line 4634
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;

    .prologue
    .line 4634
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method static synthetic access$2102(Landroid/widget/Editor$InsertionHandleView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;
    .param p1, "x1"    # Z

    .prologue
    .line 4634
    iput-boolean p1, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    return p1
.end method

.method private createAnimations()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 4855
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 4856
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4857
    .local v0, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4858
    .local v1, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4859
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4860
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4862
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    .line 4863
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4864
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4865
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4866
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4867
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4869
    new-instance v2, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 4875
    return-void

    .line 4856
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4857
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4863
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 4864
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 4679
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4680
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 4688
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4689
    return-void

    .line 4686
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 4692
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4693
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4695
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4846
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4847
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 4848
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4850
    invoke-virtual {p0, v1}, Landroid/widget/Editor$InsertionHandleView;->setScaleX(F)V

    .line 4851
    invoke-virtual {p0, v1}, Landroid/widget/Editor$InsertionHandleView;->setScaleY(F)V

    .line 4852
    return-void
.end method

.method public fadeIn(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4828
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4829
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 4830
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4831
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/Editor$InsertionHandleView;->setPivotY(F)V

    .line 4834
    .end local v1    # "line":I
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 4835
    return-void
.end method

.method public fadeOut()V
    .locals 2

    .prologue
    .line 4839
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 4840
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4841
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4842
    return-void
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4772
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 4

    .prologue
    .line 4709
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    .line 4710
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 4711
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 4712
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4713
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4715
    :cond_0
    return v1

    .line 4710
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4704
    const/4 v0, 0x1

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4669
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    .line 4670
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 4671
    return-void
.end method

.method public onAttached()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4812
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    if-eqz v0, :cond_0

    .line 4813
    invoke-virtual {p0, v1}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4814
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    .line 4816
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onAttached()V

    .line 4817
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 4818
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4822
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4823
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 4824
    return-void
.end method

.method onHandleMoved()V
    .locals 1

    .prologue
    .line 4803
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->isPopshowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4804
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    .line 4806
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4807
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 4808
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4654
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 4656
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->setPivotX(F)V

    .line 4657
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->setPivotY(F)V

    .line 4658
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 4720
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 4722
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 4767
    :goto_0
    :pswitch_0
    return v3

    .line 4724
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 4725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    goto :goto_0

    .line 4729
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4730
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 4731
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 4732
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 4734
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 4736
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 4738
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    .line 4739
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v6}, Landroid/widget/Editor$ActionPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4741
    iput-boolean v8, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    .line 4742
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideActionPopupWindow()V

    .line 4758
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 4744
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->showWithActionPopup()V

    goto :goto_1

    .line 4748
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    iget-boolean v6, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    if-eqz v6, :cond_3

    .line 4749
    invoke-virtual {p0, v8}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4750
    iput-boolean v8, p0, Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z

    .line 4753
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4754
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 4755
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    goto :goto_1

    .line 4761
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto/16 :goto_0

    .line 4722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 0

    .prologue
    .line 4662
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 4664
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 4665
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 4674
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 4675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4676
    return-void
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4782
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mHorizontalScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 4783
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mHorizontalScale:F

    div-float/2addr p1, v3

    .line 4786
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4788
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    .line 4789
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 4790
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 4792
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v3, v1, v4, p2}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 4793
    .local v0, "currLine":I
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v2

    .line 4794
    .local v2, "offset":I
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 4798
    .end local v0    # "currLine":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 4799
    return-void

    .line 4796
    .end local v2    # "offset":I
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4777
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4778
    return-void
.end method

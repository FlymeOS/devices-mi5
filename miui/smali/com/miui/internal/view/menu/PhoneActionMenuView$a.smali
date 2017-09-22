.class Lcom/miui/internal/view/menu/PhoneActionMenuView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private oP:Landroid/animation/AnimatorSet;

.field private oQ:Landroid/animation/AnimatorSet;

.field final synthetic oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V

    return-void
.end method


# virtual methods
.method public aQ()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/high16 v8, 0x10e0000

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 404
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 408
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 409
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v3, "Value"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 410
    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 411
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    .line 415
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 416
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v3, "Value"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 417
    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 418
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 419
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    .line 422
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 424
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 427
    :cond_0
    return-void

    .line 409
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 416
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 450
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->aQ()V

    .line 438
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 439
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 440
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 441
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oL:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_2

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    .line 495
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 496
    return-void

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oN:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oK:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 481
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 482
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oK:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->oM:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oR:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 503
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    :cond_1
    if-nez v0, :cond_3

    .line 468
    :cond_2
    return-void

    .line 465
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 466
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->aQ()V

    .line 431
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oQ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 432
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 433
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$a;->oP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 434
    return-void
.end method

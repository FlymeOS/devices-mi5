.class public Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentMaskAnimator"
.end annotation


# instance fields
.field final synthetic rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private rh:Landroid/animation/ObjectAnimator;

.field private ri:Landroid/animation/ObjectAnimator;

.field private rj:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    .line 675
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rj:Landroid/view/View$OnClickListener;

    .line 678
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rh:Landroid/animation/ObjectAnimator;

    .line 679
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 681
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->ri:Landroid/animation/ObjectAnimator;

    .line 682
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->ri:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 684
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 686
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->ri:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 688
    :cond_0
    return-void

    .line 678
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 681
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->ri:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->ri:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 721
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 712
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rh:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 703
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 704
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rh:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

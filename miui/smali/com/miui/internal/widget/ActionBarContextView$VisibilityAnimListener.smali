.class public Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field final synthetic qh:Lcom/miui/internal/widget/ActionBarContextView;

.field qk:Z

.field private ql:Z


# direct methods
.method protected constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 1

    .prologue
    .line 622
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->ql:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->ql:Z

    .line 662
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->ql:Z

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qk:Z

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    .line 647
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->d(Lcom/miui/internal/widget/ActionBarContextView;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 648
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;I)I

    .line 652
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 653
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qk:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qk:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 653
    goto :goto_1

    :cond_4
    move v1, v2

    .line 655
    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 636
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->ql:Z

    .line 637
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qh:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qk:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    .line 638
    return-void
.end method

.method public withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->qk:Z

    .line 630
    return-object p0
.end method

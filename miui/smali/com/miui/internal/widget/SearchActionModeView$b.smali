.class Lcom/miui/internal/widget/SearchActionModeView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field bL:Lmiui/view/ViewPager;

.field final synthetic vj:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 695
    if-eqz p1, :cond_2

    .line 696
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->h(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 697
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 698
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 701
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 702
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->i(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->h(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 703
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->k(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 704
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 705
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 710
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getViewPager()Lmiui/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    .line 711
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    if-eqz v0, :cond_1

    .line 712
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 714
    :cond_1
    return-void

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 708
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v3, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_0

    .line 712
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public onStop(Z)V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 730
    if-nez p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->n(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 732
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 739
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    if-eqz v0, :cond_3

    .line 742
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    if-eqz p1, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 744
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->bL:Lmiui/view/ViewPager;

    .line 745
    return-void

    :cond_4
    move v1, v2

    .line 735
    goto :goto_0

    :cond_5
    move v0, v2

    .line 739
    goto :goto_1

    :cond_6
    move v0, v4

    .line 742
    goto :goto_2
.end method

.method public onUpdate(ZF)V
    .locals 3

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->n(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->k(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 725
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$b;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->o(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setTranslationY(F)V

    .line 726
    return-void
.end method

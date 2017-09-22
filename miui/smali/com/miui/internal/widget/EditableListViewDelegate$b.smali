.class Lcom/miui/internal/widget/EditableListViewDelegate$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic tu:Lcom/miui/internal/widget/EditableListViewDelegate;

.field private tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private tx:Lmiui/view/ActionModeAnimationListener;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 1

    .prologue
    .line 444
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate$b;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tx:Lmiui/view/ActionModeAnimationListener;

    .line 445
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 449
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 479
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_1

    .line 480
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 485
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 481
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 518
    instance-of v1, v0, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    if-eqz v1, :cond_0

    .line 519
    check-cast v0, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    .line 520
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lmiui/widget/EditableListView$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 522
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 465
    sget v1, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 466
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 468
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/EditActionMode;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tx:Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, v1}, Lmiui/view/EditActionMode;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 469
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 470
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 459
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 460
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 490
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->f(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->g(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 495
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 496
    if-lt p2, v0, :cond_0

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    sub-int v0, p2, v0

    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    if-eqz p5, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 503
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 505
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 507
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 510
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    goto/16 :goto_0

    .line 494
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v7

    .line 501
    goto :goto_2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tw:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

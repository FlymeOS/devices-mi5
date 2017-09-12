.class Landroid/widget/AbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 6291
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 6299
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 6319
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 6304
    iget-object v1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6306
    iget-object v1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 6307
    const/4 v0, 0x1

    .line 6309
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 6324
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 6325
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 6328
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 6330
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 6331
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 6332
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6334
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 6335
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 6340
    iget-object v1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6345
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListViewInjector;->needFinishActionMode(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6346
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 6348
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 6314
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 6295
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 6296
    return-void
.end method

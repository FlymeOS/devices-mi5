.class Lcom/miui/internal/widget/EditableListViewDelegate$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate$b;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 4

    .prologue
    .line 400
    if-eqz p1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 402
    if-eqz v0, :cond_0

    const/4 v0, -0x1

    move v1, v0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 405
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 406
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 407
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_1

    .line 402
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 410
    :cond_1
    return-void
.end method

.method public onStop(Z)V
    .locals 3

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 436
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 438
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 414
    if-nez p1, :cond_0

    .line 415
    sub-float p2, v5, p2

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 418
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    move v1, v0

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 421
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 422
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTranslationX(F)V

    goto :goto_1

    .line 418
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_2
    if-eqz p1, :cond_3

    cmpl-float v0, p2, v5

    if-nez v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v0, v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v1, v1, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v1

    if-le v1, v0, :cond_3

    .line 427
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v1, v1, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b$1;->ty:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v2, v2, Lcom/miui/internal/widget/EditableListViewDelegate$b;->tu:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->c(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v2

    sub-int v0, v2, v0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 430
    :cond_3
    return-void
.end method

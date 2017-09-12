.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field private start:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 1
    .param p2, "page"    # I

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1682
    add-int/lit8 v0, p2, -0x1

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    .line 1683
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 1687
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p1

    .line 1688
    .local v2, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v2, :cond_0

    .line 1689
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    .line 1691
    :cond_0
    if-gez p3, :cond_2

    .line 1699
    :goto_1
    return-void

    .line 1687
    .end local v2    # "listView":Landroid/widget/ListView;
    .restart local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1695
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v2    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v5, 0x110b0029

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1696
    .local v1, "alwaysOption":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 1698
    .local v0, "always":Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v5, p3

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_1

    .line 1696
    .end local v0    # "always":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 1703
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    .line 1704
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 1707
    :cond_0
    if-gez p3, :cond_2

    .line 1709
    const/4 v2, 0x0

    .line 1713
    :goto_1
    return v2

    .line 1703
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1711
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1712
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    goto :goto_1
.end method

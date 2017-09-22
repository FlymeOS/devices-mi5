.class Lcom/miui/internal/app/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 112
    invoke-interface {v0, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/b;->hasActionMenu(I)Z

    move-result v2

    .line 85
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/app/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/b;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/b;->hasActionMenu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 90
    invoke-interface {v0, p1, p2, v2, v1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->d(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->b(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/miui/internal/app/b;->b(IZ)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/internal/app/b;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 103
    invoke-interface {v0, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

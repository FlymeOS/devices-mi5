.class public Lcom/android/vendorsettings/bO;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private final aN:Landroid/os/UserManager;

.field private final gX:I

.field private final iB:Lcom/android/vendorsettings/d/j;

.field private iC:J

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/vendorsettings/d/j;I)V
    .locals 1

    .prologue
    .line 1746
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1743
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    .line 1747
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/d/j;

    iput-object v0, p0, Lcom/android/vendorsettings/bO;->iB:Lcom/android/vendorsettings/d/j;

    .line 1748
    iput p3, p0, Lcom/android/vendorsettings/bO;->gX:I

    .line 1749
    iput-object p1, p0, Lcom/android/vendorsettings/bO;->aN:Landroid/os/UserManager;

    .line 1750
    return-void
.end method

.method private a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8

    .prologue
    .line 1847
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1848
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 1849
    if-nez v0, :cond_0

    .line 1850
    new-instance v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1851
    iput p4, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->category:I

    .line 1852
    iget-object v2, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    iget v2, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1855
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->v(I)V

    .line 1856
    iget-wide v2, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    .line 1857
    iget-wide v2, p0, Lcom/android/vendorsettings/bO;->iC:J

    iget-wide v4, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1858
    iget-wide v0, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    iput-wide v0, p0, Lcom/android/vendorsettings/bO;->iC:J

    .line 1860
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkStats;[I)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v5, -0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1756
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1757
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/vendorsettings/bO;->iC:J

    .line 1759
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 1760
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    .line 1761
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 1763
    const/4 v2, 0x0

    .line 1764
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    :goto_0
    move v6, v1

    .line 1765
    :goto_1
    if-ge v6, v0, :cond_7

    .line 1766
    invoke-virtual {p1, v6, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1769
    iget v4, v7, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1773
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1774
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1775
    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1776
    if-eq v2, v8, :cond_0

    .line 1778
    invoke-static {v2}, Lcom/android/vendorsettings/d/j;->ct(I)I

    move-result v2

    .line 1779
    invoke-direct {p0, v2, v10, v7, v1}, Lcom/android/vendorsettings/bO;->a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    :cond_0
    move v2, v3

    .line 1804
    :goto_2
    invoke-direct {p0, v4, v10, v7, v2}, Lcom/android/vendorsettings/bO;->a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 1765
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-object v2, v7

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1764
    goto :goto_0

    .line 1787
    :cond_2
    iget-object v4, p0, Lcom/android/vendorsettings/bO;->aN:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1788
    if-nez v4, :cond_3

    move v2, v3

    move v4, v5

    .line 1790
    goto :goto_2

    .line 1793
    :cond_3
    invoke-static {v2}, Lcom/android/vendorsettings/d/j;->ct(I)I

    move-result v2

    move v4, v2

    move v2, v1

    .line 1794
    goto :goto_2

    .line 1797
    :cond_4
    if-eq v4, v5, :cond_5

    const/4 v2, -0x5

    if-ne v4, v2, :cond_6

    :cond_5
    move v2, v3

    .line 1799
    goto :goto_2

    .line 1801
    :cond_6
    const/16 v4, 0x3e8

    move v2, v3

    .line 1802
    goto :goto_2

    .line 1807
    :cond_7
    array-length v2, p2

    .line 1808
    :goto_3
    if-ge v1, v2, :cond_a

    .line 1809
    aget v3, p2, v1

    .line 1811
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1808
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1815
    :cond_8
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 1816
    if-nez v0, :cond_9

    .line 1817
    new-instance v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1818
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    .line 1819
    iget-object v3, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    iget v3, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v10, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1822
    :cond_9
    iput-boolean v12, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ij:Z

    goto :goto_4

    .line 1825
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1826
    new-instance v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-direct {v0}, Lcom/android/vendorsettings/DataUsageSummary$AppItem;-><init>()V

    .line 1827
    iput v12, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->category:I

    .line 1828
    iget-object v1, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_b
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1832
    invoke-virtual {p0}, Lcom/android/vendorsettings/bO;->notifyDataSetChanged()V

    .line 1833
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1890
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 1891
    iget v0, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->category:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 1913
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 1914
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1915
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bO;->getItemViewType(I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1916
    if-nez p2, :cond_0

    .line 1917
    invoke-static {v2, p3}, Lcom/android/vendorsettings/iC;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1920
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1921
    const v1, 0x7f0c08bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1955
    :goto_0
    return-object p2

    .line 1924
    :cond_1
    if-nez p2, :cond_2

    .line 1925
    const v1, 0x7f04005c

    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1926
    const v4, 0x7f040196

    const v1, 0x1020018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1929
    iget v1, p0, Lcom/android/vendorsettings/bO;->gX:I

    if-lez v1, :cond_2

    .line 1930
    iget v1, p0, Lcom/android/vendorsettings/bO;->gX:I

    iget v2, p0, Lcom/android/vendorsettings/bO;->gX:I

    invoke-virtual {p2, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1934
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1936
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1937
    const v2, 0x102000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1941
    iget-object v5, p0, Lcom/android/vendorsettings/bO;->iB:Lcom/android/vendorsettings/d/j;

    invoke-static {v5, v0, p2}, Lcom/android/vendorsettings/bQ;->a(Lcom/android/vendorsettings/d/j;Lcom/android/vendorsettings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1943
    iget-boolean v5, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->ij:Z

    if-eqz v5, :cond_3

    iget-wide v6, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 1944
    const v4, 0x7f0c08d7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1945
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1951
    :goto_1
    iget-wide v4, p0, Lcom/android/vendorsettings/bO;->iC:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/vendorsettings/bO;->iC:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 1952
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1947
    :cond_3
    iget-wide v6, v0, Lcom/android/vendorsettings/DataUsageSummary$AppItem;->il:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1951
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1882
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/vendorsettings/bO;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1908
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bO;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

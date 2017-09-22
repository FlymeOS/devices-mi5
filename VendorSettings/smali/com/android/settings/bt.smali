.class Lcom/android/vendorsettings/bt;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic ih:Lcom/android/vendorsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/vendorsettings/d/a;)V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/d/a;)Lcom/android/vendorsettings/d/a;

    .line 1473
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/vendorsettings/DataUsageSummary;->q(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/vendorsettings/d/a;->ahN:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1474
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/vendorsettings/DataUsageSummary;->q(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1477
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Z)V

    .line 1478
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->r(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1481
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->q(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/vendorsettings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->s(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1484
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 1467
    new-instance v0, Lcom/android/vendorsettings/d/b;

    iget-object v1, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/vendorsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/vendorsettings/DataUsageSummary;->p(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/vendorsettings/d/b;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1464
    check-cast p2, Lcom/android/vendorsettings/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/bt;->a(Landroid/content/Loader;Lcom/android/vendorsettings/d/a;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1488
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/d/a;)Lcom/android/vendorsettings/d/a;

    .line 1489
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1490
    iget-object v0, p0, Lcom/android/vendorsettings/bt;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1491
    return-void
.end method

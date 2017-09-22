.class Lcom/android/vendorsettings/bv;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/e;


# instance fields
.field final synthetic ih:Lcom/android/vendorsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bA()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->A(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1552
    return-void
.end method

.method public bB()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary$LimitEditorFragment;->A(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1557
    return-void
.end method

.method public by()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->we()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/vendorsettings/DataUsageSummary;->b(Lcom/android/vendorsettings/DataUsageSummary;J)V

    .line 1541
    return-void
.end method

.method public bz()V
    .locals 4

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->wf()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;J)V

    .line 1546
    iget-object v0, p0, Lcom/android/vendorsettings/bv;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->b(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1547
    return-void
.end method

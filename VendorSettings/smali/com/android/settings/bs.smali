.class Lcom/android/vendorsettings/bs;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic ih:Lcom/android/vendorsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/vendorsettings/bs;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 1366
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/bN;

    .line 1367
    instance-of v1, v0, Lcom/android/vendorsettings/bL;

    if-eqz v1, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/vendorsettings/bs;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->A(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1373
    iget-object v0, p0, Lcom/android/vendorsettings/bs;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->m(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1387
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/bs;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/vendorsettings/DataUsageSummary;->n(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/vendorsettings/bN;->start:J

    iget-wide v4, v0, Lcom/android/vendorsettings/bN;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->d(JJ)V

    .line 1385
    iget-object v0, p0, Lcom/android/vendorsettings/bs;->ih:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->o(Lcom/android/vendorsettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1392
    return-void
.end method

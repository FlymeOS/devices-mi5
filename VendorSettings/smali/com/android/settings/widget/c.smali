.class Lcom/android/vendorsettings/widget/c;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/h;


# instance fields
.field final synthetic awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/vendorsettings/widget/ChartSweepView;Z)V
    .locals 2

    .prologue
    .line 296
    if-eqz p2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Lcom/android/vendorsettings/widget/ChartDataUsageView;Lcom/android/vendorsettings/widget/ChartSweepView;)V

    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->a(Lcom/android/vendorsettings/widget/ChartDataUsageView;)V

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/widget/e;->by()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->d(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/widget/e;->bz()V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->a(Lcom/android/vendorsettings/widget/ChartDataUsageView;Lcom/android/vendorsettings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public c(Lcom/android/vendorsettings/widget/ChartSweepView;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->b(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/widget/e;->bA()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->d(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/vendorsettings/widget/c;->awP:Lcom/android/vendorsettings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ChartDataUsageView;->c(Lcom/android/vendorsettings/widget/ChartDataUsageView;)Lcom/android/vendorsettings/widget/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/widget/e;->bB()V

    goto :goto_0
.end method

.class Lcom/android/settings/print/i;
.super Landroid/widget/Filter;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic amv:Lcom/android/settings/print/h;


# direct methods
.method constructor <init>(Lcom/android/settings/print/h;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->a(Lcom/android/settings/print/h;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 565
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    monitor-exit v3

    .line 580
    :goto_0
    return-object v0

    .line 568
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 569
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 571
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->b(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 572
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->b(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 574
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 575
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 578
    :cond_2
    iput-object v4, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 579
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 580
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->a(Lcom/android/settings/print/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0, p1}, Lcom/android/settings/print/h;->a(Lcom/android/settings/print/h;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 589
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->c(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 590
    if-nez p2, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v0}, Lcom/android/settings/print/h;->c(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v2}, Lcom/android/settings/print/h;->b(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    iget-object v0, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-virtual {v0}, Lcom/android/settings/print/h;->notifyDataSetChanged()V

    .line 598
    return-void

    .line 593
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 594
    iget-object v2, p0, Lcom/android/settings/print/i;->amv:Lcom/android/settings/print/h;

    invoke-static {v2}, Lcom/android/settings/print/h;->c(Lcom/android/settings/print/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

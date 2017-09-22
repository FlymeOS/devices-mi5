.class final Lcom/android/settings/print/q;
.super Landroid/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# instance fields
.field private amG:Ljava/util/List;

.field private ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private final amb:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 537
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/q;->amG:Ljava/util/List;

    .line 538
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/q;->amb:Landroid/print/PrintManager;

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/q;)V
    .locals 0

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/settings/print/q;->onForceLoad()V

    return-void
.end method

.method private static a(Landroid/print/PrintJobInfo;)Z
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 628
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 625
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/q;->t(Ljava/util/List;)V

    return-void
.end method

.method public jI()Ljava/util/List;
    .locals 6

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/settings/print/q;->amb:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v3

    .line 606
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 607
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 608
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v5

    .line 609
    invoke-static {v5}, Lcom/android/settings/print/q;->a(Landroid/print/PrintJobInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    if-nez v1, :cond_1

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 616
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/settings/print/q;->jI()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/settings/print/q;->onStopLoading()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/print/q;->amG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 595
    iget-object v0, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/settings/print/q;->amb:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 600
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/print/q;->amG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/q;->amG:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/q;->t(Ljava/util/List;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 561
    new-instance v0, Lcom/android/settings/print/r;

    invoke-direct {v0, p0}, Lcom/android/settings/print/r;-><init>(Lcom/android/settings/print/q;)V

    iput-object v0, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 567
    iget-object v0, p0, Lcom/android/settings/print/q;->amb:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/q;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/q;->amG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/print/q;->onForceLoad()V

    .line 574
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/settings/print/q;->onCancelLoad()Z

    .line 583
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/settings/print/q;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 548
    :cond_0
    return-void
.end method

.class Lcom/android/vendorsettings/print/j;
.super Landroid/content/Loader;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field private final amw:Ljava/util/Map;

.field private amx:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 721
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 715
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/print/j;->amw:Ljava/util/Map;

    .line 722
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/print/j;)Landroid/print/PrinterDiscoverySession;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    return-object v0
.end method

.method private ti()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 794
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tj()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 803
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    .line 804
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    new-instance v1, Lcom/android/vendorsettings/print/k;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/print/k;-><init>(Lcom/android/vendorsettings/print/j;)V

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 813
    return-void
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 709
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/print/j;->t(Ljava/util/List;)V

    return-void
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->onStopLoading()V

    .line 788
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/vendorsettings/print/j;->ti()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/android/vendorsettings/print/j;->tj()V

    .line 759
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->onStopLoading()V

    .line 775
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 776
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/print/j;->amx:Landroid/print/PrinterDiscoverySession;

    .line 780
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/vendorsettings/print/j;->amw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/print/j;->amw:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/print/j;->t(Ljava/util/List;)V

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->onForceLoad()V

    .line 743
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->onCancelLoad()Z

    .line 751
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/j;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 729
    :cond_0
    return-void
.end method

.class Lcom/android/settings/print/k;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# instance fields
.field final synthetic amy:Lcom/android/settings/print/j;


# direct methods
.method constructor <init>(Lcom/android/settings/print/j;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/settings/print/k;->amy:Lcom/android/settings/print/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintersChanged()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/settings/print/k;->amy:Lcom/android/settings/print/j;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/print/k;->amy:Lcom/android/settings/print/j;

    invoke-static {v2}, Lcom/android/settings/print/j;->a(Lcom/android/settings/print/j;)Landroid/print/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/j;->t(Ljava/util/List;)V

    .line 809
    return-void
.end method

.class Lcom/android/settings/bE;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ih:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/android/settings/bE;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1336
    iget-object v0, p0, Lcom/android/settings/bE;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1338
    :goto_0
    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/android/settings/bE;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->A(Lcom/android/settings/DataUsageSummary;)V

    .line 1346
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1336
    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bE;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method

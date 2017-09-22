.class Lcom/android/settings/bD;
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
    .line 1319
    iput-object p1, p0, Lcom/android/settings/bD;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/settings/bD;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->j(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1323
    :goto_0
    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/settings/bD;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->A(Lcom/android/settings/DataUsageSummary;)V

    .line 1330
    :goto_1
    return-void

    .line 1322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bD;->ih:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_1
.end method

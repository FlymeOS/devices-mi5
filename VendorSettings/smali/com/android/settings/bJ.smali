.class Lcom/android/settings/bJ;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic is:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;)V
    .locals 0

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/settings/bJ;->is:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/settings/bJ;->is:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2336
    if-eqz v0, :cond_0

    .line 2337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 2339
    :cond_0
    return-void
.end method

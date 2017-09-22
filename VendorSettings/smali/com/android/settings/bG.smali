.class Lcom/android/vendorsettings/bG;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic im:Lcom/android/vendorsettings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/vendorsettings/bG;->im:Lcom/android/vendorsettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/vendorsettings/bG;->im:Lcom/android/vendorsettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary;

    .line 2399
    if-eqz v0, :cond_0

    .line 2400
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->b(Lcom/android/vendorsettings/DataUsageSummary;Z)V

    .line 2402
    :cond_0
    return-void
.end method

.class Lcom/android/settings/fuelgauge/PowerUsageDetail$3;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageDetail.java"


# instance fields
.field final synthetic afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$3;->afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$3;->afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->a(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 704
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

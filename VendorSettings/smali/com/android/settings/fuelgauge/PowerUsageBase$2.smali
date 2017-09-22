.class Lcom/android/settings/fuelgauge/PowerUsageBase$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageBase.java"


# instance fields
.field final synthetic afm:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->a(Lcom/android/settings/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->a(Lcom/android/settings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->a(Lcom/android/settings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :cond_0
    return-void
.end method

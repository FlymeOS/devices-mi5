.class Lcom/android/settings/fuelgauge/PowerUsageBase$1;
.super Landroid/os/Handler;
.source "PowerUsageBase.java"


# instance fields
.field final synthetic afm:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->afm:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

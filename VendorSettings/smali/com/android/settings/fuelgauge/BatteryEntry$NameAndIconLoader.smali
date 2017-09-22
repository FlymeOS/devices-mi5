.class Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# instance fields
.field private acJ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "BatteryUsage Icon Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->acJ:Z

    .line 58
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->acJ:Z

    .line 62
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 68
    :goto_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->acF:Ljava/util/ArrayList;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->acF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->acJ:Z

    if-eqz v0, :cond_2

    .line 70
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->acG:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->acG:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :cond_1
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->acF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    monitor-exit v1

    return-void

    .line 76
    :cond_2
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->acF:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->qP()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

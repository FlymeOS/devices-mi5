.class public Lmiui/securitycenter/powercenter/BatteryHistoryHelper;
.super Ljava/lang/Object;
.source "BatteryHistoryHelper.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;

.field private rec:Landroid/os/BatteryStats$HistoryItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method


# virtual methods
.method public finishIterate()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_0
.end method

.method public getBatteryUsageRealtime()J
    .locals 6

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z
    .locals 8
    .param p1, "item"    # Lmiui/securitycenter/powercenter/HistoryItemWrapper;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v4

    .line 52
    :cond_1
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v5, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    .line 53
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 56
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    .line 57
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v6, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    .line 58
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    .line 59
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    .line 60
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    .line 61
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    .line 62
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    .line 63
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-char v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    .line 65
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v5, 0x10000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    .line 66
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x20000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    .line 67
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    .line 68
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    .line 69
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    iput-boolean v4, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    .line 71
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0x1c0

    shr-int/lit8 v2, v2, 0x6

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 74
    const/4 v0, 0x0

    .line 82
    .local v0, "bin":I
    :goto_5
    iput v0, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    move v4, v3

    .line 83
    goto/16 :goto_0

    .end local v0    # "bin":I
    :cond_3
    move v2, v4

    .line 65
    goto :goto_1

    :cond_4
    move v2, v4

    .line 66
    goto :goto_2

    :cond_5
    move v2, v4

    .line 67
    goto :goto_3

    :cond_6
    move v2, v4

    .line 68
    goto :goto_4

    .line 75
    :cond_7
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x200000

    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    .line 76
    const/4 v0, 0x1

    .restart local v0    # "bin":I
    goto :goto_5

    .line 78
    .end local v0    # "bin":I
    :cond_8
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v2, v2, 0x38

    shr-int/lit8 v0, v2, 0x3

    .line 80
    .restart local v0    # "bin":I
    add-int/lit8 v0, v0, 0x2

    goto :goto_5
.end method

.method public getScreenOnTime()J
    .locals 8

    .prologue
    .line 26
    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v4, :cond_0

    .line 27
    const-wide/16 v4, 0x0

    .line 31
    :goto_0
    return-wide v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 30
    .local v2, "rawRealTime":J
    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4, v2, v3}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v0

    .line 31
    .local v0, "batteryRealTime":J
    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    goto :goto_0
.end method

.method public refreshHistory()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    .line 15
    return-void
.end method

.method public startIterate()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    goto :goto_0
.end method

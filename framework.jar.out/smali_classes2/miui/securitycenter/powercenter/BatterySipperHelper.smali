.class Lmiui/securitycenter/powercenter/BatterySipperHelper;
.super Ljava/lang/Object;
.source "BatterySipperHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .locals 4
    .param p0, "sipper"    # Lmiui/securitycenter/powercenter/BatterySipper;
    .param p1, "osSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 38
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    .line 39
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    .line 40
    return-object p0
.end method

.method static makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainType"    # I
    .param p2, "osSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 13
    if-nez p2, :cond_1

    .line 14
    new-instance v0, Lmiui/securitycenter/powercenter/BatterySipper;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :cond_1
    const/4 v3, -0x1

    .line 17
    .local v3, "uid":I
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Lmiui/securitycenter/powercenter/UidUtils;->getRealUid(I)I

    move-result v3

    .line 20
    :cond_2
    new-instance v0, Lmiui/securitycenter/powercenter/BatterySipper;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    .line 21
    .local v0, "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    .line 22
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    .line 23
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    .line 24
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    .line 25
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    .line 26
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    .line 27
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    .line 28
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    .line 29
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    .line 30
    iget-object v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    goto :goto_0
.end method

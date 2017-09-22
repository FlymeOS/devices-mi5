.class public Lcom/android/vendorsettings/fuelgauge/FakeUid;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/vendorsettings/fuelgauge/FakeUid;->mUid:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 2

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 2

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/FakeUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 2

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

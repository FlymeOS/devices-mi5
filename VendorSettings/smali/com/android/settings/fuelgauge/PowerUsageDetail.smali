.class public Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;
.super Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static afn:[I


# instance fields
.field private IA:Landroid/widget/Button;

.field private final IP:Landroid/content/BroadcastReceiver;

.field private NS:Landroid/widget/Button;

.field NX:Landroid/content/ComponentName;

.field XI:Landroid/content/pm/ApplicationInfo;

.field private afo:I

.field private afp:[I

.field private afq:[D

.field private afr:Lcom/android/internal/os/BatterySipper$DrainType;

.field private afs:D

.field private aft:Landroid/preference/PreferenceCategory;

.field private afu:Landroid/preference/PreferenceCategory;

.field private afv:Landroid/preference/PreferenceCategory;

.field private afw:Landroid/preference/PreferenceCategory;

.field private afx:Z

.field private afy:Z

.field private afz:Landroid/preference/Preference;

.field private i:Landroid/content/pm/PackageManager;

.field private jd:Landroid/app/admin/DevicePolicyManager;

.field private mPackages:[Ljava/lang/String;

.field private mStartTime:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afn:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c074a
        0x7f0c074b
        0x7f0c0749
        0x7f0c0751
        0x7f0c0753
        0x7f0c074d
        0x7f0c074f
        0x7f0c0756
        0x7f0c075a
        0x7f0c075b
        0x7f0c075d
        0x7f0c074e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;-><init>()V

    .line 700
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$3;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IP:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 587
    const v1, 0x7f04008e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 588
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 591
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->cg(I)V

    return-void
.end method

.method public static a(Lcom/android/vendorsettings/hn;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/vendorsettings/fuelgauge/BatteryEntry;Z)V
    .locals 14

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    .line 93
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v3, "title"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "percent"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "duration"

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v4

    invoke-virtual {v11, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v11, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 103
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 112
    sget-object v2, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 271
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v2, v4

    .line 277
    :goto_0
    const-string v4, "types"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 278
    const-string v3, "values"

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 280
    const-class v2, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0c0721

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, p0

    move-object v4, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/vendorsettings/hn;->a(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 282
    return-void

    .line 116
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v12, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 117
    const/16 v2, 0xf

    new-array v10, v2, [I

    fill-array-data v10, :array_1

    .line 134
    const/16 v2, 0xf

    new-array v9, v2, [D

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/16 v2, 0x9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/16 v2, 0xa

    const-wide/16 v4, 0x0

    aput-wide v4, v9, v2

    const/16 v2, 0xb

    const-wide/16 v4, 0x0

    aput-wide v4, v9, v2

    const/16 v2, 0xc

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/16 v2, 0xd

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v4, v4

    aput-wide v4, v9, v2

    const/16 v2, 0xe

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v4, v9, v2

    .line 152
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 153
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 154
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 157
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 158
    const-string v2, "report_details"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 161
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-direct {v3, v2, v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v5

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v4, p0, v3, v5, v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 164
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 165
    const-string v3, "report_checkin_details"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :goto_1
    move-object v3, v10

    move v8, v2

    move-object v2, v9

    .line 172
    goto/16 :goto_0

    .line 175
    :pswitch_1
    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    .line 181
    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v2, v4

    const/4 v4, 0x2

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v2, v4

    goto/16 :goto_0

    .line 191
    :pswitch_2
    const/16 v2, 0x9

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    .line 202
    const/16 v2, 0x9

    new-array v2, v2, [D

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x2

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x5

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x6

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x7

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/16 v4, 0x8

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v2, v4

    goto/16 :goto_0

    .line 216
    :pswitch_3
    const/16 v2, 0x9

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    .line 227
    const/16 v2, 0x9

    new-array v2, v2, [D

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x2

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x5

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x6

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/4 v4, 0x7

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v2, v4

    const/16 v4, 0x8

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v2, v4

    goto/16 :goto_0

    .line 241
    :pswitch_4
    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    .line 246
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v2, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v2, v4

    goto/16 :goto_0

    .line 254
    :pswitch_5
    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    .line 259
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v2, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v2, v4

    goto/16 :goto_0

    :cond_1
    move v2, v8

    goto/16 :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 267
    :array_0
    .array-data 4
        0x7f0c073e
        0x7f0c0741
    .end array-data

    .line 117
    :array_1
    .array-data 4
        0x7f0c072f
        0x7f0c0730
        0x7f0c0731
        0x7f0c0732
        0x7f0c0733
        0x7f0c0736
        0x7f0c0735
        0x7f0c0737
        0x7f0c0739
        0x7f0c0738
        0x7f0c073a
        0x7f0c073b
        0x7f0c073c
        0x7f0c073d
        0x7f0c0741
    .end array-data

    .line 175
    :array_2
    .array-data 4
        0x7f0c073e
        0x7f0c073f
        0x7f0c0737
        0x7f0c0741
    .end array-data

    .line 191
    :array_3
    .array-data 4
        0x7f0c0733
        0x7f0c072f
        0x7f0c0730
        0x7f0c0731
        0x7f0c0736
        0x7f0c0735
        0x7f0c0739
        0x7f0c0738
        0x7f0c0741
    .end array-data

    .line 216
    :array_4
    .array-data 4
        0x7f0c073e
        0x7f0c072f
        0x7f0c0730
        0x7f0c0731
        0x7f0c0736
        0x7f0c0735
        0x7f0c0739
        0x7f0c0738
        0x7f0c0741
    .end array-data

    .line 241
    :array_5
    .array-data 4
        0x7f0c0740
        0x7f0c0741
        0x7f0c0742
    .end array-data

    .line 254
    :array_6
    .array-data 4
        0x7f0c0740
        0x7f0c0741
        0x7f0c0742
    .end array-data
.end method

.method private b(III)V
    .locals 2

    .prologue
    .line 655
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 656
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 657
    const v1, 0x7f04008e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 658
    new-instance v1, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$2;

    invoke-direct {v1, p0, p3}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$2;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 665
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 666
    return-void
.end method

.method private cg(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 514
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 516
    :pswitch_0
    const-class v1, Lcom/android/vendorsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0392

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 522
    :pswitch_1
    const-class v1, Lcom/android/vendorsettings/wifi/MiuiWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c02cf

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 526
    :pswitch_2
    const-class v1, Lcom/android/vendorsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c026d

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 530
    :pswitch_3
    const-class v1, Lcom/android/vendorsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c01af

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 534
    :pswitch_4
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->jH()V

    goto :goto_0

    .line 537
    :pswitch_5
    const-class v1, Lcom/android/vendorsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c01e5

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 541
    :pswitch_6
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->lh()V

    goto :goto_0

    .line 544
    :pswitch_7
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->rc()V

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private ch(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 596
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 599
    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 601
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 604
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afr:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v2, v3

    .line 649
    :goto_1
    if-eqz v2, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 599
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 607
    :pswitch_1
    if-eqz v4, :cond_5

    array-length v0, v4

    if-ne v0, v3, :cond_5

    .line 608
    const v0, 0x7f0c0744

    const v3, 0x7f0c0757

    const/4 v4, 0x5

    invoke-direct {p0, v0, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    move v0, v2

    .line 616
    :goto_2
    iget-boolean v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afx:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afy:Z

    if-eqz v3, :cond_4

    .line 617
    const v0, 0x7f0c01e5

    const v3, 0x7f0c0758

    const/4 v4, 0x6

    invoke-direct {p0, v0, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    goto :goto_1

    .line 623
    :pswitch_2
    const v0, 0x7f0c03c5

    const v4, 0x7f0c0750

    invoke-direct {p0, v0, v4, v3}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    goto :goto_1

    .line 629
    :pswitch_3
    const v0, 0x7f0c02cf

    const v3, 0x7f0c0752

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    goto :goto_1

    .line 635
    :pswitch_4
    const v0, 0x7f0c026d

    const v3, 0x7f0c0754

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    goto :goto_1

    .line 641
    :pswitch_5
    iget-wide v4, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afs:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    .line 642
    const v0, 0x7f0c01af

    const v3, 0x7f0c074c

    const/4 v4, 0x4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->b(III)V

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private ci(I)V
    .locals 3

    .prologue
    .line 669
    const/4 v0, 0x1

    .line 670
    sget-object v1, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afr:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afv:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    :cond_0
    return-void

    .line 672
    :pswitch_0
    const v0, 0x7f0c075c

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->cj(I)V

    .line 673
    const/4 v0, 0x0

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private cj(I)V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afv:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->a(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 683
    return-void
.end method

.method private ck(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 764
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->rb()V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 769
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->rb()V

    goto :goto_0

    .line 773
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 775
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 778
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 779
    if-eqz v2, :cond_4

    .line 780
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 782
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afw:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->a(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private jH()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 504
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 505
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 508
    const-class v1, Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0578

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 510
    return-void
.end method

.method private kC()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 735
    :goto_0
    return-void

    :cond_1
    move v0, v5

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 713
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 712
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 718
    :goto_2
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 721
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    .line 722
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 730
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IP:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 725
    :catch_0
    move-exception v1

    .line 718
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private lf()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 394
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 395
    const-string v0, "since"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afo:I

    .line 396
    const-string v0, "uid"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 397
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v5, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 398
    const-string v0, "drainType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afr:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 399
    const-string v0, "noCoverage"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afs:D

    .line 400
    const-string v0, "showLocationButton"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afy:Z

    .line 402
    const-string v0, "types"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afp:[I

    .line 403
    const-string v0, "values"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    .line 405
    const-string v0, "two_buttons"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/LayoutPreference;

    .line 406
    const v1, 0x7f1302fc

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    .line 407
    const v1, 0x7f1302fd

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NS:Landroid/widget/Button;

    .line 408
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_5

    .line 411
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    const v1, 0x7f0c0582

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->IA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NS:Landroid/widget/Button;

    const v1, 0x1040373

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 415
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NS:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 420
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_action_app_error"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 430
    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v0, v1}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NX:Landroid/content/ComponentName;

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NS:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NX:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 439
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->rf()Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    const-string v0, "high_power"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    new-instance v1, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 457
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->refreshStats()V

    .line 459
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->ra()V

    .line 460
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->ck(I)V

    .line 461
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->ch(I)V

    .line 462
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->ci(I)V

    .line 463
    return-void

    .line 425
    :cond_1
    const-string v0, "PowerUsageDetail"

    const-string v1, "No packages!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v3

    .line 435
    goto :goto_1

    .line 437
    :cond_3
    const-string v0, "two_buttons"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->U(Ljava/lang/String;)V

    goto :goto_2

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afu:Landroid/preference/PreferenceCategory;

    const-string v1, "high_power"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 453
    :cond_5
    const-string v0, "two_buttons"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->U(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afu:Landroid/preference/PreferenceCategory;

    const-string v1, "high_power"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 422
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private lh()V
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 693
    iget v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 694
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 697
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->kC()V

    goto :goto_0
.end method

.method private qZ()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 467
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    const-string v3, "iconPackage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    const-string v4, "iconId"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 472
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 475
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 476
    if-eqz v4, :cond_5

    .line 477
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 485
    :goto_0
    if-nez v0, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    .line 489
    :goto_1
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 492
    :goto_2
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->a(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afr:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v3, :cond_2

    const v0, 0x106000b

    :goto_3
    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/vendorsettings/A;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 495
    return-void

    .line 479
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 481
    goto :goto_0

    .line 482
    :cond_1
    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 492
    goto :goto_3

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    move-object v4, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private ra()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 550
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afp:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    if-eqz v0, :cond_1

    move v0, v1

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afp:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 551
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afp:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afp:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    .line 577
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    aget-wide v4, v4, v0

    invoke-static {v2, v4, v5, v8}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v2

    .line 579
    :goto_3
    iget-object v4, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->aft:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->a(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 561
    :pswitch_1
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    aget-wide v4, v2, v0

    double-to-long v4, v4

    .line 562
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 565
    :pswitch_2
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 566
    invoke-static {v2}, Lcom/android/vendorsettings/iC;->ar(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 571
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0c075e

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afq:[D

    aget-wide v6, v6, v0

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 574
    :pswitch_4
    iput-boolean v8, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afx:Z

    goto :goto_2

    .line 582
    :cond_1
    return-void

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0732
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private rb()V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afw:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 687
    return-void
.end method

.method private rc()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 738
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 761
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 741
    const/4 v3, 0x3

    iput v3, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 742
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 743
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NX:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 744
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 746
    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 749
    new-instance v3, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 750
    const-string v4, "percent"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 751
    const-string v1, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 752
    const-string v1, "report_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 753
    const-string v1, "report_checkin_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 754
    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->NX:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 758
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 759
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-class v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->cg(I)V

    .line 499
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->i:Landroid/content/pm/PackageManager;

    .line 356
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 358
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->addPreferencesFromResource(I)V

    .line 359
    const-string v0, "details_parent"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->aft:Landroid/preference/PreferenceCategory;

    .line 360
    const-string v0, "controls_parent"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afu:Landroid/preference/PreferenceCategory;

    .line 361
    const-string v0, "messages_parent"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afv:Landroid/preference/PreferenceCategory;

    .line 362
    const-string v0, "packages_parent"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afw:Landroid/preference/PreferenceCategory;

    .line 364
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->lf()V

    .line 365
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onResume()V

    .line 375
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 376
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->kC()V

    .line 377
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->afz:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->qZ()V

    .line 382
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0x35

    return v0
.end method

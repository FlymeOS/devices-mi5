.class public Lmiui/securitycenter/powercenter/PowerRankHelper;
.super Ljava/lang/Object;
.source "PowerRankHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerRankHelper"


# instance fields
.field private final mAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mMaxPower:D

.field private mMiscPower:D

.field private final mMiscUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPower:D

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 33
    iget-object v1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mUm:Landroid/os/UserManager;

    .line 35
    iput-object p1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .locals 4
    .param p1, "sipper"    # Lmiui/securitycenter/powercenter/BatterySipper;

    .prologue
    .line 105
    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 107
    :cond_0
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    .line 108
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    .line 109
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public getAppUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageTotal()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    return-wide v0
.end method

.method public getUsageTotal()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    return-wide v0
.end method

.method public refreshStats()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    .line 39
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 41
    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    .line 42
    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    .line 43
    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    .line 45
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 46
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 48
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, -0x1

    invoke-virtual {v5, v13, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 49
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 50
    .local v4, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v2

    .line 52
    .local v2, "otherSipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 53
    .local v1, "osSipper":Lcom/android/internal/os/BatterySipper;
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_0

    .line 54
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x6

    invoke-static {v5, v6, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 55
    .local v3, "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    iget-wide v6, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v8, v3, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    .line 56
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_0
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    .line 59
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v12, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 61
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    .line 63
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_1
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_2

    .line 64
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {v5, v6, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 66
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    .line 68
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_2
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_3

    .line 69
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-static {v5, v6, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 71
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    .line 73
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_3
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_4

    .line 74
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 76
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    .line 78
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_4
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_5

    .line 79
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v13, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 81
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    .line 83
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_5
    iget-object v5, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_6

    .line 84
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    .line 86
    .restart local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto/16 :goto_0

    .line 89
    .end local v3    # "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    :cond_6
    invoke-static {v2, v1}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    goto/16 :goto_0

    .line 92
    .end local v1    # "osSipper":Lcom/android/internal/os/BatterySipper;
    :cond_7
    iget-wide v6, v2, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_8

    iget-wide v6, v2, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    cmpl-double v5, v6, v10

    if-lez v5, :cond_8

    .line 93
    invoke-direct {p0, v2}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    .line 96
    :cond_8
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v12, :cond_9

    .line 97
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 99
    :cond_9
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v12, :cond_a

    .line 100
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 102
    :cond_a
    return-void
.end method

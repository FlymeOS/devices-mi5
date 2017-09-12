.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final STATE_RUNNING:I = 0x4

.field private static final STATE_STARTED:I = 0x3

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mInParole:Z

.field private mMsgWhat:I

.field private mNotifyHandler:Landroid/os/Handler;

.field private mParoleArray:[J

.field private mParoleCheckHandler:Landroid/os/Handler;

.field private mParoleIndex:I

.field private mParoleLock:Ljava/lang/Object;

.field private state:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .locals 3
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "msgWhat"    # I

    .prologue
    const/4 v2, 0x0

    .line 1606
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1598
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1600
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1601
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1602
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    .line 1607
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    .line 1608
    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    .line 1609
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1617
    .local v0, "paroleCheckCallback":Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    .line 1618
    return-void

    .line 1596
    :array_0
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method static synthetic access$1800(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1587
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private enterParoleAndNotifyLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1685
    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1686
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1687
    return-void
.end method

.method private enterParoleLocked()V
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1678
    return-void
.end method

.method private exitParoleAndNotifyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1690
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1691
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1692
    return-void
.end method

.method private exitParoleLocked()V
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1682
    return-void
.end method

.method private onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3ea

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1695
    const/4 v3, 0x1

    .line 1696
    .local v3, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1734
    const/4 v3, 0x0

    .line 1738
    :cond_0
    :goto_0
    return v3

    .line 1698
    :pswitch_0
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1701
    iput v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1702
    iput v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1703
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v4, :cond_0

    .line 1704
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    aget-wide v0, v4, v6

    .line 1705
    .local v0, "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1710
    .end local v0    # "delayMillis":J
    :pswitch_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v4, v7, :cond_0

    .line 1713
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v4, :cond_1

    .line 1714
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "Parole check array is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1718
    :cond_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 1719
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    .line 1723
    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v2, v4

    .line 1724
    .local v2, "length":I
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    .line 1725
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1729
    :goto_2
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v0, v4, v5

    .line 1730
    .restart local v0    # "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1721
    .end local v0    # "delayMillis":J
    .end local v2    # "length":I
    :cond_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    goto :goto_1

    .line 1727
    .restart local v2    # "length":I
    :cond_3
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_2

    .line 1696
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isInParoleState()Z
    .locals 2

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1672
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    monitor-exit v1

    return v0

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWorking()Z
    .locals 2

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1663
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    monitor-exit v1

    .line 1666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParoleCheckParam([J)V
    .locals 4
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x4

    .line 1641
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1642
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1643
    .local v0, "initState":I
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v1, v3, :cond_1

    .line 1644
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    .line 1647
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V
    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1700(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1649
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1650
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_5

    .line 1651
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1655
    :cond_3
    :goto_0
    if-ne v0, v3, :cond_4

    .line 1656
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    .line 1658
    :cond_4
    monitor-exit v2

    .line 1659
    return-void

    .line 1652
    :cond_5
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 1653
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    goto :goto_0

    .line 1658
    .end local v0    # "initState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startParoleCheck()V
    .locals 3

    .prologue
    .line 1621
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1622
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    .line 1623
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1624
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1625
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1627
    :cond_0
    monitor-exit v1

    .line 1628
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopParoleCheck()V
    .locals 3

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1632
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v0, :cond_0

    .line 1633
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1634
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1635
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1637
    :cond_0
    monitor-exit v1

    .line 1638
    return-void

    .line 1637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

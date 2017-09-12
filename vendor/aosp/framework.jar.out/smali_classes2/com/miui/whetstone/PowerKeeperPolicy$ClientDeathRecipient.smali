.class Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;)V
    .locals 0
    .param p2, "bleScanWrapper"    # Landroid/bluetooth/BleScanWrapper;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1563
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 1567
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder is dead - unregistering client ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$700(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1569
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v2

    .line 1570
    .local v2, "leScanAllowedBefore":Z
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1500(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 1571
    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v0, :cond_1

    .line 1572
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    .line 1573
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    .line 1574
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1500(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    :cond_1
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v1

    .line 1577
    .local v1, "leScanAllowedAfter":Z
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1600(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1578
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1700(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1580
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1600(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1581
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1600(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    .line 1583
    :cond_3
    monitor-exit v4

    .line 1584
    return-void

    .line 1583
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v1    # "leScanAllowedAfter":Z
    .end local v2    # "leScanAllowedBefore":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

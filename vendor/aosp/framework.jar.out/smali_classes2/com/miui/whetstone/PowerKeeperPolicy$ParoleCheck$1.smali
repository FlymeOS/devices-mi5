.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field final synthetic val$this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->val$this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->access$1800(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1613
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->access$1900(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

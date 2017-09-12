.class Lcom/miui/whetstone/PowerKeeperPolicy$2;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->bleScanInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$700(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1141
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->onLeScanMessageHandler(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Message;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

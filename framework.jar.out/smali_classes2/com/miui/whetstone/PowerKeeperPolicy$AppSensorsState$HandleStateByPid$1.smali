.class Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;
.super Ljava/util/TimerTask;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->setHandleOperationPendingState(Landroid/os/IBinder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;->this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "PowerKeeperPolicy"

    const-string v1, "setHandleOperationPendingState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;->this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->pauseSensorsForPending()V

    .line 285
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;->this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    const/4 v1, 0x0

    # setter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPendSensor:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->access$202(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;Ljava/util/Timer;)Ljava/util/Timer;

    .line 286
    return-void
.end method

.class Lcom/miui/server/BackupManagerService$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathLinker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "x1"    # Lcom/miui/server/BackupManagerService$1;

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 698
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # invokes: Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$900(Lcom/miui/server/BackupManagerService;)V

    .line 699
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v2, -0x1

    # setter for: Lcom/miui/server/BackupManagerService;->mOwnerPid:I
    invoke-static {v1, v2}, Lcom/miui/server/BackupManagerService;->access$1002(Lcom/miui/server/BackupManagerService;I)I

    .line 700
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$1200(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$1100(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 701
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;
    invoke-static {v1, v2}, Lcom/miui/server/BackupManagerService;->access$1202(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # invokes: Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$1300(Lcom/miui/server/BackupManagerService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

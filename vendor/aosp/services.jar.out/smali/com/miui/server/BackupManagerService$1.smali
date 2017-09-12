.class Lcom/miui/server/BackupManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 94
    :cond_0
    monitor-exit v1

    .line 96
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "x1"    # Lcom/miui/server/BackupManagerService$1;

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V

    .line 655
    :cond_1
    return-void
.end method

.method public onEndBackup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupEnd(Ljava/lang/String;I)V

    .line 662
    :cond_0
    return-void
.end method

.method public onEndRestore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreEnd(Ljava/lang/String;I)V

    .line 682
    :cond_0
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;I)V

    .line 674
    :cond_0
    return-void
.end method

.method public onStartBackup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    return-void
.end method

.method public onStartRestore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    return-void
.end method

.method public onTimeout()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    return-void
.end method

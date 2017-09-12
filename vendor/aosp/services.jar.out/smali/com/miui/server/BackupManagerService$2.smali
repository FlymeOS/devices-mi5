.class Lcom/miui/server/BackupManagerService$2;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;I)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    iput p2, p0, Lcom/miui/server/BackupManagerService$2;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 232
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 235
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    :try_start_0
    iget v1, p0, Lcom/miui/server/BackupManagerService$2;->val$token:I

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/server/BackupManagerService;->access$400(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;

    iget-object v7, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V

    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v6

    .line 237
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManagerService"

    const-string v2, "acknowledgeFullBackupOrRestore failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

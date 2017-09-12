.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
.super Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;


# direct methods
.method private constructor <init>(Lmiui/app/backup/BackupManager;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-direct {p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/app/backup/BackupManager;
    .param p2, "x1"    # Lmiui/app/backup/BackupManager$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;)V

    return-void
.end method


# virtual methods
.method public onBackupEnd(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :goto_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2

    .line 341
    :goto_1
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :try_start_2
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 348
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    :cond_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupEnd(Ljava/lang/String;I)V

    .line 356
    :cond_2
    :try_start_5
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 357
    :try_start_6
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 358
    monitor-exit v2

    .line 362
    :goto_2
    return-void

    .line 358
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 359
    :catch_2
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Backup:BackupManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onBackupStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    # setter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->access$102(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 308
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupStart(Ljava/lang/String;I)V

    .line 310
    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;-><init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->start()V

    .line 329
    :cond_0
    return-void
.end method

.method public onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "progType"    # I
    .param p4, "prog"    # J
    .param p6, "total"    # J

    .prologue
    .line 399
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 402
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onError(Ljava/lang/String;II)V

    .line 369
    :cond_0
    return-void
.end method

.method public onRestoreEnd(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreEnd(Ljava/lang/String;I)V

    .line 385
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v2

    .line 391
    :goto_0
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Backup:BackupManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onRestoreError(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    return-void
.end method

.method public onRestoreStart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreStart(Ljava/lang/String;I)V

    .line 376
    :cond_0
    return-void
.end method

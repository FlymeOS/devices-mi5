.class Lcom/miui/server/BackupManagerServiceProxy;
.super Ljava/lang/Object;
.source "BackupManagerServiceProxy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 10
    .param p0, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 11
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 12
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x1

    move-object v1, p0

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move-object v9, p1

    invoke-interface/range {v0 .. v9}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 13
    return-void
.end method

.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x2

.field public static DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static DOMAIN_BAK:Ljava/lang/String; = null

.field public static DOMAIN_END:Ljava/lang/String; = null

.field public static DOMAIN_META:Ljava/lang/String; = null

.field public static final ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERR_BAKFILE_BROKEN:I = 0x6

.field public static final ERR_BINDER_DIED:I = 0x8

.field public static final ERR_IO_PERMISSION:I = 0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NO_BACKUPAGENT:I = 0x2

.field public static final ERR_UNKNOWN:I = 0x1

.field public static final ERR_VERSION_TOO_OLD:I = 0x5

.field public static final ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final FEATURE_FULL_BACKUP:I = -0x1

.field public static final PROG_TYPE_NORMAL:I = 0x0

.field public static final PROG_TYPE_RECORD:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final STATE_BACKUP:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManager"

.field private static mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupRestoreLatch:Ljava/lang/Object;

.field private mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private mContext:Landroid/content/Context;

.field private mICaller:Landroid/os/IBinder;

.field private mIsAcquired:Z

.field private mPips:[Landroid/os/ParcelFileDescriptor;

.field private mService:Lmiui/app/backup/IBackupManager;

.field private mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    .line 56
    const-string v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    .line 57
    const-string v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    .line 58
    const-string v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    .line 103
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    .line 140
    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 141
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    .line 142
    return-void
.end method

.method static synthetic access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lmiui/app/backup/BackupManager;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0
    .param p0, "x0"    # Lmiui/app/backup/BackupManager;
    .param p1, "x1"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 26
    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .locals 1
    .param p0, "x0"    # Lmiui/app/backup/BackupManager;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lmiui/app/backup/BackupManager;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/app/backup/BackupManager;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 132
    .local v0, "instance":Lmiui/app/backup/BackupManager;
    :goto_0
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lmiui/app/backup/BackupManager;

    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    invoke-direct {v0, p0}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 134
    .restart local v0    # "instance":Lmiui/app/backup/BackupManager;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    .line 136
    :cond_0
    return-object v0

    .line 131
    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    :cond_1
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/BackupManager;

    move-object v0, v1

    goto :goto_0
.end method

.method public static isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "isSysApp":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 112
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "isSysApp":Z
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    .line 127
    :cond_1
    return v0
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .locals 3
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 73
    :try_start_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    .line 145
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You must acquire first to use the backup or restore service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 150
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_2

    .line 152
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    .line 153
    iget-object v12, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-instance v10, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v4, 0x0

    invoke-direct {v10, p0, v4}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$1;)V

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v1 .. v10}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 158
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 159
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 169
    :try_start_2
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    :cond_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :catch_0
    move-exception v11

    .line 161
    .local v11, "e":Ljava/io/IOException;
    :try_start_5
    const-string v1, "Backup:BackupManager"

    const-string v2, "create pipe failed"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 169
    :try_start_6
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    :cond_3
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v11

    .line 176
    const-string v1, "Backup:BackupManager"

    const-string v2, "IOException"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 176
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "IOException"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 163
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "Backup:BackupManager"

    const-string v2, "Remove invoking failed"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 167
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 169
    :try_start_8
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    :cond_4
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 175
    :catch_4
    move-exception v11

    .line 176
    .local v11, "e":Ljava/io/IOException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "IOException"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v11    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 165
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v1, "Backup:BackupManager"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 167
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 169
    :try_start_a
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    :cond_5
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 175
    :catch_6
    move-exception v11

    .line 176
    .local v11, "e":Ljava/io/IOException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "IOException"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 167
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_7

    .line 169
    :try_start_b
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    :cond_6
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 173
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 177
    :cond_7
    :goto_1
    throw v1

    .line 175
    :catch_7
    move-exception v11

    .line 176
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v2, "Backup:BackupManager"

    const-string v3, "IOException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentWorkingFeature()I
    .locals 3

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isServiceIdle()Z
    .locals 3

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "isIdle":Z
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .locals 2
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceRestore"    # Z
    .param p4, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    const/4 v8, 0x0

    .line 186
    iget-boolean v3, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You must acquire first to use the backup or restore service"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 195
    const/4 v3, 0x1

    aget-object v2, v1, v3

    .line 196
    .local v2, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v3, p0, p1, v2}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v3}, Lmiui/app/backup/BackupManager$1;->start()V

    .line 228
    iget-object v3, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    new-instance v6, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$1;)V

    invoke-interface {v3, v5, p2, p3, v6}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 230
    iget-object v3, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 231
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v1, :cond_1

    aget-object v3, v1, v8

    if-eqz v3, :cond_1

    .line 241
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    .end local v2    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 231
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "Backup:BackupManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 239
    if-eqz v1, :cond_1

    aget-object v3, v1, v8

    if-eqz v3, :cond_1

    .line 241
    const/4 v3, 0x0

    :try_start_6
    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v3, "Backup:BackupManager"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    if-eqz v1, :cond_1

    aget-object v3, v1, v8

    if-eqz v3, :cond_1

    .line 241
    const/4 v3, 0x0

    :try_start_8
    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 242
    :catch_4
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 239
    if-eqz v1, :cond_1

    aget-object v3, v1, v8

    if-eqz v3, :cond_1

    .line 241
    const/4 v3, 0x0

    :try_start_a
    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 242
    :catch_6
    move-exception v0

    .line 243
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    aget-object v4, v1, v8

    if-eqz v4, :cond_2

    .line 241
    const/4 v4, 0x0

    :try_start_b
    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 244
    :cond_2
    :goto_1
    throw v3

    .line 242
    :catch_7
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Backup:BackupManager"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCustomProgress(III)V
    .locals 3
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I

    .prologue
    .line 294
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsNeedBeKilled(Z)V
    .locals 3
    .param p1, "isNeedBeKilled"    # Z

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setWorkingError(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

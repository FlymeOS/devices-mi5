.class public abstract Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;
.super Landroid/os/AsyncTask;
.source "MigrateEstimateTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final Vi:Landroid/os/storage/StorageManager;

.field private final Vj:Ljava/util/concurrent/CountDownLatch;

.field private Vk:Lcom/android/internal/app/IMediaContainerService;

.field private Vl:J

.field private final mContext:Landroid/content/Context;

.field private mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vj:Ljava/util/concurrent/CountDownLatch;

    .line 59
    iput-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    .line 60
    iput-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mTimeMillis:J

    .line 63
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    .line 64
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vi:Landroid/os/storage/StorageManager;

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Long;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 110
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    .line 111
    iget-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0xa00000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mTimeMillis:J

    .line 112
    iget-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mTimeMillis:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mTimeMillis:J

    .line 114
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mTimeMillis:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->f([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected varargs f([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 77
    iget-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vi:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    const-string v0, "StorageSettings"

    const-string v1, "Failed to find current primary storage"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimating for current path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, p0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vj:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vk:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    :goto_2
    :try_start_1
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to measure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 99
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vk:Lcom/android/internal/app/IMediaContainerService;

    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 125
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public abstract u(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public v(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 68
    const-string v0, "size_bytes"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    .line 69
    return-void
.end method

.method public w(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 72
    const-string v0, "size_bytes"

    iget-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MigrateEstimateTask;->Vl:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    return-void
.end method

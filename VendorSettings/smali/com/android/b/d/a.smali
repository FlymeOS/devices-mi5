.class public Lcom/android/b/d/a;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static final aKl:Ljava/util/Set;

.field private static aKm:Ljava/util/HashMap;


# instance fields
.field private final VZ:Landroid/os/storage/VolumeInfo;

.field private final Vq:Landroid/os/storage/VolumeInfo;

.field private aKn:Ljava/lang/ref/WeakReference;

.field private final aKo:Lcom/android/b/d/c;

.field private final aKp:Lcom/android/b/d/e;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 78
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/b/d/a;->LOGV:Z

    .line 82
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/b/d/a;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/b/d/a;->aKl:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/b/d/a;->aKm:Ljava/util/HashMap;

    .line 95
    const-string v0, "external"

    .line 96
    sget-object v1, Lcom/android/b/d/a;->aKm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/android/b/d/a;->aKm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/android/b/d/a;->aKm:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/d/a;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    .line 178
    iput-object p3, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    .line 181
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v1, Lcom/android/b/d/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/d/c;-><init>(Lcom/android/b/d/a;Lcom/android/b/d/b;)V

    iput-object v1, p0, Lcom/android/b/d/a;->aKo:Lcom/android/b/d/c;

    .line 185
    new-instance v1, Lcom/android/b/d/e;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/b/d/e;-><init>(Lcom/android/b/d/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    .line 186
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 621
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "sum(_size)"

    aput-object v1, v2, v5

    .line 624
    const-string v1, "_data like?"

    .line 625
    new-array v4, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 629
    :try_start_0
    const-string v3, "_data like?"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 632
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 639
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_0
    :goto_0
    return-wide v0

    .line 639
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 639
    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 636
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 5

    .prologue
    .line 539
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v0

    .line 540
    const-string v2, "StorageMeasurement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDirectorySize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-wide v0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/b/d/a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/b/d/a;->aKn:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static a(Landroid/util/SparseLongArray;)V
    .locals 4

    .prologue
    .line 604
    const/4 v0, 0x0

    const/16 v1, 0x3e7

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/android/b/d/a;->a(Landroid/util/SparseLongArray;IJ)V

    .line 605
    return-void
.end method

.method private static a(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/android/b/d/a;Lcom/android/b/d/d;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/b/d/a;->c(Lcom/android/b/d/d;)V

    return-void
.end method

.method static synthetic a(Lcom/android/b/d/a;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/b/d/a;->a(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method private static a(Lcom/android/b/d/d;J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    invoke-static {v0, v1, p1, p2}, Lcom/android/b/d/a;->b(Landroid/util/SparseLongArray;IJ)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    invoke-static {v0, v1, p1, p2}, Lcom/android/b/d/a;->a(Landroid/util/SparseLongArray;IJ)V

    .line 587
    return-void
.end method

.method private a(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-object v0, p0, Lcom/android/b/d/a;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 398
    iget-object v2, p0, Lcom/android/b/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 400
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 401
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 404
    new-instance v2, Lcom/android/b/d/d;

    invoke-direct {v2}, Lcom/android/b/d/d;-><init>()V

    .line 405
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/android/b/d/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 408
    iget-object v0, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    :cond_0
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 414
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 415
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 416
    iget-object v3, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v9

    .line 417
    new-instance v10, Ljava/util/HashMap;

    sget-object v3, Lcom/android/b/d/a;->aKl:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 418
    iget-object v3, v2, Lcom/android/b/d/d;->aKu:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/android/b/d/a;->aKl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 428
    sget-object v3, Lcom/android/b/d/a;->aKm:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 429
    if-eqz v3, :cond_4

    .line 430
    iget-object v13, p0, Lcom/android/b/d/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v13, v12}, Lcom/android/b/d/a;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 432
    :cond_4
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 445
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 446
    iget-object v6, p0, Lcom/android/b/d/a;->VZ:Landroid/os/storage/VolumeInfo;

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v6

    .line 447
    invoke-static {p1, v6}, Lcom/android/b/d/a;->a(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    .line 448
    iget-object v6, v2, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0, v10, v11}, Lcom/android/b/d/a;->a(Landroid/util/SparseLongArray;IJ)V

    goto :goto_2

    .line 453
    :cond_6
    iget-object v0, v2, Lcom/android/b/d/d;->aKu:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/b/d/a;->e(Landroid/util/SparseArray;)V

    .line 454
    iget-object v0, v2, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    invoke-static {v0}, Lcom/android/b/d/a;->a(Landroid/util/SparseLongArray;)V

    .line 458
    :cond_7
    iget-object v0, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_8

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/b/d/d;->aKr:J

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/b/d/d;->aKs:J

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 466
    const/16 v0, 0x2200

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 470
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 472
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/b/d/a;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 473
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 477
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    mul-int v6, v0, v3

    .line 478
    if-nez v6, :cond_b

    .line 479
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 483
    :cond_b
    new-instance v0, Lcom/android/b/d/h;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct/range {v0 .. v6}, Lcom/android/b/d/h;-><init>(ZLcom/android/b/d/d;ILjava/util/List;Landroid/os/Message;I)V

    .line 485
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 486
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 487
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2, v5, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_4

    .line 492
    :cond_d
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/b/d/a;)Lcom/android/b/d/c;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/b/d/a;->aKo:Lcom/android/b/d/c;

    return-object v0
.end method

.method private static b(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 575
    if-ltz v0, :cond_0

    .line 576
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 578
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/b/d/d;J)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lcom/android/b/d/a;->a(Lcom/android/b/d/d;J)V

    return-void
.end method

.method static synthetic c(Lcom/android/b/d/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/b/d/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/android/b/d/a;->b(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method private c(Lcom/android/b/d/d;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 499
    iget-wide v0, p1, Lcom/android/b/d/d;->aKr:J

    .line 500
    iget-wide v2, p1, Lcom/android/b/d/d;->aKs:J

    sub-long/2addr v0, v2

    .line 501
    iget-object v2, p1, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p1, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 504
    :cond_0
    iget-wide v2, p1, Lcom/android/b/d/d;->cacheSize:J

    sub-long v2, v0, v2

    .line 505
    iget-object v0, p1, Lcom/android/b/d/d;->aKu:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p1, Lcom/android/b/d/d;->aKu:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 507
    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 510
    sub-long v0, v2, v0

    move-wide v2, v0

    .line 511
    goto :goto_0

    .line 518
    :cond_1
    iget-object v1, p1, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    .line 519
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 520
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    .line 521
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eq v6, v7, :cond_2

    const/16 v7, 0x63

    if-eq v6, v7, :cond_2

    const/16 v7, 0x3e7

    if-ne v6, v7, :cond_3

    .line 519
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    :cond_3
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    sub-long/2addr v2, v6

    goto :goto_2

    .line 528
    :cond_4
    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    move-wide v2, v4

    .line 531
    :cond_5
    iget-object v0, p1, Lcom/android/b/d/d;->aKv:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_6

    .line 532
    iget-object v0, p1, Lcom/android/b/d/d;->aKv:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 534
    :cond_6
    return-void
.end method

.method static synthetic d(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/android/b/d/a;->a(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method private static e(Landroid/util/SparseArray;)V
    .locals 10

    .prologue
    .line 590
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 591
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 592
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    return-void

    .line 598
    :cond_1
    sget-object v2, Lcom/android/b/d/a;->aKl:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 599
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public Au()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/b/d/a;->invalidate()V

    .line 196
    invoke-virtual {p0}, Lcom/android/b/d/a;->Av()V

    .line 197
    return-void
.end method

.method public Av()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->sendEmptyMessage(I)Z

    .line 203
    :cond_0
    return-void
.end method

.method public a(Lcom/android/b/d/g;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/b/d/a;->aKn:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/d/a;->aKn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/b/d/a;->aKn:Ljava/lang/ref/WeakReference;

    .line 192
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/d/a;->aKn:Ljava/lang/ref/WeakReference;

    .line 207
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/b/d/a;->aKp:Lcom/android/b/d/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

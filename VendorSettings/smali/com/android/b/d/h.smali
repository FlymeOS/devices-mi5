.class Lcom/android/b/d/h;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# instance fields
.field private Wo:I

.field private final aIB:I

.field private final aKC:Z

.field private final aKD:Lcom/android/b/d/d;

.field private final aKE:Landroid/os/Message;


# direct methods
.method public constructor <init>(ZLcom/android/b/d/d;ILjava/util/List;Landroid/os/Message;I)V
    .locals 6

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 227
    iput-boolean p1, p0, Lcom/android/b/d/h;->aKC:Z

    .line 228
    iput-object p2, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    .line 229
    iput p3, p0, Lcom/android/b/d/h;->aIB:I

    .line 230
    if-eqz p1, :cond_0

    .line 232
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 233
    iget-object v2, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-object v2, v2, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    .line 236
    :cond_0
    iput-object p5, p0, Lcom/android/b/d/h;->aKE:Landroid/os/Message;

    .line 237
    iput p6, p0, Lcom/android/b/d/h;->Wo:I

    .line 238
    return-void
.end method

.method private c(Landroid/content/pm/PackageStats;)V
    .locals 10

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/b/d/h;->aKC:Z

    if-eqz v0, :cond_2

    .line 254
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 255
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 256
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 257
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 261
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 262
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 266
    :cond_0
    iget-object v6, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-object v6, v6, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    add-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Lcom/android/b/d/a;->c(Landroid/util/SparseLongArray;IJ)V

    .line 270
    iget-object v4, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-object v4, v4, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    iget v5, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/b/d/a;->d(Landroid/util/SparseLongArray;IJ)V

    .line 274
    iget v4, p1, Landroid/content/pm/PackageStats;->userHandle:I

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_1

    .line 275
    iget-object v4, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    invoke-static {v4, v2, v3}, Lcom/android/b/d/a;->b(Lcom/android/b/d/d;J)V

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-wide v4, v2, Lcom/android/b/d/d;->cacheSize:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/android/b/d/d;->cacheSize:J

    .line 289
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-object v0, v0, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    iget v1, p0, Lcom/android/b/d/h;->aIB:I

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/b/d/a;->d(Landroid/util/SparseLongArray;IJ)V

    .line 287
    iget-object v0, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    iget-wide v2, v0, Lcom/android/b/d/d;->cacheSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/b/d/d;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/b/d/h;->aKD:Lcom/android/b/d/d;

    monitor-enter v1

    .line 243
    if-eqz p2, :cond_0

    .line 244
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/b/d/h;->c(Landroid/content/pm/PackageStats;)V

    .line 246
    :cond_0
    iget v0, p0, Lcom/android/b/d/h;->Wo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/b/d/h;->Wo:I

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/b/d/h;->aKE:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    :cond_1
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

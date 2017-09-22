.class public Lcom/android/b/a/a;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# static fields
.field static final UB:Ljava/lang/Object;

.field static aHW:Lcom/android/b/a/a;

.field public static final aIA:Lcom/android/b/a/p;

.field public static final aIo:Ljava/util/Comparator;

.field public static final aIp:Ljava/util/Comparator;

.field public static final aIq:Ljava/util/Comparator;

.field public static final aIr:Ljava/util/Comparator;

.field public static final aIs:Lcom/android/b/a/p;

.field public static final aIt:Lcom/android/b/a/p;

.field public static final aIu:Lcom/android/b/a/p;

.field public static final aIv:Lcom/android/b/a/p;

.field public static final aIw:Lcom/android/b/a/p;

.field public static final aIx:Lcom/android/b/a/p;

.field public static final aIy:Lcom/android/b/a/p;

.field public static final aIz:Lcom/android/b/a/p;

.field static final apf:Ljava/util/regex/Pattern;


# instance fields
.field final Oh:Lcom/android/b/a/z;

.field final aHX:Landroid/content/pm/IPackageManager;

.field final aHY:I

.field final aHZ:I

.field aIa:Lcom/android/b/a/v;

.field aIb:Z

.field final aIc:Ljava/util/ArrayList;

.field final aId:Ljava/util/ArrayList;

.field final aIe:Landroid/util/SparseArray;

.field final aIf:Ljava/util/ArrayList;

.field aIg:Ljava/util/List;

.field aIh:J

.field aIi:Ljava/lang/String;

.field aIj:I

.field aIk:Z

.field final aIl:Ljava/util/ArrayList;

.field final aIm:Lcom/android/b/a/q;

.field final aIn:Lcom/android/b/a/u;

.field final aN:Landroid/os/UserManager;

.field final i:Landroid/content/pm/PackageManager;

.field final j:Landroid/os/HandlerThread;

.field final mContext:Landroid/content/Context;

.field mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/b/a/a;->apf:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->UB:Ljava/lang/Object;

    .line 1305
    new-instance v0, Lcom/android/b/a/b;

    invoke-direct {v0}, Lcom/android/b/a/b;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIo:Ljava/util/Comparator;

    .line 1313
    new-instance v0, Lcom/android/b/a/g;

    invoke-direct {v0}, Lcom/android/b/a/g;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIp:Ljava/util/Comparator;

    .line 1326
    new-instance v0, Lcom/android/b/a/h;

    invoke-direct {v0}, Lcom/android/b/a/h;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIq:Ljava/util/Comparator;

    .line 1337
    new-instance v0, Lcom/android/b/a/i;

    invoke-direct {v0}, Lcom/android/b/a/i;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIr:Ljava/util/Comparator;

    .line 1353
    new-instance v0, Lcom/android/b/a/j;

    invoke-direct {v0}, Lcom/android/b/a/j;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIs:Lcom/android/b/a/p;

    .line 1366
    new-instance v0, Lcom/android/b/a/k;

    invoke-direct {v0}, Lcom/android/b/a/k;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIt:Lcom/android/b/a/p;

    .line 1381
    new-instance v0, Lcom/android/b/a/l;

    invoke-direct {v0}, Lcom/android/b/a/l;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIu:Lcom/android/b/a/p;

    .line 1394
    new-instance v0, Lcom/android/b/a/m;

    invoke-direct {v0}, Lcom/android/b/a/m;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIv:Lcom/android/b/a/p;

    .line 1411
    new-instance v0, Lcom/android/b/a/n;

    invoke-direct {v0}, Lcom/android/b/a/n;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIw:Lcom/android/b/a/p;

    .line 1426
    new-instance v0, Lcom/android/b/a/c;

    invoke-direct {v0}, Lcom/android/b/a/c;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIx:Lcom/android/b/a/p;

    .line 1436
    new-instance v0, Lcom/android/b/a/d;

    invoke-direct {v0}, Lcom/android/b/a/d;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIy:Lcom/android/b/a/p;

    .line 1446
    new-instance v0, Lcom/android/b/a/e;

    invoke-direct {v0}, Lcom/android/b/a/e;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIz:Lcom/android/b/a/p;

    .line 1456
    new-instance v0, Lcom/android/b/a/f;

    invoke-direct {v0}, Lcom/android/b/a/f;-><init>()V

    sput-object v0, Lcom/android/b/a/a;->aIA:Lcom/android/b/a/p;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aId:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/android/b/a/z;

    invoke-direct {v0}, Lcom/android/b/a/z;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->Oh:Lcom/android/b/a/z;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    .line 119
    iput-wide v2, p0, Lcom/android/b/a/a;->aIh:J

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/b/a/u;

    invoke-direct {v0, p0}, Lcom/android/b/a/u;-><init>(Lcom/android/b/a/a;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    .line 132
    iput-object p1, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->i:Landroid/content/pm/PackageManager;

    .line 134
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->aHX:Landroid/content/pm/IPackageManager;

    .line 135
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/b/a/a;->aN:Landroid/os/UserManager;

    .line 136
    iget-object v0, p0, Lcom/android/b/a/a;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 137
    iget-object v2, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/b/a/a;->j:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/android/b/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v0, Lcom/android/b/a/q;

    iget-object v1, p0, Lcom/android/b/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/b/a/q;-><init>(Lcom/android/b/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    .line 145
    const v0, 0xa200

    iput v0, p0, Lcom/android/b/a/a;->aHY:I

    .line 148
    const v0, 0x8200

    iput v0, p0, Lcom/android/b/a/a;->aHZ:I

    .line 165
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_1
    :try_start_1
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private F(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 270
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 272
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi.xmsf"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 278
    :cond_2
    return-void
.end method

.method private a(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 528
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/app/Application;)Lcom/android/b/a/a;
    .locals 2

    .prologue
    .line 90
    sget-object v1, Lcom/android/b/a/a;->UB:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/android/b/a/a;->aHW:Lcom/android/b/a/a;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/b/a/a;

    invoke-direct {v0, p0}, Lcom/android/b/a/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/b/a/a;->aHW:Lcom/android/b/a/a;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/b/a/a;->aHW:Lcom/android/b/a/a;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/android/b/a/a;Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/a/a;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/b/a/a;->n(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/a/a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/b/a/a;->zh()V

    return-void
.end method

.method static synthetic a(Lcom/android/b/a/a;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->dT(I)V

    return-void
.end method

.method private b(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 535
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 539
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/b/a/a;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/android/b/a/a;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/b/a/a;->removeUser(I)V

    return-void
.end method

.method private c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;
    .locals 8

    .prologue
    .line 508
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 509
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 511
    if-nez v0, :cond_1

    .line 513
    new-instance v1, Lcom/android/b/a/o;

    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/b/a/a;->aIh:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/b/a/a;->aIh:J

    invoke-direct {v1, v0, p1, v4, v5}, Lcom/android/b/a/o;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 514
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 519
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    iget-object v1, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 517
    iput-object p1, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method private dT(I)V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/b/a/a;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/b/a/a;->zk()V

    .line 482
    invoke-virtual {p0}, Lcom/android/b/a/a;->zg()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 487
    :cond_1
    monitor-exit v1

    .line 489
    :cond_2
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private n(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 566
    sget-object v1, Lcom/android/b/a/a;->apf:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUser(I)V
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 494
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 496
    iget-object v3, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v3, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 499
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 500
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 504
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    return-void
.end method

.method private v(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 338
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 340
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 345
    :goto_1
    return-object v0

    .line 338
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zh()V
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 469
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->z(Ljava/lang/String;I)V

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->y(Ljava/lang/String;I)V

    .line 471
    return-void
.end method

.method public a(Lcom/android/b/a/s;)Lcom/android/b/a/w;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/android/b/a/w;

    invoke-direct {v0, p0, p1}, Lcom/android/b/a/w;-><init>(Lcom/android/b/a/a;Lcom/android/b/a/s;)V

    .line 179
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v1

    .line 182
    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u(Ljava/lang/String;I)Lcom/android/b/a/o;
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v2

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 318
    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/b/a/a;->v(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 320
    if-nez v1, :cond_0

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/android/b/a/a;->aHX:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 328
    :cond_0
    if-eqz v1, :cond_1

    .line 329
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/b/a/a;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;

    move-result-object v0

    .line 333
    :cond_1
    monitor-exit v2

    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "ApplicationsState"

    const-string v3, "getEntry couldn\'t reach PackageManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public w(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/b/a/a;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    iget-object v2, v2, Lcom/android/b/a/q;->aIQ:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 367
    :cond_0
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method x(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 386
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    move v0, v1

    .line 391
    :goto_1
    return v0

    .line 384
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method y(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :try_start_1
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-nez v0, :cond_0

    .line 404
    monitor-exit v1

    .line 435
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->x(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 409
    monitor-exit v1

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0

    .line 411
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/b/a/a;->aHX:Landroid/content/pm/IPackageManager;

    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/b/a/a;->aHY:I

    :goto_1
    invoke-interface {v2, p1, v0, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 414
    if-nez v0, :cond_3

    .line 415
    monitor-exit v1

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lcom/android/b/a/a;->aHZ:I

    goto :goto_1

    .line 417
    :cond_3
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    .line 418
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 420
    monitor-exit v1

    goto :goto_0

    .line 422
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/b/a/a;->aIb:Z

    .line 424
    :cond_5
    iget-object v2, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 432
    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public z(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v3, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v3

    .line 440
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/a;->x(Ljava/lang/String;I)I

    move-result v4

    .line 442
    if-ltz v4, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 450
    iget-object v1, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 451
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/a;->aIb:Z

    move v1, v2

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/a;->aIb:Z

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 465
    :cond_2
    monitor-exit v3

    .line 466
    return-void

    .line 453
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zf()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/b/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method zg()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput-boolean v6, p0, Lcom/android/b/a/a;->mResumed:Z

    .line 190
    iget-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    if-nez v0, :cond_2

    .line 191
    new-instance v0, Lcom/android/b/a/v;

    invoke-direct {v0, p0, v8}, Lcom/android/b/a/v;-><init>(Lcom/android/b/a/a;Lcom/android/b/a/b;)V

    iput-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    .line 192
    iget-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    invoke-virtual {v0}, Lcom/android/b/a/v;->zn()V

    .line 194
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/android/b/a/a;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    :cond_3
    iget-object v3, p0, Lcom/android/b/a/a;->aHX:Landroid/content/pm/IPackageManager;

    iget v4, p0, Lcom/android/b/a/a;->aHZ:I

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v3, v4, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 209
    iget-object v3, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_1

    .line 215
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    :cond_5
    const-string v0, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEntriesMap contains userIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/b/a/a;->Oh:Lcom/android/b/a/z;

    iget-object v2, p0, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/b/a/z;->e(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    invoke-direct {p0}, Lcom/android/b/a/a;->zh()V

    .line 232
    :cond_6
    iput-boolean v1, p0, Lcom/android/b/a/a;->aIb:Z

    move v2, v1

    .line 233
    :goto_3
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 234
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 237
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_a

    .line 238
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 240
    add-int/lit8 v2, v2, -0x1

    .line 233
    :cond_7
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v1

    .line 227
    :goto_5
    iget-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    iput-boolean v6, v0, Lcom/android/b/a/o;->aIM:Z

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 243
    :cond_9
    iput-boolean v6, p0, Lcom/android/b/a/a;->aIb:Z

    .line 245
    :cond_a
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 247
    const-string v3, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The current packageName is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  current info\'s userId is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/a/o;

    .line 249
    if-eqz v1, :cond_7

    .line 250
    iput-object v0, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/b/a/a;->F(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 257
    invoke-direct {p0}, Lcom/android/b/a/a;->zh()V

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-static {v0}, Lcom/android/b/a;->E(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    .line 261
    iput-object v8, p0, Lcom/android/b/a/a;->aIi:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    invoke-virtual {v0, v7}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    invoke-virtual {v0, v7}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public zi()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/b/a/a;->aIb:Z

    return v0
.end method

.method zj()V
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-boolean v0, v0, Lcom/android/b/a/w;->mResumed:Z

    if-nez v0, :cond_0

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/b/a/a;->zk()V

    goto :goto_0
.end method

.method zk()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/a;->mResumed:Z

    .line 306
    iget-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    invoke-virtual {v0}, Lcom/android/b/a/v;->unregisterReceiver()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/a;->aIa:Lcom/android/b/a/v;

    .line 310
    :cond_0
    return-void
.end method

.method zl()V
    .locals 4

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v2

    .line 551
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/a;->aIk:Z

    if-nez v0, :cond_0

    .line 552
    monitor-exit v2

    .line 562
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    .line 557
    iget-boolean v3, v0, Lcom/android/b/a/w;->mResumed:Z

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 561
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

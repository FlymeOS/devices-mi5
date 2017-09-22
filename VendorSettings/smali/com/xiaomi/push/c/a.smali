.class public Lcom/xiaomi/push/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrafficDatabaseHelper.java"


# static fields
.field private static PG:I

.field public static final bcQ:Ljava/lang/Object;

.field private static final bcR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    sput v3, Lcom/xiaomi/push/c/a;->PG:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/c/a;->bcQ:Ljava/lang/Object;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const-string v1, "TEXT"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "message_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " INT DEFAULT -1 "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rcv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " INT DEFAULT -1 "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "imsi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/c/a;->bcR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 27
    const-string v0, "traffic.db"

    const/4 v1, 0x0

    sget v2, Lcom/xiaomi/push/c/a;->PG:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method

.method private p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/c/a;->bcR:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    sget-object v2, Lcom/xiaomi/push/c/a;->bcR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/c/a;->bcR:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 32
    sget-object v1, Lcom/xiaomi/push/c/a;->bcQ:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/c/a;->p(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 39
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

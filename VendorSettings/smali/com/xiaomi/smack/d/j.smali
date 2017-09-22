.class public Lcom/xiaomi/smack/d/j;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# static fields
.field private static bjS:Lcom/xiaomi/channel/commonutils/c/f;

.field private static bjU:I

.field private static bjV:Ljava/util/List;

.field private static bjW:Ljava/lang/String;

.field private static bjX:Lcom/xiaomi/push/c/a;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/commonutils/c/f;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/smack/d/j;->bjU:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/d/j;->lock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjV:Ljava/util/List;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjW:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjX:Lcom/xiaomi/push/c/a;

    return-void
.end method

.method static synthetic Kg()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjV:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V
    .locals 11

    .prologue
    .line 109
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    .line 110
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/smack/d/j;->getNetworkType(Landroid/content/Context;)I

    move-result v4

    .line 116
    const/4 v0, -0x1

    if-eq v0, v4, :cond_0

    .line 121
    sget-object v9, Lcom/xiaomi/smack/d/j;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 122
    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    .line 123
    new-instance v0, Lcom/xiaomi/smack/d/l;

    if-eqz p4, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v4, :cond_3

    .line 124
    invoke-static {p0}, Lcom/xiaomi/smack/d/j;->eb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 125
    :goto_2
    invoke-static {v4, p2, p3}, Lcom/xiaomi/smack/d/j;->b(IJ)J

    move-result-wide v7

    move-object v1, p1

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/smack/d/l;-><init>(Ljava/lang/String;JIILjava/lang/String;J)V

    .line 123
    invoke-static {v0}, Lcom/xiaomi/smack/d/j;->a(Lcom/xiaomi/smack/d/l;)V

    .line 126
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v10, :cond_0

    .line 128
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    new-instance v1, Lcom/xiaomi/smack/d/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/d/k;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/j;J)V

    goto :goto_0

    .line 123
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 124
    :cond_3
    :try_start_1
    const-string v6, ""

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/xiaomi/smack/d/l;)V
    .locals 6

    .prologue
    .line 199
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/d/l;

    .line 200
    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/d/l;->b(Lcom/xiaomi/smack/d/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-wide v2, v0, Lcom/xiaomi/smack/d/l;->bjZ:J

    iget-wide v4, p0, Lcom/xiaomi/smack/d/l;->bjZ:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaomi/smack/d/l;->bjZ:J

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjV:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/smack/d/j;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(IJ)J
    .locals 5

    .prologue
    .line 145
    if-nez p0, :cond_0

    const/16 v0, 0xd

    :goto_0
    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method private static dq(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 53
    const/4 v1, -0x1

    .line 56
    :try_start_0
    const-string v0, "connectivity"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-nez v0, :cond_0

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    move v0, v1

    .line 59
    goto :goto_0

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 69
    if-nez v0, :cond_1

    move v0, v1

    .line 70
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private static declared-synchronized eb(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/xiaomi/smack/d/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjW:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit v1

    return-object v0

    .line 81
    :cond_0
    :try_start_1
    const-string v0, "phone"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjW:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjW:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static ec(Landroid/content/Context;)Lcom/xiaomi/push/c/a;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjX:Lcom/xiaomi/push/c/a;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjX:Lcom/xiaomi/push/c/a;

    .line 182
    :goto_0
    return-object v0

    .line 181
    :cond_0
    new-instance v0, Lcom/xiaomi/push/c/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/smack/d/j;->bjX:Lcom/xiaomi/push/c/a;

    .line 182
    sget-object v0, Lcom/xiaomi/smack/d/j;->bjX:Lcom/xiaomi/push/c/a;

    goto :goto_0
.end method

.method public static ex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 192
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/c/a;->bcQ:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/smack/d/j;->ec(Landroid/content/Context;)Lcom/xiaomi/push/c/a;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/xiaomi/push/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/d/l;

    .line 156
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 157
    const-string v5, "package_name"

    iget-object v6, v0, Lcom/xiaomi/smack/d/l;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "message_ts"

    iget-wide v6, v0, Lcom/xiaomi/smack/d/l;->messageTs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v5, "network_type"

    iget v6, v0, Lcom/xiaomi/smack/d/l;->bjU:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v5, "bytes"

    iget-wide v6, v0, Lcom/xiaomi/smack/d/l;->bjZ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v5, "rcv"

    iget v6, v0, Lcom/xiaomi/smack/d/l;->bjY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v5, "imsi"

    iget-object v0, v0, Lcom/xiaomi/smack/d/l;->bjW:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "traffic"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 169
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 173
    :goto_1
    return-void

    .line 165
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private static getNetworkType(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/xiaomi/smack/d/j;->bjU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/xiaomi/smack/d/j;->dq(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xiaomi/smack/d/j;->bjU:I

    .line 49
    :cond_0
    sget v0, Lcom/xiaomi/smack/d/j;->bjU:I

    return v0
.end method

.method static synthetic h(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/smack/d/j;->g(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

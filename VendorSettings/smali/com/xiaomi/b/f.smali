.class public Lcom/xiaomi/b/f;
.super Ljava/lang/Object;
.source "HostManager.java"


# static fields
.field protected static baj:Ljava/util/Map;

.field private static bar:Lcom/xiaomi/b/f;

.field private static bas:Lcom/xiaomi/b/i;

.field private static bat:Ljava/lang/String;

.field private static bau:Ljava/lang/String;

.field protected static bav:Z


# instance fields
.field protected aYH:Landroid/content/Context;

.field protected bai:Ljava/util/Map;

.field private bak:Lcom/xiaomi/b/e;

.field protected bal:Lcom/xiaomi/b/j;

.field private bam:Ljava/lang/String;

.field private ban:J

.field private final bao:J

.field private bap:J

.field private baq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    .line 604
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/b/f;->bav:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    .line 76
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaomi/b/f;->bam:Ljava/lang/String;

    .line 78
    iput-wide v2, p0, Lcom/xiaomi/b/f;->ban:J

    .line 79
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/xiaomi/b/f;->bao:J

    .line 80
    iput-wide v2, p0, Lcom/xiaomi/b/f;->bap:J

    .line 81
    const-string v0, "isp_prov_city_country_ip"

    iput-object v0, p0, Lcom/xiaomi/b/f;->baq:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    .line 145
    :cond_0
    iput-object p3, p0, Lcom/xiaomi/b/f;->bal:Lcom/xiaomi/b/j;

    .line 147
    if-nez p2, :cond_1

    .line 148
    new-instance v0, Lcom/xiaomi/b/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/g;-><init>(Lcom/xiaomi/b/f;)V

    iput-object v0, p0, Lcom/xiaomi/b/f;->bak:Lcom/xiaomi/b/e;

    .line 157
    :goto_0
    iput-object p4, p0, Lcom/xiaomi/b/f;->bam:Ljava/lang/String;

    .line 158
    if-eqz p5, :cond_2

    :goto_1
    sput-object p5, Lcom/xiaomi/b/f;->bat:Ljava/lang/String;

    .line 159
    if-eqz p6, :cond_3

    :goto_2
    sput-object p6, Lcom/xiaomi/b/f;->bau:Ljava/lang/String;

    .line 160
    return-void

    .line 155
    :cond_1
    iput-object p2, p0, Lcom/xiaomi/b/f;->bak:Lcom/xiaomi/b/e;

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/f;->FP()Ljava/lang/String;

    move-result-object p6

    goto :goto_2
.end method

.method private FP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    .line 838
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_0

    .line 841
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_0
    return-object v0

    .line 843
    :catch_0
    move-exception v0

    .line 846
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static declared-synchronized Gw()Lcom/xiaomi/b/f;
    .locals 3

    .prologue
    .line 89
    const-class v1, Lcom/xiaomi/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "the host manager is not initialized yet."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 93
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 644
    sget-object v0, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 645
    sget-object v1, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    monitor-enter v1

    .line 646
    if-nez v0, :cond_1

    .line 647
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v2, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_0
    :goto_0
    monitor-exit v1

    .line 656
    return-void

    .line 651
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 700
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    const-string v0, ""

    .line 710
    :goto_0
    return-object v0

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 710
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 124
    const-class v7, Lcom/xiaomi/b/f;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/xiaomi/b/f;->bas:Lcom/xiaomi/b/i;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/xiaomi/b/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/b/f;-><init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 129
    :cond_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/b/f;->bas:Lcom/xiaomi/b/i;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/b/i;->a(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)Lcom/xiaomi/b/f;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized a(Lcom/xiaomi/b/i;)V
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/xiaomi/b/f;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/xiaomi/b/f;->bas:Lcom/xiaomi/b/i;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/b/f;->bar:Lcom/xiaomi/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 714
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    const-string v0, ""

    .line 723
    :goto_0
    return-object v0

    .line 717
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 720
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18

    .prologue
    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->purge()V

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v3

    .line 355
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->GA()Z

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    sget-object v3, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    monitor-enter v3

    .line 364
    :try_start_2
    sget-object v2, Lcom/xiaomi/b/f;->baj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 366
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 377
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 380
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->dt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "wifi"

    .line 381
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/b/f;->bam:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/b/f;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 383
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v3, "OK"

    const-string v6, "S"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 386
    const-string v3, "R"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 387
    const-string v3, "province"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    const-string v3, "city"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    const-string v3, "isp"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 390
    const-string v3, "ip"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 391
    const-string v3, "country"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 393
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 395
    const-string v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->Gx()Ljava/lang/String;

    move-result-object v2

    .line 399
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get bucket: ip = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " net = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 402
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 403
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 405
    if-nez v12, :cond_8

    .line 406
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no bucket found for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 402
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 380
    :cond_7
    const-string v2, "wap"

    goto/16 :goto_3

    .line 410
    :cond_8
    new-instance v13, Lcom/xiaomi/b/b;

    invoke-direct {v13, v2}, Lcom/xiaomi/b/b;-><init>(Ljava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v2, v14, :cond_a

    .line 412
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 413
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 415
    new-instance v15, Lcom/xiaomi/b/o;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    sub-int v16, v16, v2

    move/from16 v0, v16

    invoke-direct {v15, v14, v0}, Lcom/xiaomi/b/o;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v15}, Lcom/xiaomi/b/b;->a(Lcom/xiaomi/b/o;)V

    .line 411
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 419
    :cond_a
    invoke-virtual {v5, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    iput-object v10, v13, Lcom/xiaomi/b/b;->baa:Ljava/lang/String;

    .line 422
    iput-object v6, v13, Lcom/xiaomi/b/b;->aZX:Ljava/lang/String;

    .line 423
    iput-object v8, v13, Lcom/xiaomi/b/b;->aZZ:Ljava/lang/String;

    .line 424
    iput-object v9, v13, Lcom/xiaomi/b/b;->ip:Ljava/lang/String;

    .line 425
    iput-object v7, v13, Lcom/xiaomi/b/b;->aZY:Ljava/lang/String;

    .line 426
    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 427
    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/b/b;->b(D)V

    .line 430
    :cond_b
    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 431
    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/xiaomi/b/b;->di(Ljava/lang/String;)V

    .line 434
    :cond_c
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 435
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v14, v2

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/b/b;->F(J)V

    .line 438
    :cond_d
    invoke-virtual {v13}, Lcom/xiaomi/b/b;->Gt()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xiaomi/b/f;->dp(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 443
    :catch_0
    move-exception v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get bucket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 447
    :cond_e
    const/4 v2, 0x0

    move v4, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_10

    .line 448
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/b/b;

    .line 449
    if-eqz v2, :cond_f

    .line 450
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/b/f;->a(Ljava/lang/String;Lcom/xiaomi/b/b;)V

    .line 447
    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    .line 454
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/b/f;->GB()V

    .line 455
    return-object v5
.end method


# virtual methods
.method protected GA()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 607
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 608
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/b/f;->bav:Z

    if-nez v2, :cond_1

    .line 609
    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/b/f;->bav:Z

    .line 610
    iget-object v2, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->Gz()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    invoke-virtual {p0, v2}, Lcom/xiaomi/b/f;->dq(Ljava/lang/String;)V

    .line 615
    const-string v2, "loading the new hosts succeed"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    monitor-exit v1

    .line 625
    :goto_0
    return v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load host exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 624
    :cond_0
    monitor-exit v1

    .line 625
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GB()V
    .locals 4

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->purge()V

    .line 664
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/b/f;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 669
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 671
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->GC()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 674
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 683
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 677
    :catch_1
    move-exception v0

    .line 678
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 679
    :catch_2
    move-exception v0

    .line 680
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected GC()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 888
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 889
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 890
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 891
    invoke-virtual {v0}, Lcom/xiaomi/b/c;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 893
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public Gx()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "unknown"

    .line 195
    :goto_0
    return-object v0

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    if-nez v0, :cond_1

    .line 175
    const-string v0, "unknown"

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 178
    if-nez v0, :cond_2

    .line 179
    const-string v0, "unknown"

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    const-string v1, "wifi"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 185
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    :cond_4
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public Gy()V
    .locals 5

    .prologue
    .line 557
    .line 558
    iget-object v2, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v2

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->GA()Z

    .line 560
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 563
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 565
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/b/c;->Gu()Lcom/xiaomi/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 563
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 569
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-direct {p0, v3}, Lcom/xiaomi/b/f;->i(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 573
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 574
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/b/b;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/b/f;->a(Ljava/lang/String;Lcom/xiaomi/b/b;)V

    .line 573
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 569
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 578
    :cond_3
    return-void
.end method

.method protected Gz()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 581
    .line 583
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 584
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load host exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 599
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/Reader;)V

    .line 601
    :goto_2
    return-object v0

    .line 594
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 599
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/Reader;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 596
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v3, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "type"

    invoke-direct {v3, v4, p2}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v3, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "uuid"

    invoke-direct {v3, v4, p3}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v3, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "list"

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/xiaomi/b/f;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    const-string v3, "resolver.gslb.mi-idc.com"

    invoke-virtual {p0, v3}, Lcom/xiaomi/b/f;->dn(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v3

    .line 471
    const-string v4, "http://%1$s/gslb/gslb/getbucket.asp?ver=3.0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "resolver.gslb.mi-idc.com"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 472
    if-nez v3, :cond_0

    .line 473
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 481
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/d/c;

    .line 482
    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/d/c;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/d/c;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 475
    :cond_0
    invoke-virtual {v3, v4}, Lcom/xiaomi/b/b;->dh(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->bal:Lcom/xiaomi/b/j;

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    new-instance v5, Ljava/net/URL;

    .line 487
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/xiaomi/channel/commonutils/d/d;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_2
    :goto_3
    return-object v1

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/b/f;->bal:Lcom/xiaomi/b/j;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/xiaomi/b/j;->dr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network ioErr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_4
    if-eqz v0, :cond_2

    .line 498
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/b/b;)V
    .locals 3

    .prologue
    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the argument is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/f;->bak:Lcom/xiaomi/b/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/b/e;->dk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->GA()Z

    .line 541
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 543
    invoke-virtual {v0, p2}, Lcom/xiaomi/b/c;->b(Lcom/xiaomi/b/b;)V

    .line 549
    :goto_0
    monitor-exit v1

    .line 551
    :cond_2
    return-void

    .line 545
    :cond_3
    new-instance v0, Lcom/xiaomi/b/c;

    invoke-direct {v0, p1}, Lcom/xiaomi/b/c;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p2}, Lcom/xiaomi/b/c;->b(Lcom/xiaomi/b/b;)V

    .line 547
    iget-object v2, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 509
    monitor-exit v1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dl(Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 2

    .prologue
    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the url is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 211
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    move-result-object v0

    return-object v0
.end method

.method public dm(Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected dn(Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 2

    .prologue
    .line 302
    .line 303
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/b/f;->GA()Z

    .line 305
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 306
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/xiaomi/b/c;->Gu()Lcom/xiaomi/b/b;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected do(Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 6

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/b/f;->bap:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/b/f;->ban:J

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/f;->bap:J

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0, v0}, Lcom/xiaomi/b/f;->i(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/b;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/b/f;->ban:J

    .line 337
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/b/f;->ban:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 333
    iget-wide v0, p0, Lcom/xiaomi/b/f;->ban:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/b/f;->ban:J

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/xiaomi/b/f;->baq:Ljava/lang/String;

    .line 878
    return-void
.end method

.method protected dq(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 898
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 900
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 902
    new-instance v3, Lcom/xiaomi/b/c;

    invoke-direct {v3}, Lcom/xiaomi/b/c;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/b/c;->n(Lorg/json/JSONObject;)Lcom/xiaomi/b/c;

    move-result-object v3

    .line 903
    iget-object v4, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/b/c;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_0
    monitor-exit v1

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    const-string v0, "resolver.gslb.mi-idc.com"

    return-object v0
.end method

.method protected getProcessName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    const-string v1, "activity"

    .line 687
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 688
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 691
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 692
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 696
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.xiaomi"

    goto :goto_0
.end method

.method public h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;
    .locals 2

    .prologue
    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->bak:Lcom/xiaomi/b/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/b/e;->dk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    const/4 v0, 0x0

    .line 298
    :cond_1
    :goto_0
    return-object v0

    .line 237
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/b/f;->dn(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/b/b;->Gr()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/xiaomi/b/f;->aYH:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    invoke-virtual {p0, p1}, Lcom/xiaomi/b/f;->do(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 245
    goto :goto_0

    .line 249
    :cond_4
    new-instance v1, Lcom/xiaomi/b/h;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/b/h;-><init>(Lcom/xiaomi/b/f;Ljava/lang/String;Lcom/xiaomi/b/b;)V

    move-object v0, v1

    .line 298
    goto :goto_0
.end method

.method public purge()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v4, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    monitor-enter v4

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 855
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/b/c;->cc(Z)V

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 859
    :goto_1
    if-nez v0, :cond_2

    .line 860
    const/4 v3, 0x1

    .line 861
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/b/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/c;->Gv()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/xiaomi/b/f;->bai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 865
    goto :goto_1

    .line 869
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method

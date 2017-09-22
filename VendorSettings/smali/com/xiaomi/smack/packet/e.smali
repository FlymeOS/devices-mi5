.class public abstract Lcom/xiaomi/smack/packet/e;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static biF:Ljava/lang/String;

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private biG:Ljava/lang/String;

.field private biH:Ljava/lang/String;

.field private biI:Ljava/lang/String;

.field private biJ:Ljava/lang/String;

.field private biK:Ljava/lang/String;

.field private biL:Ljava/util/List;

.field private final biM:Ljava/util/Map;

.field private error:Lcom/xiaomi/smack/packet/h;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/packet/e;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/packet/e;->biF:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/e;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 80
    sget-object v0, Lcom/xiaomi/smack/packet/e;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/packet/e;->prefix:Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/smack/packet/e;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/xiaomi/smack/packet/e;->biF:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->packageName:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    .line 111
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/xiaomi/smack/packet/e;->biF:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->packageName:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    .line 111
    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    .line 131
    const-string v0, "ext_to"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    .line 132
    const-string v0, "ext_from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    .line 133
    const-string v0, "ext_chid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    .line 134
    const-string v0, "ext_pkt_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    .line 135
    const-string v0, "ext_exts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    .line 138
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 139
    check-cast v0, Landroid/os/Bundle;

    .line 140
    invoke-static {v0}, Lcom/xiaomi/smack/packet/a;->l(Landroid/os/Bundle;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v4, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "ext_ERROR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    new-instance v1, Lcom/xiaomi/smack/packet/h;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/packet/h;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    .line 150
    :cond_2
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/xiaomi/smack/packet/e;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    const-class v1, Lcom/xiaomi/smack/packet/e;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/smack/packet/e;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/smack/packet/e;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/smack/packet/e;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Ke()Lcom/xiaomi/smack/packet/h;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    return-object v0
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/a;

    .line 315
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/a;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/a;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/packet/h;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    .line 271
    return-void
.end method

.method public b(Lcom/xiaomi/smack/packet/a;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 539
    check-cast p1, Lcom/xiaomi/smack/packet/e;

    .line 541
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    :cond_7
    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    :goto_1
    move v1, v0

    goto :goto_0

    .line 541
    :cond_a
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 544
    :cond_b
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 550
    :cond_c
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 553
    :cond_d
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 556
    :cond_e
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 559
    :cond_f
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 562
    :cond_10
    iget-object v2, p1, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_1
.end method

.method public ev(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/smack/packet/e;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExtensions()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 455
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smack/packet/f;

    .line 458
    invoke-interface {v1}, Lcom/xiaomi/smack/packet/f;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 461
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 462
    const-string v1, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/e;->getPropertyNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v1}, Lcom/xiaomi/smack/packet/e;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 466
    const-string v3, "<property>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v3, "<name>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</name>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "<value type=\""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 470
    const-string v1, "integer\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    :goto_2
    const-string v1, "</property>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :cond_2
    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 472
    const-string v1, "long\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 473
    :cond_3
    instance-of v1, v2, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 474
    const-string v1, "float\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 475
    :cond_4
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 476
    const-string v1, "double\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 477
    :cond_5
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 478
    const-string v1, "boolean\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 479
    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 480
    const-string v1, "string\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, "</value>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 493
    :cond_7
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 494
    :try_start_3
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 495
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 496
    const-string v1, "java-object\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 502
    if-eqz v3, :cond_8

    .line 504
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 509
    :cond_8
    :goto_3
    if-eqz v5, :cond_1

    .line 511
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 512
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 499
    :catch_1
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    .line 500
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 502
    if-eqz v2, :cond_9

    .line 504
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 509
    :cond_9
    :goto_5
    if-eqz v3, :cond_1

    .line 511
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 512
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 502
    :catchall_1
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    :goto_6
    if-eqz v3, :cond_a

    .line 504
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 509
    :cond_a
    :goto_7
    if-eqz v5, :cond_b

    .line 511
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 514
    :cond_b
    :goto_8
    :try_start_c
    throw v1

    .line 520
    :cond_c
    const-string v1, "</properties>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 505
    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_7

    .line 512
    :catch_6
    move-exception v2

    goto :goto_8

    .line 502
    :catchall_2
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v5, v3

    move-object v3, v2

    goto :goto_6

    .line 499
    :catch_7
    move-exception v1

    move-object v2, v4

    move-object v3, v5

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v3, v5

    goto :goto_4
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-string v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 393
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 568
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 569
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 570
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 571
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 572
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 573
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->biM:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 574
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 575
    return v0

    :cond_1
    move v0, v1

    .line 567
    goto :goto_0

    :cond_2
    move v0, v1

    .line 568
    goto :goto_1

    :cond_3
    move v0, v1

    .line 569
    goto :goto_2

    :cond_4
    move v0, v1

    .line 570
    goto :goto_3

    :cond_5
    move v0, v1

    .line 571
    goto :goto_4
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->packageName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 414
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 415
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-string v0, "ext_ns"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biG:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    const-string v0, "ext_from"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biJ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    const-string v0, "ext_to"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biI:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    const-string v0, "ext_pkt_id"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biH:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 428
    const-string v0, "ext_chid"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biK:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    if-eqz v0, :cond_5

    .line 431
    const-string v0, "ext_ERROR"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->error:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/h;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/Bundle;

    .line 435
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/xiaomi/smack/packet/e;->biL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/a;

    .line 437
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/a;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 438
    if-eqz v5, :cond_8

    .line 439
    add-int/lit8 v0, v1, 0x1

    aput-object v5, v3, v1

    :goto_1
    move v1, v0

    .line 441
    goto :goto_0

    .line 442
    :cond_6
    const-string v0, "ext_exts"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 444
    :cond_7
    return-object v2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public abstract toXML()Ljava/lang/String;
.end method

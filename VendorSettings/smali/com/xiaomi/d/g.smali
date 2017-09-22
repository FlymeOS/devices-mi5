.class public Lcom/xiaomi/d/g;
.super Ljava/lang/Object;
.source "StatsHandler.java"


# instance fields
.field private bkj:Z

.field private bkk:Lcom/xiaomi/d/f;

.field private bkl:Lcom/xiaomi/channel/commonutils/f/a;

.field private duration:I

.field private startTime:J

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/d/g;->bkj:Z

    .line 48
    invoke-static {}, Lcom/xiaomi/channel/commonutils/f/a;->FA()Lcom/xiaomi/channel/commonutils/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/g;->bkl:Lcom/xiaomi/channel/commonutils/f/a;

    return-void
.end method

.method public static Kn()Lcom/xiaomi/d/g;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/d/i;->bkn:Lcom/xiaomi/d/g;

    return-object v0
.end method

.method public static Ko()Lcom/xiaomi/d/f;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/d/i;->bkn:Lcom/xiaomi/d/g;

    iget-object v0, v0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    return-object v0
.end method

.method private Kq()V
    .locals 4

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->bkj:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/d/g;->startTime:J

    sub-long/2addr v0, v2

    .line 105
    iget v2, p0, Lcom/xiaomi/d/g;->duration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/d/g;->bkj:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/d/g;->startTime:J

    .line 110
    :cond_0
    return-void
.end method

.method private a(Lcom/xiaomi/channel/commonutils/f/b;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    iget v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->key:I

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 216
    iget-object v0, p1, Lcom/xiaomi/channel/commonutils/f/b;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgp:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 221
    iget v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->key:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 222
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/f/b;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    goto :goto_0
.end method

.method private fr(I)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 7

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v2, Lcom/xiaomi/push/thrift/StatsEvents;

    iget-object v0, p0, Lcom/xiaomi/d/g;->uuid:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v0, v0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v0, v0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/a;->dj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/thrift/StatsEvents;->eo(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;

    .line 138
    :cond_0
    new-instance v3, Lorg/apache/thrift/transport/b;

    invoke-direct {v3, p1}, Lorg/apache/thrift/transport/b;-><init>(I)V

    .line 139
    new-instance v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;

    move-result-object v4

    .line 141
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvents;->b(Lorg/apache/thrift/protocol/d;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/d/g;->bkl:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/f/a;->FC()Ljava/util/LinkedList;

    move-result-object v5

    .line 148
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 149
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/f/b;

    invoke-direct {p0, v0}, Lcom/xiaomi/d/g;->a(Lcom/xiaomi/channel/commonutils/f/b;)Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lorg/apache/thrift/protocol/d;)V

    .line 153
    :cond_1
    invoke-virtual {v3}, Lorg/apache/thrift/transport/b;->length()I

    move-result v6

    if-le v6, p1, :cond_3

    .line 169
    :cond_2
    :goto_2
    return-object v2

    .line 157
    :cond_3
    if-eqz v0, :cond_4

    .line 158
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    goto :goto_2

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0

    .line 165
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public Kp()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->bkj:Z

    return v0
.end method

.method Kr()Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/xiaomi/d/g;->Kq()V

    .line 114
    iget-boolean v0, p0, Lcom/xiaomi/d/g;->bkj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/d/g;->bkl:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/f/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized Ks()Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/d/g;->Kr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/16 v0, 0x2ee

    .line 121
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->dt(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/16 v0, 0x177

    .line 124
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/d/g;->fr(I)Lcom/xiaomi/push/thrift/StatsEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 126
    :cond_1
    monitor-exit p0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Kt()Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 6

    .prologue
    .line 186
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 187
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 188
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 189
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->ek(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fn(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 191
    iget-object v1, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v1, v1, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v1, v1, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->ek(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 194
    iget-object v1, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v1, v1, Lcom/xiaomi/d/f;->aYj:Lcom/xiaomi/smack/a;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    iget-object v1, v1, Lcom/xiaomi/d/f;->aYj:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->JG()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fo(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const-string v1, "createStatsEvent err: context is null"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 200
    const v1, 0xdbba00

    invoke-virtual {p0, v1}, Lcom/xiaomi/d/g;->setDuration(I)V

    .line 203
    new-instance v1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 204
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgp:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 205
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 206
    invoke-virtual {p0, v1}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    goto :goto_0
.end method

.method declared-synchronized c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/g;->bkl:Lcom/xiaomi/channel/commonutils/f/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/f/a;->D(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/d/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/d/f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/d/g;->bkk:Lcom/xiaomi/d/f;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/d/g;->uuid:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/d/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/d/h;-><init>(Lcom/xiaomi/d/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/V;->a(Lcom/xiaomi/push/service/X;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    const v0, 0x240c8400

    .line 86
    if-lez p1, :cond_1

    .line 88
    mul-int/lit16 v1, p1, 0x3e8

    .line 89
    if-le v1, v0, :cond_2

    .line 92
    :goto_0
    iget v1, p0, Lcom/xiaomi/d/g;->duration:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/d/g;->bkj:Z

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/d/g;->bkj:Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/d/g;->startTime:J

    .line 96
    iput v0, p0, Lcom/xiaomi/d/g;->duration:I

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable dot duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/d/g;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 100
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

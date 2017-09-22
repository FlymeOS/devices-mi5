.class public Lcom/xiaomi/d/f;
.super Ljava/lang/Object;
.source "StatsContext.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# instance fields
.field aYj:Lcom/xiaomi/smack/a;

.field bcS:Lcom/xiaomi/push/service/XMPushService;

.field private bhx:Ljava/lang/String;

.field private bkf:J

.field private bkg:J

.field private bkh:J

.field private bki:J

.field private exception:Ljava/lang/Exception;

.field private reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkf:J

    .line 31
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkg:J

    .line 34
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 37
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bki:J

    .line 47
    iput-object p1, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 48
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/f;->bhx:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/xiaomi/d/f;->Kl()V

    .line 50
    return-void
.end method

.method private Kl()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkg:J

    .line 90
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bki:J

    .line 91
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkf:J

    .line 92
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkf:J

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 101
    :cond_1
    return-void
.end method

.method private declared-synchronized Km()V
    .locals 6

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat connpt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/d/f;->bhx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/d/f;->bkg:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ChannelDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/d/f;->bki:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelConnectedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/d/f;->bkh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 108
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 109
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfu:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 110
    iget-object v1, p0, Lcom/xiaomi/d/f;->bhx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->ek(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fn(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 112
    iget-wide v2, p0, Lcom/xiaomi/d/f;->bkg:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fl(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 113
    iget-wide v2, p0, Lcom/xiaomi/d/f;->bki:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 114
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 115
    invoke-direct {p0}, Lcom/xiaomi/d/f;->Kl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method Kj()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public declared-synchronized Kk()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v1

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 62
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkf:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 63
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkg:J

    iget-wide v6, p0, Lcom/xiaomi/d/f;->bkf:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/d/f;->bkg:J

    .line 64
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/d/f;->bkf:J

    .line 67
    :cond_2
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkh:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 68
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bki:J

    iget-wide v6, p0, Lcom/xiaomi/d/f;->bkh:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/d/f;->bki:J

    .line 69
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 72
    :cond_3
    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/xiaomi/d/f;->bhx:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkg:J

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkg:J

    const-wide/32 v6, 0x5265c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 76
    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/d/f;->Km()V

    .line 78
    :cond_6
    iput-object v0, p0, Lcom/xiaomi/d/f;->bhx:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lcom/xiaomi/d/f;->bkf:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 80
    iput-wide v2, p0, Lcom/xiaomi/d/f;->bkf:J

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-wide v2, p0, Lcom/xiaomi/d/f;->bkh:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->Kk()V

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 158
    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfF:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->JJ()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/d/j;->a(IILjava/lang/String;I)V

    .line 159
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    iget v0, p0, Lcom/xiaomi/d/f;->reason:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 130
    iput p2, p0, Lcom/xiaomi/d/f;->reason:I

    .line 131
    iput-object p3, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    .line 132
    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/d/j;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    :cond_0
    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    .line 139
    iget-wide v0, p0, Lcom/xiaomi/d/f;->bkh:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->JH()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/xiaomi/d/f;->bkh:J

    sub-long/2addr v0, v4

    .line 141
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 144
    :cond_1
    invoke-static {}, Lcom/xiaomi/smack/k;->JW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 145
    iget-wide v4, p0, Lcom/xiaomi/d/f;->bki:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/xiaomi/d/f;->bki:J

    .line 146
    iput-wide v2, p0, Lcom/xiaomi/d/f;->bkh:J

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->Kk()V

    .line 151
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/xiaomi/d/f;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 164
    :goto_0
    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfq:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v0}, Lcom/xiaomi/d/j;->a(IIILjava/lang/String;I)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaomi/d/f;->Kk()V

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/xiaomi/d/f;->reason:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/d/f;->exception:Ljava/lang/Exception;

    .line 122
    iput-object p1, p0, Lcom/xiaomi/d/f;->aYj:Lcom/xiaomi/smack/a;

    .line 123
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfF:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/d/j;->M(II)V

    .line 124
    return-void
.end method

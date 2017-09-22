.class public Lcom/xiaomi/d/j;
.super Ljava/lang/Object;
.source "StatsHelper.java"


# static fields
.field private static final bko:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfp:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    sput v0, Lcom/xiaomi/d/j;->bko:I

    return-void
.end method

.method public static Ku()V
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/d/j;->bko:I

    invoke-static {v0, v1}, Lcom/xiaomi/d/j;->M(II)V

    .line 114
    return-void
.end method

.method public static Kv()V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/d/j;->bko:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/d/j;->a(IILjava/lang/String;I)V

    .line 118
    return-void
.end method

.method public static Kw()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Ks()Lcom/xiaomi/push/thrift/StatsEvents;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/g/a;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 151
    :cond_0
    return-object v0
.end method

.method public static Kx()[B
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Ks()Lcom/xiaomi/push/thrift/StatsEvents;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized M(II)V
    .locals 6

    .prologue
    .line 86
    const-class v1, Lcom/xiaomi/d/j;

    monitor-enter v1

    const v0, 0xffffff

    if-ge p1, v0, :cond_0

    .line 87
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    .line 88
    :try_start_0
    sget-object v2, Lcom/xiaomi/d/k;->bkp:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit v1

    return-void

    .line 90
    :cond_0
    :try_start_1
    const-string v0, "stats key should less than 16777215"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(IIILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 122
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->c(B)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 123
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 124
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/thrift/StatsEvent;->fl(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 125
    invoke-virtual {v0, p3}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 126
    invoke-virtual {v0, p4}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 127
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 128
    return-void
.end method

.method public static declared-synchronized a(IILjava/lang/String;I)V
    .locals 8

    .prologue
    .line 95
    const-class v1, Lcom/xiaomi/d/j;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    .line 97
    sget-object v4, Lcom/xiaomi/d/k;->bkp:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v4

    .line 99
    invoke-virtual {v4, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 100
    sget-object v5, Lcom/xiaomi/d/k;->bkp:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->fl(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 101
    invoke-virtual {v4, p2}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 102
    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 103
    invoke-virtual {v4, p3}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 105
    :cond_0
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 106
    sget-object v0, Lcom/xiaomi/d/k;->bkp:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit v1

    return-void

    .line 108
    :cond_1
    :try_start_1
    const-string v0, "stats key not found"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 57
    if-lez p1, :cond_0

    .line 58
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfv:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 59
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 60
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->fl(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 61
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/d/d;->g(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v1

    .line 65
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 66
    iget-object v1, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 67
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 68
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/d/d;->h(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v1

    .line 33
    iget-object v2, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 34
    iget-object v0, v0, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 35
    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 36
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/xiaomi/d/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/d/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    .line 82
    invoke-virtual {v0}, Lcom/xiaomi/d/a;->Kh()V

    .line 83
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/d/d;->j(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 47
    iget-object v0, v0, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 48
    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 49
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static fs(I)V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgp:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->fk(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 138
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->fm(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 139
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 140
    return-void
.end method

.class public Lcom/xiaomi/c/f;
.super Lcom/xiaomi/smack/l;
.source "SlimConnection.java"


# instance fields
.field private bhg:Ljava/lang/Thread;

.field private bhh:Lcom/xiaomi/c/c;

.field private bhi:Lcom/xiaomi/c/d;

.field private bhj:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/l;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->bhj:Ljava/text/SimpleDateFormat;

    .line 44
    return-void
.end method

.method private JD()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Lcom/xiaomi/c/c;

    iget-object v1, p0, Lcom/xiaomi/c/f;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/c/c;-><init>(Ljava/io/InputStream;Lcom/xiaomi/c/f;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->bhh:Lcom/xiaomi/c/c;

    .line 146
    new-instance v0, Lcom/xiaomi/c/d;

    iget-object v1, p0, Lcom/xiaomi/c/f;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/c/d;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    .line 148
    new-instance v0, Lcom/xiaomi/c/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/c/f;->bhz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/c/g;-><init>(Lcom/xiaomi/c/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/c/f;->bhg:Ljava/lang/Thread;

    .line 158
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhg:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Jz()Lcom/xiaomi/c/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/xiaomi/c/b;

    invoke-direct {v0}, Lcom/xiaomi/c/b;-><init>()V

    .line 48
    const-string v1, "PING"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->setPacketID(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/xiaomi/push/b/m;

    invoke-direct {v1}, Lcom/xiaomi/push/b/m;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->JE()Lcom/xiaomi/smack/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/c;->Jd()[B

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/push/b/e;->s([B)Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/b/m;->c(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/m;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/d/j;->Kx()[B

    move-result-object v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    invoke-static {v2}, Lcom/google/protobuf/micro/a;->p([B)Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/b/m;->d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/m;

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/push/b/m;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 66
    return-object v0

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/c/f;)Lcom/xiaomi/c/c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhh:Lcom/xiaomi/c/c;

    return-object v0
.end method


# virtual methods
.method protected JA()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/c/f;->Jz()Lcom/xiaomi/c/b;

    move-result-object v0

    .line 73
    const-string v1, "[Slim] SND ping"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaomi/c/f;->i(Lcom/xiaomi/c/b;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->JY()V

    .line 79
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "The BlobWriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public JB()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized JC()V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/c/f;->JD()V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    invoke-virtual {v0}, Lcom/xiaomi/c/d;->Jy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/c/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 127
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 128
    invoke-virtual {p0, v2}, Lcom/xiaomi/c/f;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhh:Lcom/xiaomi/c/c;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhh:Lcom/xiaomi/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/c/c;->shutdown()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/c/f;->bhh:Lcom/xiaomi/c/c;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    invoke-virtual {v0}, Lcom/xiaomi/c/d;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/smack/l;->b(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b([Lcom/xiaomi/c/b;)V
    .locals 3

    .prologue
    .line 116
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 117
    invoke-virtual {p0, v2}, Lcom/xiaomi/c/f;->i(Lcom/xiaomi/c/b;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public declared-synchronized e(Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->getChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/c/a;->a(Lcom/xiaomi/push/service/J;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/c/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/c/f;->i(Lcom/xiaomi/c/b;)V

    .line 124
    return-void
.end method

.method g(Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 178
    :cond_0
    return-void

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/f;->bhj:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RCV Packet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhu:Ljava/util/Map;

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 176
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->i(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0
.end method

.method h(Lcom/xiaomi/c/b;)V
    .locals 3

    .prologue
    .line 181
    if-nez p1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/f;->bhj:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RCV : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Js()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v0

    if-nez v0, :cond_3

    .line 194
    const-string v0, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    const-string v0, "[Slim] RCV ping"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/xiaomi/c/f;->JZ()V

    .line 197
    invoke-static {}, Lcom/xiaomi/d/j;->Kv()V

    .line 205
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhu:Ljava/util/Map;

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 207
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->j(Lcom/xiaomi/c/b;)V

    goto :goto_1

    .line 198
    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/c/f;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public i(Lcom/xiaomi/c/b;)V
    .locals 7

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/c/f;->bhi:Lcom/xiaomi/c/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/d;->g(Lcom/xiaomi/c/b;)I

    move-result v2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/f;->bhj:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaomi/c/f;->bdY:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v2

    const/4 v4, 0x0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 220
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/j;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 227
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

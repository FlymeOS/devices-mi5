.class public Lcom/xiaomi/smack/t;
.super Lcom/xiaomi/smack/l;
.source "XMPPConnection.java"


# instance fields
.field bie:Lcom/xiaomi/smack/j;

.field bif:Lcom/xiaomi/smack/h;

.field private big:Ljava/lang/String;

.field private final bih:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/l;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/t;->big:Ljava/lang/String;

    .line 62
    const-string v0, "<pf><p>t:%1$d</p></pf>"

    iput-object v0, p0, Lcom/xiaomi/smack/t;->bih:Ljava/lang/String;

    .line 73
    const-string v0, "xiaomi.com"

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/t;->et(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private JD()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/xiaomi/smack/t;->socket:Ljava/net/Socket;

    .line 193
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;

    .line 195
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/xiaomi/smack/t;->socket:Ljava/net/Socket;

    .line 196
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaomi/smack/t;->aYm:Ljava/io/Writer;

    .line 201
    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYm:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/xiaomi/smack/t;->JI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private et(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    const-string v0, "<iq id=\'0\' chid=\'0\' type=\'get\'><ping>%1$s%2$s</ping></iq>"

    iput-object v0, p0, Lcom/xiaomi/smack/t;->big:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method protected JA()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->JU()V

    .line 249
    return-void

    .line 247
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the packetwriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized JC()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/smack/t;->JD()V

    .line 161
    new-instance v0, Lcom/xiaomi/smack/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/j;-><init>(Lcom/xiaomi/smack/t;)V

    iput-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    .line 162
    new-instance v0, Lcom/xiaomi/smack/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/h;-><init>(Lcom/xiaomi/smack/t;)V

    iput-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    .line 168
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bhA:Lcom/xiaomi/smack/c;

    invoke-virtual {v0}, Lcom/xiaomi/smack/c;->JR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->FF()Lcom/xiaomi/smack/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/t;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bhw:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->FG()Lcom/xiaomi/smack/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bhw:Lcom/xiaomi/smack/a/a;

    .line 172
    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->FG()Lcom/xiaomi/smack/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/t;->b(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bdY:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 180
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IZ()V

    .line 181
    const-string v0, "begin to openstream..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->Jy()V

    .line 187
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->startup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Kb()Ljava/lang/String;
    .locals 5

    .prologue
    .line 225
    const-string v1, ""

    .line 226
    invoke-static {}, Lcom/xiaomi/d/j;->Kw()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<q>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</q>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/smack/t;->big:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/packet/Presence;

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Type;->biW:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/packet/Presence;->setChannelId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/xiaomi/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/j;->e(Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/t;->JM()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->shutdown()V

    .line 109
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->cleanup()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/t;->bif:Lcom/xiaomi/smack/h;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 114
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->cleanup()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    .line 122
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/xiaomi/smack/l;->b(ILjava/lang/Exception;)V

    .line 125
    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 127
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYm:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/smack/t;->aYm:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    :goto_3
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/xiaomi/smack/t;->aYm:Ljava/io/Writer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_8
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    goto :goto_3

    .line 128
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized e(Lcom/xiaomi/push/service/J;)V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/p;

    invoke-direct {v0}, Lcom/xiaomi/smack/p;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/xiaomi/smack/t;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/smack/p;->b(Lcom/xiaomi/push/service/J;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaomi/smack/t;->bie:Lcom/xiaomi/smack/j;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/j;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 149
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lcom/xiaomi/c/b;)V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "XMPPConnection don\'t support send blob."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

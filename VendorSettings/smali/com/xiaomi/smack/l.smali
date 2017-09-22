.class public abstract Lcom/xiaomi/smack/l;
.super Lcom/xiaomi/smack/a;
.source "SocketConnection.java"


# instance fields
.field protected bcS:Lcom/xiaomi/push/service/XMPushService;

.field protected bhT:Ljava/lang/Exception;

.field bhU:Ljava/lang/String;

.field private bhV:Ljava/lang/String;

.field protected volatile bhW:J

.field private bhX:I

.field protected volatile bhp:J

.field protected volatile bhq:J

.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    .line 51
    iput-object v2, p0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    .line 60
    iput-object v2, p0, Lcom/xiaomi/smack/l;->bhU:Ljava/lang/String;

    .line 66
    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhp:J

    .line 67
    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhq:J

    .line 75
    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhW:J

    .line 84
    iput-object p1, p0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 85
    return-void
.end method

.method private F(Ljava/lang/String;I)V
    .locals 16

    .prologue
    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get bucket for host : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->cN(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 229
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/smack/l;->er(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v2

    .line 230
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/Integer;)V

    .line 231
    if-eqz v2, :cond_0

    .line 232
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/b/b;->cb(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 235
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/xiaomi/smack/l;->bhW:J

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 245
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xiaomi/smack/l;->bhn:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/xiaomi/smack/l;->bhn:I

    .line 247
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin to connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/l;->createSocket()Ljava/net/Socket;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/xiaomi/smack/l;->socket:Ljava/net/Socket;

    .line 252
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/xiaomi/b/d;->D(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    .line 253
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/smack/l;->socket:Ljava/net/Socket;

    const/16 v7, 0x1f40

    invoke-virtual {v6, v5, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 254
    const-string v5, "tcp connected"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/l;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 257
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/smack/l;->bhV:Ljava/lang/String;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/l;->JC()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    const/4 v9, 0x1

    .line 261
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/l;->bho:J

    .line 262
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/xiaomi/smack/l;->bhx:Ljava/lang/String;

    .line 264
    if-eqz v2, :cond_2

    .line 265
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/xiaomi/smack/l;->bho:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;JJ)V

    .line 267
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/l;->bhW:J

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/xiaomi/smack/l;->bho:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/b/f;->GB()V

    .line 306
    if-nez v9, :cond_8

    .line 307
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :catch_0
    move-exception v8

    move v9, v4

    .line 271
    :goto_2
    if-eqz v2, :cond_4

    .line 272
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 277
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    if-nez v9, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    move v3, v9

    :goto_3
    move v4, v3

    .line 302
    goto/16 :goto_0

    .line 280
    :catch_1
    move-exception v8

    move v9, v4

    .line 281
    :goto_4
    if-eqz v2, :cond_6

    .line 282
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 284
    :cond_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 286
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    if-nez v9, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 289
    :catch_2
    move-exception v5

    .line 291
    :goto_5
    :try_start_4
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "abnormal exception"

    invoke-direct {v6, v7, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    .line 292
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    if-nez v4, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    invoke-static {v3, v5}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v9, v4

    .line 298
    goto/16 :goto_1

    .line 294
    :catchall_0
    move-exception v2

    move v9, v4

    :goto_6
    if-nez v9, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/l;->bhT:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/d/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    :cond_7
    throw v2

    .line 309
    :cond_8
    return-void

    .line 294
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 289
    :catch_3
    move-exception v4

    move-object v5, v4

    move v4, v9

    goto :goto_5

    .line 280
    :catch_4
    move-exception v8

    goto/16 :goto_4

    .line 270
    :catch_5
    move-exception v8

    goto/16 :goto_2

    :cond_9
    move v3, v4

    goto/16 :goto_3

    :cond_a
    move v9, v4

    goto/16 :goto_1
.end method

.method private b(Lcom/xiaomi/smack/c;)V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/xiaomi/smack/c;->getPort()I

    move-result v1

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/smack/l;->F(Ljava/lang/String;I)V

    .line 214
    return-void
.end method


# virtual methods
.method protected abstract JA()V
.end method

.method protected declared-synchronized JC()V
    .locals 0

    .prologue
    .line 317
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public JY()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhp:J

    .line 389
    return-void
.end method

.method public JZ()V
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhq:J

    .line 393
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smack/l;->b(ILjava/lang/Exception;)V

    .line 158
    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/smack/l;->bhW:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0, p2}, Lcom/xiaomi/smack/l;->e(Ljava/lang/Exception;)V

    .line 162
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 8

    .prologue
    .line 191
    invoke-static {}, Lcom/xiaomi/smack/c;->JQ()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 195
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/b/f;->GB()V

    .line 197
    :cond_0
    return-void
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 204
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 205
    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/l;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 138
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/l;->JM()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    .line 154
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smack/l;->a(IILjava/lang/Exception;)V

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/l;->challenge:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/l;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :goto_1
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhp:J

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/l;->bhq:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b([Lcom/xiaomi/c/b;)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "Don\'t support send Blob"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/n;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/n;-><init>(Lcom/xiaomi/smack/l;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 357
    return-void
.end method

.method public declared-synchronized connect()V
    .locals 3

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/l;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/l;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/l;->a(IILjava/lang/Exception;)V

    .line 338
    iget-object v0, p0, Lcom/xiaomi/smack/l;->bhA:Lcom/xiaomi/smack/c;

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/l;->b(Lcom/xiaomi/smack/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected e(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/l;->bhW:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget v0, p0, Lcom/xiaomi/smack/l;->bhX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/smack/l;->bhX:I

    .line 169
    iget v0, p0, Lcom/xiaomi/smack/l;->bhX:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/xiaomi/smack/l;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 173
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/xiaomi/smack/l;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 174
    iput v4, p0, Lcom/xiaomi/smack/l;->bhX:I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iput v4, p0, Lcom/xiaomi/smack/l;->bhX:I

    goto :goto_0
.end method

.method er(Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/xiaomi/b/b;->Gr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Lcom/xiaomi/smack/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smack/o;-><init>(Lcom/xiaomi/smack/l;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/smack/d/h;->execute(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    iput v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    .line 376
    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/b/b;->ip:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    .line 378
    iget v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    .line 379
    iget v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    .line 380
    iget v2, p0, Lcom/xiaomi/smack/l;->bhr:I

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/smack/l;->bhr:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xiaomi/smack/l;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/smack/l;->bhV:Ljava/lang/String;

    return-object v0
.end method

.method public ping()V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {p0}, Lcom/xiaomi/smack/l;->JA()V

    .line 94
    iget-object v2, p0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/smack/m;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/xiaomi/smack/m;-><init>(Lcom/xiaomi/smack/l;IJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;J)V

    .line 113
    return-void
.end method

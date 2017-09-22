.class public Lcom/xiaomi/smack/d/c;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# static fields
.field private static bjK:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method private static B([B)V
    .locals 3

    .prologue
    .line 265
    sget-object v0, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    .line 268
    sget-object v0, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 274
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;
    .locals 3

    .prologue
    .line 583
    invoke-static {}, Lcom/xiaomi/smack/c/c;->Kf()Lcom/xiaomi/smack/c/c;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    .line 584
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/c/c;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_0

    .line 587
    instance-of v1, v0, Lcom/xiaomi/push/service/c;

    if-eqz v1, :cond_0

    .line 588
    check-cast v0, Lcom/xiaomi/push/service/c;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/c;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/b;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 370
    .line 372
    const-string v0, ""

    const-string v2, "id"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    const-string v0, ""

    const-string v2, "to"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    const-string v0, ""

    const-string v2, "from"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    const-string v0, ""

    const-string v2, "chid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 376
    const-string v0, ""

    const-string v2, "type"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/packet/c;->eu(Ljava/lang/String;)Lcom/xiaomi/smack/packet/c;

    move-result-object v8

    .line 378
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 379
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 380
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    const-string v10, ""

    invoke-interface {p0, v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 382
    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move-object v0, v3

    move-object v1, v3

    .line 388
    :goto_1
    if-nez v2, :cond_3

    .line 389
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 391
    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 392
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 393
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 394
    const-string v12, "error"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 395
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v0

    :goto_2
    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    :goto_3
    move v13, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v13

    .line 409
    goto :goto_1

    .line 400
    :cond_1
    new-instance v1, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v1}, Lcom/xiaomi/smack/packet/b;-><init>()V

    .line 401
    invoke-static {v10, v11, p0}, Lcom/xiaomi/smack/d/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/xiaomi/smack/packet/b;->b(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_2

    .line 404
    :cond_2
    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 405
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "iq"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 406
    const/4 v2, 0x1

    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    goto :goto_3

    .line 411
    :cond_3
    if-nez v1, :cond_6

    .line 412
    sget-object v1, Lcom/xiaomi/smack/packet/c;->bip:Lcom/xiaomi/smack/packet/c;

    if-eq v1, v8, :cond_4

    sget-object v1, Lcom/xiaomi/smack/packet/c;->biq:Lcom/xiaomi/smack/packet/c;

    if-ne v1, v8, :cond_5

    .line 418
    :cond_4
    new-instance v0, Lcom/xiaomi/smack/d/d;

    invoke-direct {v0}, Lcom/xiaomi/smack/d/d;-><init>()V

    .line 423
    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, v6}, Lcom/xiaomi/smack/packet/b;->setTo(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, v5}, Lcom/xiaomi/smack/packet/b;->setFrom(Ljava/lang/String;)V

    .line 426
    sget-object v1, Lcom/xiaomi/smack/packet/c;->bis:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 427
    invoke-virtual {v0, v7}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 428
    new-instance v1, Lcom/xiaomi/smack/packet/h;

    sget-object v2, Lcom/xiaomi/smack/packet/i;->bjk:Lcom/xiaomi/smack/packet/i;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/h;-><init>(Lcom/xiaomi/smack/packet/i;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/h;)V

    .line 429
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 430
    const-string v0, "iq usage error. send packet in packet parser."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    move-object v1, v3

    .line 453
    :goto_4
    return-object v1

    .line 435
    :cond_5
    new-instance v1, Lcom/xiaomi/smack/d/e;

    invoke-direct {v1}, Lcom/xiaomi/smack/d/e;-><init>()V

    .line 444
    :cond_6
    invoke-virtual {v1, v4}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, v5}, Lcom/xiaomi/smack/packet/b;->setTo(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1, v7}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v6}, Lcom/xiaomi/smack/packet/b;->setFrom(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1, v8}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 449
    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/h;)V

    .line 451
    invoke-virtual {v1, v9}, Lcom/xiaomi/smack/packet/b;->d(Ljava/util/Map;)V

    goto :goto_4

    :cond_7
    move v13, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    goto :goto_3
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    const-string v0, "1"

    const-string v4, ""

    const-string v5, "s"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_9

    .line 83
    const-string v0, ""

    const-string v4, "chid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    const-string v0, ""

    const-string v4, "id"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    const-string v0, ""

    const-string v4, "from"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    const-string v0, ""

    const-string v4, "to"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1b

    .line 93
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    move-object v4, v0

    .line 96
    :goto_0
    if-nez v4, :cond_0

    .line 97
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "the channel id is wrong while receiving a encrypted message"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v3

    move-object v3, v1

    .line 100
    :cond_1
    :goto_1
    if-nez v0, :cond_8

    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 102
    if-ne v10, v12, :cond_7

    .line 103
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v10, "s"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 108
    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    .line 109
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 113
    const-string v3, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "6"

    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    :cond_4
    new-instance v3, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v3}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 116
    invoke-virtual {v3, v5}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 118
    invoke-virtual {v3, v7}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v8}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v6}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v9}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 122
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4, v10}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v4}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 261
    :cond_5
    :goto_2
    return-object v3

    .line 128
    :cond_6
    iget-object v3, v4, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/xiaomi/push/service/S;->P(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 129
    invoke-static {v3, v10}, Lcom/xiaomi/push/service/S;->b([BLjava/lang/String;)[B

    move-result-object v3

    .line 130
    invoke-static {v3}, Lcom/xiaomi/smack/d/c;->B([B)V

    .line 131
    sget-object v3, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 132
    sget-object v3, Lcom/xiaomi/smack/d/c;->bjK:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/xiaomi/smack/d/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;

    move-result-object v3

    goto/16 :goto_1

    .line 134
    :cond_7
    if-ne v10, v13, :cond_1

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v2

    .line 136
    goto/16 :goto_1

    .line 140
    :cond_8
    if-nez v3, :cond_5

    .line 143
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_9
    new-instance v4, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v4}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 147
    const-string v0, ""

    const-string v5, "id"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez v0, :cond_a

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_a
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 149
    const-string v0, ""

    const-string v5, "to"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 150
    const-string v0, ""

    const-string v5, "from"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 151
    const-string v0, ""

    const-string v5, "chid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 152
    const-string v0, ""

    const-string v5, "appid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setAppId(Ljava/lang/String;)V

    .line 155
    :try_start_0
    const-string v0, ""

    const-string v5, "transient"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_3
    :try_start_1
    const-string v5, ""

    const-string v6, "seq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 161
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setSeq(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 166
    :cond_b
    :goto_4
    :try_start_2
    const-string v5, ""

    const-string v6, "mseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 168
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setMSeq(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 173
    :cond_c
    :goto_5
    :try_start_3
    const-string v5, ""

    const-string v6, "fseq"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 175
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setFSeq(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    :cond_d
    :goto_6
    :try_start_4
    const-string v5, ""

    const-string v6, "status"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 183
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setStatus(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 188
    :cond_e
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "true"

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    .line 188
    :goto_8
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setIsTransient(Z)V

    .line 190
    const-string v0, ""

    const-string v5, "type"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 191
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_13

    const-string v5, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 196
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setLanguage(Ljava/lang/String;)V

    :goto_9
    move-object v0, v1

    move v1, v3

    .line 209
    :cond_f
    :goto_a
    if-nez v1, :cond_1a

    .line 210
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 211
    if-ne v3, v12, :cond_19

    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 215
    const-string v3, "xm"

    .line 217
    :cond_10
    const-string v6, "subject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 218
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 219
    if-nez v3, :cond_11

    .line 223
    :cond_11
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->setSubject(Ljava/lang/String;)V

    goto :goto_a

    .line 156
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :cond_12
    move v0, v3

    .line 189
    goto :goto_8

    .line 199
    :cond_13
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->getDefaultLanguage()Ljava/lang/String;

    goto :goto_9

    .line 226
    :cond_14
    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 227
    const-string v3, ""

    const-string v5, "encode"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 230
    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/smack/packet/d;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 232
    :cond_15
    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/d;->setBody(Ljava/lang/String;)V

    goto :goto_a

    .line 234
    :cond_16
    const-string v6, "thread"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 235
    if-nez v0, :cond_f

    .line 236
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 238
    :cond_17
    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 239
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->a(Lcom/xiaomi/smack/packet/h;)V

    goto :goto_a

    .line 243
    :cond_18
    invoke-static {v5, v3, p0}, Lcom/xiaomi/smack/d/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_a

    .line 246
    :cond_19
    if-ne v3, v13, :cond_f

    .line 247
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "message"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 248
    goto/16 :goto_a

    .line 253
    :cond_1a
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/d;->setThread(Ljava/lang/String;)V

    move-object v3, v4

    .line 261
    goto/16 :goto_2

    .line 185
    :catch_1
    move-exception v5

    goto/16 :goto_7

    .line 177
    :catch_2
    move-exception v5

    goto/16 :goto_6

    .line 170
    :catch_3
    move-exception v5

    goto/16 :goto_5

    .line 163
    :catch_4
    move-exception v5

    goto/16 :goto_4

    :cond_1b
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    const-string v0, ""

    .line 287
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 288
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_1
    return-object v0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 302
    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Type;->biV:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 303
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :cond_0
    :goto_0
    new-instance v2, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v2, v0}, Lcom/xiaomi/smack/packet/Presence;-><init>(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 312
    const-string v0, ""

    const-string v3, "to"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 313
    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 314
    const-string v0, ""

    const-string v3, "chid"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setChannelId(Ljava/lang/String;)V

    .line 315
    const-string v0, ""

    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-nez v0, :cond_1

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_1
    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    move v0, v1

    .line 320
    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 321
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 322
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 323
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 325
    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :catch_0
    move-exception v3

    .line 308
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid presence type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    const-string v5, "priority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 329
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 330
    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 331
    :catch_1
    move-exception v3

    goto :goto_1

    .line 333
    :catch_2
    move-exception v3

    .line 336
    invoke-virtual {v2, v1}, Lcom/xiaomi/smack/packet/Presence;->setPriority(I)V

    goto :goto_1

    .line 338
    :cond_4
    const-string v5, "show"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 339
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 341
    :try_start_2
    invoke-static {v3}, Lcom/xiaomi/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/smack/packet/Presence;->a(Lcom/xiaomi/smack/packet/Presence$Mode;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 342
    :catch_3
    move-exception v4

    .line 343
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid presence mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 345
    :cond_5
    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 346
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->a(Lcom/xiaomi/smack/packet/h;)V

    goto/16 :goto_1

    .line 350
    :cond_6
    invoke-static {v3, v4, p0}, Lcom/xiaomi/smack/d/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/Presence;->b(Lcom/xiaomi/smack/packet/a;)V

    goto/16 :goto_1

    .line 353
    :cond_7
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 354
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "presence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 359
    :cond_8
    return-object v2
.end method

.method public static g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/r;
    .locals 7

    .prologue
    .line 457
    new-instance v2, Lcom/xiaomi/smack/r;

    invoke-direct {v2}, Lcom/xiaomi/smack/r;-><init>()V

    .line 458
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, ""

    const-string v3, "to"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string v4, ""

    const-string v5, "chid"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    const-string v5, ""

    const-string v6, "type"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/s;->es(Ljava/lang/String;)Lcom/xiaomi/smack/s;

    move-result-object v5

    .line 463
    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/r;->setPacketID(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2, v1}, Lcom/xiaomi/smack/r;->setTo(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/r;->setFrom(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2, v4}, Lcom/xiaomi/smack/r;->setChannelId(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2, v5}, Lcom/xiaomi/smack/r;->a(Lcom/xiaomi/smack/s;)V

    .line 468
    const/4 v1, 0x0

    .line 469
    const/4 v0, 0x0

    .line 470
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 471
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 472
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 473
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    invoke-static {p0}, Lcom/xiaomi/smack/d/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 477
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    const/4 v1, 0x1

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/r;->a(Lcom/xiaomi/smack/packet/h;)V

    .line 483
    return-object v2
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/g;
    .locals 4

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 496
    const/4 v0, 0x0

    .line 497
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 498
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 500
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 501
    new-instance v1, Lcom/xiaomi/smack/packet/g;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 503
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v0, 0x1

    goto :goto_0

    .line 508
    :cond_2
    return-object v1
.end method

.method public static i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 519
    const-string v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    .line 520
    const-string v0, "-1"

    .line 525
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    move-object v7, v2

    move-object v8, v0

    move v0, v1

    .line 528
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 529
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 530
    const-string v4, ""

    const-string v5, "code"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    :goto_1
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 533
    const-string v4, ""

    const-string v7, "type"

    invoke-interface {p0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    :goto_2
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 536
    const-string v3, ""

    const-string v7, "reason"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v7, v4

    move-object v8, v5

    goto :goto_0

    :cond_1
    move v0, v1

    move-object v4, v2

    move-object v5, v2

    .line 541
    :cond_2
    :goto_3
    if-nez v0, :cond_7

    .line 542
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 543
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 544
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 549
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 551
    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v4, v1

    .line 552
    goto :goto_3

    .line 554
    :cond_4
    invoke-static {v1, v2, p0}, Lcom/xiaomi/smack/d/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 557
    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 558
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    const/4 v0, 0x1

    goto :goto_3

    .line 561
    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 562
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 566
    :cond_7
    if-nez v7, :cond_8

    const-string v2, "cancel"

    .line 567
    :goto_4
    new-instance v0, Lcom/xiaomi/smack/packet/h;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8
    move-object v2, v7

    .line 566
    goto :goto_4

    :cond_9
    move-object v4, v7

    goto :goto_2

    :cond_a
    move-object v5, v8

    goto/16 :goto_1
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 595
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 596
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "xml:lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    .line 598
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    :cond_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_1
    return-object v0

    .line 595
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

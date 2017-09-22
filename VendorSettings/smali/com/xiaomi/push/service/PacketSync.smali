.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;
.source "PacketSync.java"


# instance fields
.field private bdL:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    .line 46
    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/a;)V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/a;->getText()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/smack/c;->JQ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 370
    invoke-virtual {v1, v0}, Lcom/xiaomi/b/b;->i([Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 372
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method private d(Lcom/xiaomi/smack/packet/e;)V
    .locals 7

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/j;->ex(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/j;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 349
    :cond_0
    return-void
.end method

.method private e(Lcom/xiaomi/c/b;)V
    .locals 7

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getSerializedSize()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/d/j;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;JZJ)V

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/xiaomi/c/b;)V
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->e(Lcom/xiaomi/c/b;)V

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->d(Lcom/xiaomi/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Blob chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/smack/packet/e;)V
    .locals 12

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    const-string v0, "5"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->d(Lcom/xiaomi/smack/packet/e;)V

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/xiaomi/smack/r;

    if-eqz v0, :cond_8

    .line 54
    check-cast p1, Lcom/xiaomi/smack/r;

    .line 55
    invoke-virtual {p1}, Lcom/xiaomi/smack/r;->Ka()Lcom/xiaomi/smack/s;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/smack/r;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/smack/r;->getTo()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 66
    sget-object v5, Lcom/xiaomi/smack/s;->bic:Lcom/xiaomi/smack/s;

    if-ne v1, v5, :cond_3

    .line 67
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/smack/r;->Ke()Lcom/xiaomi/smack/packet/h;

    move-result-object v8

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: channel bind failed, error="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 73
    if-eqz v8, :cond_1

    .line 74
    const-string v1, "auth"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    const-string v1, "invalid-sig"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " sec = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgd:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-static {v3, v1, v2, v4, v3}, Lcom/xiaomi/d/j;->a(IIILjava/lang/String;I)V

    .line 82
    :cond_4
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x5

    .line 83
    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_6
    const-string v1, "cancel"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 88
    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_7
    const-string v1, "wait"

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/J;)V

    .line 93
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 94
    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xiaomi/smack/packet/h;->getType()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    const-string v1, "1"

    .line 106
    invoke-virtual {p1, v1}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 108
    :cond_9
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 112
    check-cast v7, Lcom/xiaomi/smack/packet/b;

    .line 113
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "result"

    invoke-virtual {v7}, Lcom/xiaomi/smack/packet/b;->Kd()Lcom/xiaomi/smack/packet/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/xiaomi/smack/t;

    if-eqz v1, :cond_a

    .line 117
    check-cast v0, Lcom/xiaomi/smack/t;

    invoke-virtual {v0}, Lcom/xiaomi/smack/t;->JZ()V

    .line 119
    :cond_a
    invoke-static {}, Lcom/xiaomi/d/j;->Kv()V

    .line 142
    :cond_b
    :goto_2
    const-string v0, "ps"

    invoke-virtual {v7, v0}, Lcom/xiaomi/smack/packet/b;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    :try_start_0
    const-string v0, "ps"

    invoke-virtual {v7, v0}, Lcom/xiaomi/smack/packet/b;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/xiaomi/push/b/e;->s([B)Lcom/xiaomi/push/b/e;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/V;->e(Lcom/xiaomi/push/b/e;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Base64 exception + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_c
    const-string v0, "command"

    invoke-virtual {v7}, Lcom/xiaomi/smack/packet/b;->Kd()Lcom/xiaomi/smack/packet/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 121
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->ev(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_b

    .line 123
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "startts"

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v4, "endts"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 128
    new-instance v8, Ljava/util/Date;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 129
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v5, "true"

    const-string v6, "force"

    invoke-virtual {v0, v6}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 131
    const-string v5, "maxlen"

    invoke-virtual {v0, v5}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v5, v0, 0x400

    .line 136
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->dP(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    move-object v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 137
    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLong fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 150
    :catch_2
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pb exception + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_d
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_f

    .line 158
    const-string v0, "kick"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->ev(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_10

    .line 160
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    const-string v4, "reason"

    invoke-virtual {v0, v4}, Lcom/xiaomi/smack/packet/a;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kicked by server, chid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " userid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " type="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " reason="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 166
    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/J;)V

    .line 173
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_f
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_10

    move-object v0, p1

    .line 184
    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 185
    const-string v2, "redir"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 186
    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/d;->ev(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/PacketSync;->a(Lcom/xiaomi/smack/packet/a;)V

    goto/16 :goto_0

    .line 194
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IX()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/e;)V

    goto/16 :goto_0

    :cond_11
    move v5, v3

    goto/16 :goto_3
.end method

.method public d(Lcom/xiaomi/c/b;)V
    .locals 11

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 261
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 262
    const-string v1, "SECMSG"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 263
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Js()Z

    move-result v0

    if-nez v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IX()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1, v6, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/c/b;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 220
    invoke-static {v0}, Lcom/xiaomi/push/b/m;->y([B)Lcom/xiaomi/push/b/m;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/xiaomi/push/b/m;->HX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/m;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/V;->e(Lcom/xiaomi/push/b/e;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    const-string v0, "CONF"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/e;->s([B)Lcom/xiaomi/push/b/e;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/V;->e(Lcom/xiaomi/push/b/e;)V

    goto :goto_0

    .line 229
    :cond_2
    const-string v0, "U"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/n;->z([B)Lcom/xiaomi/push/b/n;

    move-result-object v6

    .line 231
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->dP(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    .line 232
    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getStart()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->getEnd()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->Il()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    invoke-virtual {v6}, Lcom/xiaomi/push/b/n;->Ij()Z

    move-result v6

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V

    .line 234
    new-instance v0, Lcom/xiaomi/c/b;

    invoke-direct {v0}, Lcom/xiaomi/c/b;-><init>()V

    .line 235
    invoke-virtual {v0, v10}, Lcom/xiaomi/c/b;->fp(I)V

    .line 236
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCA"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->setPacketID(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/U;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 239
    :cond_3
    const-string v0, "P"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/l;->x([B)Lcom/xiaomi/push/b/l;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/xiaomi/c/b;

    invoke-direct {v1}, Lcom/xiaomi/c/b;-><init>()V

    .line 243
    invoke-virtual {v1, v10}, Lcom/xiaomi/c/b;->fp(I)V

    .line 244
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PCA"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/c/b;->setPacketID(Ljava/lang/String;)V

    .line 246
    new-instance v2, Lcom/xiaomi/push/b/l;

    invoke-direct {v2}, Lcom/xiaomi/push/b/l;-><init>()V

    .line 247
    invoke-virtual {v0}, Lcom/xiaomi/push/b/l;->If()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-virtual {v0}, Lcom/xiaomi/push/b/l;->Ie()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/l;->c(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/l;

    .line 250
    :cond_4
    invoke-virtual {v2}, Lcom/xiaomi/push/b/l;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/U;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACK msgP: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_5
    const-string v0, "NOTIFY"

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/k;->w([B)Lcom/xiaomi/push/b/k;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify by server err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/k;->Hj()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/b/k;->Hl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv SECMSG errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Hl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_7
    const-string v1, "BIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 269
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/g;->t([B)Lcom/xiaomi/push/b/g;

    move-result-object v7

    .line 271
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->getResult()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v3, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_8
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HG()Ljava/lang/String;

    move-result-object v5

    .line 284
    const-string v1, "auth"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 286
    const-string v1, "invalid-sig"

    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sec = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 290
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgd:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-static {v10, v1, v2, v4, v10}, Lcom/xiaomi/d/j;->a(IIILjava/lang/String;I)V

    .line 292
    :cond_9
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x5

    .line 293
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HI()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_a
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_b
    const-string v1, "cancel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 297
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 298
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HI()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_c
    const-string v1, "wait"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/J;)V

    .line 303
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 304
    invoke-virtual {v7}, Lcom/xiaomi/push/b/g;->HI()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_d
    const-string v1, "KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/b/j;->v([B)Lcom/xiaomi/push/b/j;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0}, Lcom/xiaomi/push/b/j;->getType()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v0}, Lcom/xiaomi/push/b/j;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kicked by server, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 317
    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 319
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/J;)V

    .line 324
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    move v2, v7

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->bdL:Lcom/xiaomi/push/service/XMPushService;

    move-object v1, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/xiaomi/push/service/x;
.super Ljava/lang/Object;
.source "MIPushHelper.java"


# direct methods
.method static M(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 147
    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 148
    invoke-static {}, Lcom/xiaomi/smack/packet/e;->nextID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eK(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cP(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 151
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->bky:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/x;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/smack/packet/d;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 106
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 107
    invoke-static {p0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/xiaomi/push/service/x;->a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 45
    :try_start_0
    new-instance v2, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v2}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 46
    const-string v0, "5"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 47
    const-string v0, "xiaomi.com"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 50
    const-string v0, "push"

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setType(Ljava/lang/String;)V

    .line 51
    iget-object v0, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/d;->setPackageName(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    .line 54
    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const/4 v4, 0x0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 55
    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaomi/push/service/k;->security:Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Lcom/xiaomi/push/service/S;->P(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 61
    invoke-static {v1, v0}, Lcom/xiaomi/push/service/S;->c([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/a;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 62
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "s"

    const/4 v7, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v5}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try send mi push message. packagename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 73
    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 127
    .line 128
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 129
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 130
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 131
    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 132
    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 134
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->d(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 135
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 136
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cM(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 137
    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->eJ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cK(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 139
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->eI(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 140
    return-object v1
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/xiaomi/push/service/y;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/L;)V

    .line 168
    return-void
.end method

.method static a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->JB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/x;->b(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/c/b;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/c/b;)V

    .line 192
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/x;->a(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/smack/packet/d;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0

    .line 187
    :cond_1
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/c/b;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 117
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 118
    invoke-static {p0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/xiaomi/push/service/x;->b(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/c/b;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/c/b;
    .locals 5

    .prologue
    .line 79
    :try_start_0
    new-instance v0, Lcom/xiaomi/c/b;

    invoke-direct {v0}, Lcom/xiaomi/c/b;-><init>()V

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->fp(I)V

    .line 81
    iget-object v1, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->setFrom(Ljava/lang/String;)V

    .line 82
    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->setPackageName(Ljava/lang/String;)V

    .line 83
    const-string v1, "SECMSG"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    .line 86
    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const/4 v3, 0x0

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 87
    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 89
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/xiaomi/push/service/k;->security:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->b(S)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try send mi push message. packagename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/x;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    .line 39
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/J;)V

    .line 41
    :cond_0
    return-void
.end method

.method static d(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->JB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/x;->b(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/c/b;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/c/b;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/x;->a(Lcom/xiaomi/push/service/k;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/smack/packet/d;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

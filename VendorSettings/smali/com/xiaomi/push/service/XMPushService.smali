.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/e;


# static fields
.field public static START_STICKY:I

.field private static final beO:I


# instance fields
.field private bdU:Lcom/xiaomi/push/service/b;

.field private beK:Lcom/xiaomi/smack/c;

.field private beL:Lcom/xiaomi/push/service/T;

.field private beM:Lcom/xiaomi/push/service/aq;

.field private beN:J

.field private beP:Lcom/xiaomi/smack/t;

.field private beQ:Lcom/xiaomi/c/f;

.field private beR:Lcom/xiaomi/smack/a;

.field private beS:Lcom/xiaomi/push/service/PacketSync;

.field private beT:Lcom/xiaomi/push/service/d;

.field private beU:Lcom/xiaomi/smack/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xiaomi/push/service/XMPushService;->beO:I

    .line 114
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Lcom/xiaomi/b/f;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2:443"

    invoke-static {v0, v1}, Lcom/xiaomi/b/f;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "114.54.23.2"

    invoke-static {v0, v1}, Lcom/xiaomi/b/f;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.13.142.2"

    invoke-static {v0, v1}, Lcom/xiaomi/b/f;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.206.200.2"

    invoke-static {v0, v1}, Lcom/xiaomi/b/f;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sput-boolean v2, Lcom/xiaomi/smack/t;->bhm:Z

    .line 893
    sput v2, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->beN:J

    .line 131
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->beS:Lcom/xiaomi/push/service/PacketSync;

    .line 135
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    .line 139
    new-instance v0, Lcom/xiaomi/push/service/ab;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ab;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beU:Lcom/xiaomi/smack/g;

    return-void
.end method

.method private E(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 880
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 881
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_1

    .line 883
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/J;

    .line 884
    if-eqz v2, :cond_0

    .line 885
    new-instance v0, Lcom/xiaomi/push/service/aA;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/aA;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->ef(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method private I(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 358
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 361
    const-string v3, "ext_encrypt"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 362
    new-instance v4, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    .line 363
    const/4 v2, 0x0

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/d;

    .line 365
    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 370
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    .line 373
    if-eqz v3, :cond_2

    const-string v2, "3"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/smack/a;->JB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    iget-object v1, v1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/c/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v0

    .line 377
    new-instance v1, Lcom/xiaomi/push/service/U;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 382
    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    .line 383
    :cond_3
    if-eqz v0, :cond_0

    .line 384
    new-instance v1, Lcom/xiaomi/push/service/U;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_0
.end method

.method private IO()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 257
    .line 259
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 260
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    if-eqz v0, :cond_3

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 271
    :goto_1
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->Kk()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    invoke-virtual {v0}, Lcom/xiaomi/smack/t;->JP()V

    .line 276
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IQ()V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/d;->fe(I)V

    .line 284
    new-instance v0, Lcom/xiaomi/push/service/ap;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ap;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 286
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/push/a/b;->dP(Landroid/content/Context;)Lcom/xiaomi/push/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b;->GE()V

    .line 290
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IT()V

    .line 291
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 263
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 268
    :cond_3
    const-string v0, "network changed, no active network"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_4
    new-instance v0, Lcom/xiaomi/push/service/ar;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/push/service/ar;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto :goto_2
.end method

.method private IP()Z
    .locals 4

    .prologue
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->beN:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->aQ(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private IQ()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->beN:J

    .line 307
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->G(Landroid/content/Context;I)V

    .line 310
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    .line 322
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->JO()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->dt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/ax;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ax;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 318
    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/ar;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/ar;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 319
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    goto :goto_0
.end method

.method private IT()V
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/push/service/b/a;->ck(Z)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->stop()V

    goto :goto_0
.end method

.method private IU()V
    .locals 3

    .prologue
    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beU:Lcom/xiaomi/smack/g;

    new-instance v2, Lcom/xiaomi/push/service/ak;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/ak;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/t;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 1108
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    invoke-virtual {v0}, Lcom/xiaomi/smack/t;->connect()V

    .line 1110
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    const-string v1, "fail to create xmpp connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/smack/t;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private IV()V
    .locals 3

    .prologue
    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beU:Lcom/xiaomi/smack/g;

    new-instance v2, Lcom/xiaomi/push/service/al;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/al;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V

    .line 1126
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->connect()V

    .line 1128
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1131
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/c/f;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private J(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 391
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 394
    array-length v0, v5

    new-array v6, v0, [Lcom/xiaomi/smack/packet/d;

    .line 395
    const-string v0, "ext_encrypt"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move v1, v2

    .line 396
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_1

    .line 397
    new-instance v8, Lcom/xiaomi/smack/packet/d;

    aget-object v0, v5, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v8, v0}, Lcom/xiaomi/smack/packet/d;-><init>(Landroid/os/Bundle;)V

    aput-object v8, v6, v1

    .line 398
    aget-object v0, v6, v1

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/d;

    aput-object v0, v6, v1

    .line 399
    aget-object v0, v6, v1

    if-nez v0, :cond_0

    .line 427
    :goto_1
    return-void

    .line 396
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 406
    if-eqz v7, :cond_3

    const-string v0, "3"

    aget-object v3, v6, v2

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->JB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    array-length v0, v6

    new-array v0, v0, [Lcom/xiaomi/c/b;

    .line 411
    :goto_2
    array-length v3, v6

    if-ge v2, v3, :cond_2

    .line 412
    aget-object v3, v6, v2

    .line 413
    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v4

    .line 414
    iget-object v4, v4, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/c/b;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;)Lcom/xiaomi/c/b;

    move-result-object v3

    aput-object v3, v0, v2

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    :cond_2
    new-instance v1, Lcom/xiaomi/push/service/a;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/c/b;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_1

    .line 421
    :cond_3
    :goto_3
    array-length v0, v6

    if-ge v2, v0, :cond_5

    .line 422
    aget-object v0, v6, v2

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v0

    aget-object v3, v6, v2

    invoke-virtual {v3}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 423
    if-eqz v7, :cond_4

    aget-object v3, v6, v2

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object v0

    :goto_4
    aput-object v0, v6, v2

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 423
    :cond_4
    aget-object v0, v6, v2

    goto :goto_4

    .line 426
    :cond_5
    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0, v6}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/smack/packet/d;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_1
.end method

.method private Ja()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1592
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    :goto_0
    return v0

    .line 1595
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/F;->dW(Landroid/content/Context;)Lcom/xiaomi/push/service/F;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->blk:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 1596
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/F;->q(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method private Jb()V
    .locals 3

    .prologue
    .line 1600
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 1601
    sget v0, Lcom/xiaomi/push/service/XMPushService;->beO:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->startForeground(ILandroid/app/Notification;)V

    .line 1624
    :goto_0
    return-void

    .line 1605
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/push/service/Y;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/push/service/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method static synthetic Jc()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/xiaomi/push/service/XMPushService;->beO:I

    return v0
.end method

.method private K(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 433
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 436
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    const-string v0, "security is empty. ignore."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 728
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    if-eqz v0, :cond_8

    .line 443
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    .line 444
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/J;

    move-result-object v2

    .line 446
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/J;ZILjava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, v2, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v6, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v6, :cond_4

    .line 451
    new-instance v0, Lcom/xiaomi/push/service/am;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/am;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 453
    :cond_4
    if-eqz v1, :cond_5

    .line 457
    new-instance v0, Lcom/xiaomi/push/service/ay;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/ay;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 458
    :cond_5
    iget-object v0, v2, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bec:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_6

    .line 460
    const-string v0, "the client is binding. %1$s %2$s."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v2, v2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_6
    iget-object v0, v2, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v6, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    move-object v7, p0

    move-object v8, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/J;ZILjava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_7
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    goto :goto_0

    .line 473
    :cond_8
    const-string v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_9
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 476
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    sget-object v2, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    sget-object v3, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service called closechannel chid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 483
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    invoke-direct {p0, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    goto :goto_1

    .line 488
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 489
    invoke-direct {p0, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move-object v1, p0

    move-object v6, v5

    .line 491
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    :cond_c
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 496
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->I(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 497
    :cond_d
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 498
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->J(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 499
    :cond_e
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 500
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 504
    new-instance v4, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/b;-><init>(Landroid/os/Bundle;)V

    .line 505
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_1

    .line 507
    new-instance v0, Lcom/xiaomi/push/service/U;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 509
    :cond_f
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 510
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 514
    new-instance v4, Lcom/xiaomi/smack/packet/Presence;

    invoke-direct {v4, v2}, Lcom/xiaomi/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    .line 515
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_1

    .line 517
    new-instance v0, Lcom/xiaomi/push/service/U;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/push/service/U;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 519
    :cond_10
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 520
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    if-eqz v0, :cond_1

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request reset connection from chid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v0, v1, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/a;->M(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_11
    new-instance v0, Lcom/xiaomi/push/service/az;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/az;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 534
    :cond_12
    sget-object v0, Lcom/xiaomi/push/service/M;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 535
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 537
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open channel should be called first before update info, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_13
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    sget-object v4, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 547
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    :cond_14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 552
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 554
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    move-object v5, v0

    .line 559
    :cond_15
    :goto_2
    if-eqz v5, :cond_1

    .line 560
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 561
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    .line 563
    :cond_16
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    goto/16 :goto_0

    .line 557
    :cond_17
    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v5

    goto :goto_2

    .line 567
    :cond_18
    const-string v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 569
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/Q;->dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/Q;->ID()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 570
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/Q;->dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/Q;->IE()I

    move-result v0

    if-nez v0, :cond_19

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register without being provisioned. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mipush_app_package"

    .line 572
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_19
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 577
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 578
    const-string v0, "mipush_env_chanage"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 579
    const-string v1, "mipush_env_type"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 580
    invoke-static {p0}, Lcom/xiaomi/push/service/n;->dV(Landroid/content/Context;)Lcom/xiaomi/push/service/n;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/service/n;->ec(Ljava/lang/String;)V

    .line 581
    if-eqz v0, :cond_1a

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 582
    new-instance v0, Lcom/xiaomi/push/service/ah;

    const/16 v2, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ah;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 599
    :cond_1a
    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_1b
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.xiaomi.mipush.UNREGISTER_APP"

    .line 602
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 603
    :cond_1c
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 605
    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 606
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v4, "5"

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 608
    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 609
    invoke-static {p0}, Lcom/xiaomi/push/service/n;->dV(Landroid/content/Context;)Lcom/xiaomi/push/service/n;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/push/service/n;->eb(Ljava/lang/String;)V

    .line 611
    :cond_1d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 612
    if-eqz v3, :cond_1

    .line 613
    invoke-static {v1, v2}, Lcom/xiaomi/push/service/p;->c(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 618
    :cond_1e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    .line 619
    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v4, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v4, :cond_1f

    .line 620
    if-eqz v3, :cond_1

    .line 621
    invoke-static {v1, v2}, Lcom/xiaomi/push/service/p;->c(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 626
    :cond_1f
    new-instance v0, Lcom/xiaomi/push/service/ai;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xiaomi/push/service/ai;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;)V

    goto/16 :goto_0

    .line 645
    :cond_20
    sget-object v0, Lcom/xiaomi/push/service/R;->bep:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 647
    const-string v0, "uninstall_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v3

    .line 659
    :goto_3
    const-string v1, "com.xiaomi.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 660
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v9, :cond_21

    .line 662
    const-string v0, "1"

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->E(Ljava/lang/String;I)V

    .line 663
    const-string v0, "close the miliao channel as the app is uninstalled."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_21
    const-string v1, "pref_registered_pkg_names"

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 669
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v9, :cond_1

    .line 673
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 674
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/z;->aa(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 678
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/z;->Z(Landroid/content/Context;Ljava/lang/String;)V

    .line 680
    :cond_22
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/z;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    if-eqz v2, :cond_1

    .line 685
    :try_start_1
    invoke-static {v0, v2}, Lcom/xiaomi/push/service/x;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/x;->d(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to send Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 689
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 694
    :cond_23
    const-string v0, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 695
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    sget-object v1, Lcom/xiaomi/push/service/M;->bej:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 697
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    if-ltz v1, :cond_24

    .line 699
    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/z;->j(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 700
    :cond_24
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 701
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/z;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :cond_25
    const-string v0, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    sget-object v0, Lcom/xiaomi/push/service/M;->bel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    sget-object v0, Lcom/xiaomi/push/service/M;->bek:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 711
    sget-object v0, Lcom/xiaomi/push/service/M;->bek:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/c;->cR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 718
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    :cond_27
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/g/c;->cR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v3, v9

    .line 715
    goto :goto_4

    .line 720
    :cond_28
    if-eqz v3, :cond_29

    .line 721
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/z;->Z(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_29
    invoke-static {p0, v2, v1}, Lcom/xiaomi/push/service/z;->k(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 655
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/a;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    return-object p1
.end method

.method private a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 808
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/S;->P(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 809
    new-instance v3, Lcom/xiaomi/smack/packet/d;

    invoke-direct {v3}, Lcom/xiaomi/smack/packet/d;-><init>()V

    .line 810
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setFrom(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setTo(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setPacketID(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setChannelId(Ljava/lang/String;)V

    .line 814
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/d;->setEncrypted(Z)V

    .line 816
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/S;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 817
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 819
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v3, v5}, Lcom/xiaomi/smack/packet/d;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 822
    return-object v3
.end method

.method private a(Lcom/xiaomi/smack/packet/e;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/smack/packet/e;
    .locals 4

    .prologue
    .line 769
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    .line 770
    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->eg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 771
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 802
    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    .line 776
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/smack/packet/e;->setPackageName(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 780
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/e;->setChannelId(Ljava/lang/String;)V

    .line 783
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    .line 784
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_5

    .line 790
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_6
    instance-of v0, p1, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 797
    check-cast p1, Lcom/xiaomi/smack/packet/d;

    iget-object v0, v1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/smack/packet/d;

    move-result-object p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->K(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/at;)V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/g;)V

    .line 911
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 826
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v2

    .line 828
    const/4 v0, 0x0

    .line 829
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 830
    sget-object v3, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 831
    sget-object v4, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 832
    iget-object v5, v2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session changed. old session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", new session="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " chid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move v0, v1

    .line 836
    :cond_0
    iget-object v2, v2, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security changed. chid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sechash = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/g/c;->cQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move v0, v1

    .line 841
    :cond_1
    return v0
.end method

.method private b(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/J;
    .locals 3

    .prologue
    .line 845
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 848
    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lcom/xiaomi/push/service/J;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/J;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 853
    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    .line 854
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    .line 855
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    .line 856
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    .line 857
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    .line 858
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    .line 859
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_KICK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/push/service/J;->bdQ:Z

    .line 860
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    .line 861
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    .line 862
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    .line 863
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->bdU:Lcom/xiaomi/push/service/b;

    .line 864
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/J;->context:Landroid/content/Context;

    .line 866
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/J;)V

    .line 867
    return-object v0
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    const-string v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    const-string v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->eq(Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IV()V

    .line 1075
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_3

    .line 1076
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IU()V

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_4

    .line 1081
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager;->dX(Landroid/content/Context;)V

    .line 1085
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_5

    .line 1088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1090
    :cond_5
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static dZ(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1628
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 1630
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1631
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1632
    const-string v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1633
    const-string v2, "Push Service"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1634
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1635
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1640
    :goto_0
    return-object v0

    .line 1637
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1638
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1639
    const-string v2, "Push Service"

    const-string v3, "Push Service"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IT()V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/d;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beS:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connect()V

    return-void
.end method

.method static synthetic l(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IO()V

    return-void
.end method


# virtual methods
.method public IR()Z
    .locals 1

    .prologue
    .line 1026
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Iz()I

    move-result v0

    if-lez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IS()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1038
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1039
    const-string v2, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1040
    const-string v3, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1041
    const-string v4, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1042
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1044
    :cond_1
    :goto_0
    return v0

    .line 1043
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public IW()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1136
    new-instance v0, Lcom/xiaomi/push/service/b;

    invoke-direct {v0}, Lcom/xiaomi/push/service/b;-><init>()V

    return-object v0
.end method

.method public IX()Lcom/xiaomi/push/service/b;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    return-object v0
.end method

.method public IY()Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method public IZ()V
    .locals 4

    .prologue
    .line 1525
    new-instance v0, Lcom/xiaomi/push/service/ac;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/ac;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;J)V

    .line 1540
    return-void
.end method

.method public a(Lcom/xiaomi/smack/c;)Lcom/xiaomi/smack/t;
    .locals 1

    .prologue
    .line 1140
    new-instance v0, Lcom/xiaomi/smack/t;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/smack/t;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    return-object v0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/a;->a(ILjava/lang/Exception;)V

    .line 1011
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    .line 1014
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 1015
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 1017
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->G(Landroid/content/Context;I)V

    .line 1018
    return-void

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1007
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/at;J)V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/g;J)V

    .line 919
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 1550
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/smack/a;)V

    .line 1551
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beL:Lcom/xiaomi/push/service/T;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/T;->IH()V

    .line 1552
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->Iy()Ljava/util/ArrayList;

    move-result-object v0

    .line 1553
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    .line 1554
    new-instance v2, Lcom/xiaomi/push/service/am;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/am;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    .line 1555
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto :goto_0

    .line 1557
    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1544
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 1546
    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1561
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V

    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 1563
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 871
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 872
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v2

    .line 873
    if-eqz v2, :cond_0

    .line 874
    new-instance v0, Lcom/xiaomi/push/service/aA;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/aA;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 876
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public a([Lcom/xiaomi/c/b;)V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->b([Lcom/xiaomi/c/b;)V

    .line 969
    return-void

    .line 967
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->a([Lcom/xiaomi/smack/packet/e;)V

    .line 985
    return-void

    .line 983
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/xiaomi/push/service/at;)V
    .locals 2

    .prologue
    .line 914
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;J)V

    .line 915
    return-void
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 1

    .prologue
    .line 1519
    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    .line 1520
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/d/f;->b(Lcom/xiaomi/smack/a;)V

    .line 1521
    return-void
.end method

.method public c(Lcom/xiaomi/push/service/at;)V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    iget v1, p1, Lcom/xiaomi/push/service/at;->type:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/d;->a(ILcom/xiaomi/push/service/g;)V

    .line 1511
    return-void
.end method

.method public c([BLjava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x42c1d83

    .line 731
    if-nez p1, :cond_0

    .line 732
    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 734
    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 766
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 738
    :try_start_0
    invoke-static {v1, p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 739
    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bkq:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v2, :cond_1

    .line 741
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->LL()[B

    move-result-object v0

    .line 743
    invoke-static {v4, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 746
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;[B)V

    .line 747
    new-instance v0, Lcom/xiaomi/push/service/o;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/o;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 747
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 752
    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 760
    :catch_1
    move-exception v0

    .line 761
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 762
    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v6, v0}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 758
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public cj(Z)V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beL:Lcom/xiaomi/push/service/T;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/T;->ci(Z)V

    .line 996
    return-void
.end method

.method public d(Lcom/xiaomi/push/service/J;)V
    .locals 6

    .prologue
    .line 999
    if-eqz p1, :cond_0

    .line 1000
    invoke-virtual {p1}, Lcom/xiaomi/push/service/J;->IC()J

    move-result-wide v0

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1002
    new-instance v2, Lcom/xiaomi/push/service/am;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/am;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;J)V

    .line 1004
    :cond_0
    return-void
.end method

.method public e(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 977
    return-void

    .line 975
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/xiaomi/c/b;)V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/c/b;)V

    .line 961
    return-void

    .line 959
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fd(I)Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->fd(I)Z

    move-result v0

    return v0
.end method

.method public fe(I)V
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->fe(I)V

    .line 1503
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beR:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 906
    new-instance v0, Lcom/xiaomi/push/service/av;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/av;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 154
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/c;->dl(Landroid/content/Context;)V

    .line 156
    invoke-static {p0}, Lcom/xiaomi/push/service/l;->dT(Landroid/content/Context;)Lcom/xiaomi/push/service/k;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget v0, v0, Lcom/xiaomi/push/service/k;->aXG:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->eF(I)V

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/N;->e(Lcom/xiaomi/push/service/XMPushService;)V

    .line 164
    new-instance v0, Lcom/xiaomi/push/service/ae;

    const/16 v3, 0x1466

    const-string v4, "xiaomi.com"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/ae;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    .line 178
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->cr(Z)V

    .line 180
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/smack/c;)Lcom/xiaomi/smack/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    .line 182
    new-instance v0, Lcom/xiaomi/c/f;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beK:Lcom/xiaomi/smack/c;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/c/f;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/c;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    .line 185
    new-instance v0, Lcom/xiaomi/b/b;

    const-string v1, "mibind.chat.gslb.mi-idc.com"

    invoke-direct {v0, v1}, Lcom/xiaomi/b/b;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->IW()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    .line 191
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Fl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->bdU:Lcom/xiaomi/push/service/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/b;->dQ(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/push/service/b/a;->dl(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/t;->a(Lcom/xiaomi/smack/e;)V

    .line 201
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beQ:Lcom/xiaomi/c/f;

    invoke-virtual {v0, p0}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/smack/e;)V

    .line 203
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beS:Lcom/xiaomi/push/service/PacketSync;

    .line 205
    new-instance v0, Lcom/xiaomi/push/service/T;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/T;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beL:Lcom/xiaomi/push/service/T;

    .line 207
    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0}, Lcom/xiaomi/push/service/c;-><init>()V

    .line 208
    invoke-virtual {v0}, Lcom/xiaomi/push/service/c;->register()V

    .line 212
    new-instance v0, Lcom/xiaomi/push/service/d;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    .line 213
    new-instance v0, Lcom/xiaomi/push/service/af;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/af;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 230
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->IB()V

    .line 232
    new-instance v1, Lcom/xiaomi/push/service/ag;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/ag;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->a(Lcom/xiaomi/push/service/I;)V

    .line 244
    new-instance v0, Lcom/xiaomi/push/service/aq;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aq;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beM:Lcom/xiaomi/push/service/aq;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->beM:Lcom/xiaomi/push/service/aq;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->Ja()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->Jb()V

    .line 253
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPushService created pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/push/service/XMPushService;->beO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 254
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beM:Lcom/xiaomi/push/service/aq;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 925
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beT:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->Ip()V

    .line 926
    new-instance v0, Lcom/xiaomi/push/service/aj;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/aj;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 941
    new-instance v0, Lcom/xiaomi/push/service/au;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/au;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 944
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->IB()V

    .line 945
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->G(Landroid/content/Context;I)V

    .line 946
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->IA()V

    .line 948
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->beP:Lcom/xiaomi/smack/t;

    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/t;->b(Lcom/xiaomi/smack/e;)V

    .line 949
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/V;->clear()V

    .line 950
    invoke-static {}, Lcom/xiaomi/push/service/b/a;->stop()V

    .line 951
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 952
    const-string v0, "Service destroyed"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 329
    if-nez p1, :cond_1

    .line 330
    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 334
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    const-string v0, "Service called on timer"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IQ()V

    .line 351
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string v0, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    const-string v0, "Service called on check alive."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->IQ()V

    goto :goto_1

    .line 343
    :cond_3
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/xiaomi/push/service/as;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/as;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 897
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 901
    sget v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return v0
.end method

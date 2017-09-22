.class public Lcom/xiaomi/push/service/N;
.super Lcom/xiaomi/push/service/X;
.source "PushHostManagerFactory.java"

# interfaces
.implements Lcom/xiaomi/b/i;


# instance fields
.field private bcS:Lcom/xiaomi/push/service/XMPushService;

.field private bem:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/xiaomi/push/service/X;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaomi/push/service/N;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 44
    return-void
.end method

.method public static e(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/xiaomi/push/service/N;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/N;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 36
    invoke-static {}, Lcom/xiaomi/push/service/V;->IJ()Lcom/xiaomi/push/service/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/V;->a(Lcom/xiaomi/push/service/X;)V

    .line 38
    invoke-static {v0}, Lcom/xiaomi/b/f;->a(Lcom/xiaomi/b/i;)V

    .line 39
    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/O;

    invoke-direct {v2}, Lcom/xiaomi/push/service/O;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/b/f;->a(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)Lcom/xiaomi/b/f;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/xiaomi/push/service/P;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/P;-><init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/b/b;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public d(Lcom/xiaomi/push/b/e;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ho()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Hn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/N;->bem:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch bucket :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Hn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/push/service/N;->bem:J

    .line 109
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/xiaomi/b/f;->clear()V

    .line 111
    invoke-virtual {v0}, Lcom/xiaomi/b/f;->Gy()V

    .line 113
    iget-object v2, p0, Lcom/xiaomi/push/service/N;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->JE()Lcom/xiaomi/smack/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/c;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/b/f;->dm(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/xiaomi/b/b;->Gs()Ljava/util/ArrayList;

    move-result-object v4

    .line 118
    const/4 v2, 0x1

    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "bucket changed, force reconnect"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaomi/push/service/N;->bcS:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/push/service/N;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 136
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

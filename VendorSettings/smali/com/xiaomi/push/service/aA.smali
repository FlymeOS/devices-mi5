.class Lcom/xiaomi/push/service/aA;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field beY:Lcom/xiaomi/push/service/J;

.field bfa:I

.field bfb:Ljava/lang/String;

.field reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/xiaomi/push/service/aA;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1379
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    .line 1380
    iput-object p2, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    .line 1381
    iput p3, p0, Lcom/xiaomi/push/service/aA;->bfa:I

    .line 1382
    iput-object p4, p0, Lcom/xiaomi/push/service/aA;->bfb:Ljava/lang/String;

    .line 1383
    iput-object p5, p0, Lcom/xiaomi/push/service/aA;->reason:Ljava/lang/String;

    .line 1384
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 6

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/aA;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1390
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aA;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    iget-object v2, v2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->R(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iget v2, p0, Lcom/xiaomi/push/service/aA;->bfa:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/aA;->reason:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/aA;->bfb:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1397
    return-void

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1393
    iget-object v1, p0, Lcom/xiaomi/push/service/aA;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbind the channel. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aA;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

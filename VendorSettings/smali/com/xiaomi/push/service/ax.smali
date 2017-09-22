.class Lcom/xiaomi/push/service/ax;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/xiaomi/push/service/ax;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1467
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1468
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/xiaomi/push/service/ax;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    :try_start_0
    invoke-static {}, Lcom/xiaomi/d/j;->Ku()V

    .line 1475
    iget-object v0, p0, Lcom/xiaomi/push/service/ax;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->ping()V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1478
    iget-object v1, p0, Lcom/xiaomi/push/service/ax;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1485
    const-string v0, "send ping.."

    return-object v0
.end method

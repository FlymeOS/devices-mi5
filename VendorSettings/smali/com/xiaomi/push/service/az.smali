.class Lcom/xiaomi/push/service/az;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/xiaomi/push/service/az;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1448
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1449
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1453
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/xiaomi/push/service/az;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->k(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1456
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    const-string v0, "reset the connection."

    return-object v0
.end method

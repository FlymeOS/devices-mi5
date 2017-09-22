.class Lcom/xiaomi/push/service/ac;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/xiaomi/push/service/ac;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/xiaomi/push/service/ac;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/xiaomi/push/service/ac;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1532
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1536
    const-string v0, "disconnect because of connecting timeout"

    return-object v0
.end method

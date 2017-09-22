.class public Lcom/xiaomi/push/service/ap;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/xiaomi/push/service/ap;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1409
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/xiaomi/push/service/ap;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/xiaomi/push/service/ap;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->k(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1417
    :goto_0
    return-void

    .line 1415
    :cond_0
    const-string v0, "should not connect. quit the job."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    const-string v0, "do reconnect.."

    return-object v0
.end method

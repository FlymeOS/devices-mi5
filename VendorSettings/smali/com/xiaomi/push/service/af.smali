.class Lcom/xiaomi/push/service/af;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xiaomi/push/service/af;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/af;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->e(Lcom/xiaomi/push/service/XMPushService;)V

    .line 218
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/x;->d(Lcom/xiaomi/push/service/XMPushService;)V

    .line 219
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaomi/push/service/af;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "prepare the mi push account."

    return-object v0
.end method

.class Lcom/xiaomi/push/service/ah;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic beW:I

.field final synthetic beX:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/xiaomi/push/service/ah;->beV:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/ah;->beW:I

    iput-object p4, p0, Lcom/xiaomi/push/service/ah;->beX:[B

    iput-object p5, p0, Lcom/xiaomi/push/service/ah;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/l;->dU(Landroid/content/Context;)V

    .line 587
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->ef(Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/xiaomi/push/service/ah;->beW:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->eF(I)V

    .line 589
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->g(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/c;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smack/c;->JQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/c;->setHost(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->beV:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ah;->beX:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/ah;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->c([BLjava/lang/String;)V

    .line 591
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    const-string v0, "clear account cache."

    return-object v0
.end method

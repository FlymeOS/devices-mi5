.class Lcom/xiaomi/push/service/ai;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic beX:[B

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/xiaomi/push/service/ai;->beV:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/ai;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/ai;->beX:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->beV:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/ai;->beX:[B

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/x;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 634
    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const-string v0, "send mi push message"

    return-object v0
.end method

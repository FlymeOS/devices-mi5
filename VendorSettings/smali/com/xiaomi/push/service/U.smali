.class Lcom/xiaomi/push/service/U;
.super Lcom/xiaomi/push/service/at;
.source "SendMessageJob.java"


# instance fields
.field private bcS:Lcom/xiaomi/push/service/XMPushService;

.field private bey:Lcom/xiaomi/smack/packet/e;

.field private bez:Lcom/xiaomi/c/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 19
    iput-object p1, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/push/service/U;->bez:Lcom/xiaomi/c/b;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 26
    iput-object p2, p0, Lcom/xiaomi/push/service/U;->bey:Lcom/xiaomi/smack/packet/e;

    .line 27
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/U;->bey:Lcom/xiaomi/smack/packet/e;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/U;->bey:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/smack/packet/e;)V

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/U;->bez:Lcom/xiaomi/c/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->f(Lcom/xiaomi/c/b;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 39
    iget-object v1, p0, Lcom/xiaomi/push/service/U;->bcS:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "send a message."

    return-object v0
.end method

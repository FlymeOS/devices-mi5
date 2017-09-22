.class Lcom/xiaomi/push/service/a;
.super Lcom/xiaomi/push/service/at;
.source "BatchSendMessageJob.java"


# instance fields
.field private bcS:Lcom/xiaomi/push/service/XMPushService;

.field private bcT:[Lcom/xiaomi/smack/packet/d;

.field private bcU:[Lcom/xiaomi/c/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 18
    iput-object p1, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/push/service/a;->bcU:[Lcom/xiaomi/c/b;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/smack/packet/d;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 24
    iput-object p1, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 25
    iput-object p2, p0, Lcom/xiaomi/push/service/a;->bcT:[Lcom/xiaomi/smack/packet/d;

    .line 26
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->bcT:[Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->bcT:[Lcom/xiaomi/smack/packet/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a([Lcom/xiaomi/smack/packet/e;)V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->bcU:[Lcom/xiaomi/c/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a([Lcom/xiaomi/c/b;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 38
    iget-object v1, p0, Lcom/xiaomi/push/service/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "batch send message."

    return-object v0
.end method

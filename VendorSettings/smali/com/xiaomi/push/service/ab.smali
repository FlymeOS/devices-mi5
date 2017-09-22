.class Lcom/xiaomi/push/service/ab;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/g;


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/xiaomi/push/service/ab;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/c/b;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/push/service/ab;->beV:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/ao;

    iget-object v2, p0, Lcom/xiaomi/push/service/ab;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/ao;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 147
    return-void
.end method

.method public a(Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/push/service/ab;->beV:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/aw;

    iget-object v2, p0, Lcom/xiaomi/push/service/ab;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/aw;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 142
    return-void
.end method

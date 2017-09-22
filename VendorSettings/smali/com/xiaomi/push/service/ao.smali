.class Lcom/xiaomi/push/service/ao;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field private bez:Lcom/xiaomi/c/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/xiaomi/push/service/ao;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1249
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/ao;->bez:Lcom/xiaomi/c/b;

    .line 1250
    iput-object p2, p0, Lcom/xiaomi/push/service/ao;->bez:Lcom/xiaomi/c/b;

    .line 1251
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/xiaomi/push/service/ao;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ao;->bez:Lcom/xiaomi/c/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->c(Lcom/xiaomi/c/b;)V

    .line 1256
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    const-string v0, "receive a message."

    return-object v0
.end method

.class Lcom/xiaomi/push/service/aw;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field private bey:Lcom/xiaomi/smack/packet/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/xiaomi/push/service/aw;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1209
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aw;->bey:Lcom/xiaomi/smack/packet/e;

    .line 1210
    iput-object p2, p0, Lcom/xiaomi/push/service/aw;->bey:Lcom/xiaomi/smack/packet/e;

    .line 1211
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/xiaomi/push/service/aw;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->j(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aw;->bey:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->c(Lcom/xiaomi/smack/packet/e;)V

    .line 1216
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    const-string v0, "receive a message."

    return-object v0
.end method

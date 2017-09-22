.class Lcom/xiaomi/push/service/au;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/xiaomi/push/service/au;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1150
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1151
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/xiaomi/push/service/au;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->i(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->quit()V

    .line 1156
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    const-string v0, "ask the job queue to quit"

    return-object v0
.end method

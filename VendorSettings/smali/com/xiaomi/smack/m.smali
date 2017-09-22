.class Lcom/xiaomi/smack/m;
.super Lcom/xiaomi/push/service/at;
.source "SocketConnection.java"


# instance fields
.field final synthetic bhY:J

.field final synthetic bhZ:Lcom/xiaomi/smack/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/l;IJ)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xiaomi/smack/m;->bhZ:Lcom/xiaomi/smack/l;

    iput-wide p3, p0, Lcom/xiaomi/smack/m;->bhY:J

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 102
    iget-object v0, p0, Lcom/xiaomi/smack/m;->bhZ:Lcom/xiaomi/smack/l;

    invoke-virtual {v0}, Lcom/xiaomi/smack/l;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/m;->bhZ:Lcom/xiaomi/smack/l;

    iget-wide v2, p0, Lcom/xiaomi/smack/m;->bhY:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/l;->M(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaomi/smack/m;->bhZ:Lcom/xiaomi/smack/l;

    iget-object v0, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/smack/m;->bhZ:Lcom/xiaomi/smack/l;

    iget-object v0, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->cj(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check the ping-pong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/smack/m;->bhY:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/xiaomi/smack/n;
.super Lcom/xiaomi/push/service/at;
.source "SocketConnection.java"


# instance fields
.field final synthetic bhZ:Lcom/xiaomi/smack/l;

.field final synthetic bia:Ljava/lang/Exception;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/l;IILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xiaomi/smack/n;->bhZ:Lcom/xiaomi/smack/l;

    iput p3, p0, Lcom/xiaomi/smack/n;->val$error:I

    iput-object p4, p0, Lcom/xiaomi/smack/n;->bia:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xiaomi/smack/n;->bhZ:Lcom/xiaomi/smack/l;

    iget-object v0, v0, Lcom/xiaomi/smack/l;->bcS:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/smack/n;->val$error:I

    iget-object v2, p0, Lcom/xiaomi/smack/n;->bia:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 350
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown the connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smack/n;->val$error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/n;->bia:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

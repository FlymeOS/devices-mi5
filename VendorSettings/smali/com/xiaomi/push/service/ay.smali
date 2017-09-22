.class Lcom/xiaomi/push/service/ay;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field beY:Lcom/xiaomi/push/service/J;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/xiaomi/push/service/ay;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1344
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    .line 1345
    iput-object p2, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    .line 1346
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 6

    .prologue
    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/xiaomi/push/service/ay;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    iget-object v2, v2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bec:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/xiaomi/push/service/ay;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/push/service/J;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1359
    iget-object v1, p0, Lcom/xiaomi/push/service/ay;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ay;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

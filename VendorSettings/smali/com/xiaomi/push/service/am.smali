.class Lcom/xiaomi/push/service/am;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field beY:Lcom/xiaomi/push/service/J;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/xiaomi/push/service/am;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1269
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    .line 1270
    iput-object p2, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    .line 1271
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 6

    .prologue
    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/am;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    const-string v0, "trying bind while the connection is not created, quit!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 1298
    :goto_0
    return-void

    .line 1281
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    iget-object v2, v2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 1283
    if-nez v0, :cond_1

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore bind because the channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 1296
    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beV:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0

    .line 1285
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_2

    .line 1286
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bec:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->h(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/a;->e(Lcom/xiaomi/push/service/J;)V

    .line 1289
    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/d/j;->b(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V

    goto :goto_0

    .line 1291
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying duplicate bind, ingore! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/am;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

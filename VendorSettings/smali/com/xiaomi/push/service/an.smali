.class Lcom/xiaomi/push/service/an;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field private final beY:Lcom/xiaomi/push/service/J;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 1311
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1312
    iput-object p1, p0, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    .line 1313
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1317
    iget-object v0, p0, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x15

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1328
    instance-of v0, p1, Lcom/xiaomi/push/service/an;

    if-nez v0, :cond_0

    .line 1329
    const/4 v0, 0x0

    .line 1331
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/xiaomi/push/service/an;

    iget-object v0, p1, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind time out. chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/xiaomi/push/service/an;->beY:Lcom/xiaomi/push/service/J;

    iget-object v0, v0, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

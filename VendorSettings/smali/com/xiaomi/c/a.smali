.class Lcom/xiaomi/c/a;
.super Ljava/lang/Object;
.source "Binder.java"


# direct methods
.method public static a(Lcom/xiaomi/push/service/J;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v2, Lcom/xiaomi/push/b/f;

    invoke-direct {v2}, Lcom/xiaomi/push/b/f;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dC(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dF(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dG(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 30
    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/push/service/J;->bdQ:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dD(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 31
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dE(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 36
    :goto_1
    new-instance v3, Lcom/xiaomi/c/b;

    invoke-direct {v3}, Lcom/xiaomi/c/b;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaomi/c/b;->setFrom(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/c/b;->fp(I)V

    .line 39
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaomi/c/b;->setPackageName(Ljava/lang/String;)V

    .line 40
    const-string v0, "BIND"

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/c/b;->setPacketID(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim]: bind id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v4, "challenge"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "token"

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "chid"

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "from"

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "id"

    invoke-virtual {v3}, Lcom/xiaomi/c/b;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "to"

    const-string v5, "xiaomi.com"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v4, p0, Lcom/xiaomi/push/service/J;->bdQ:Z

    if-eqz v4, :cond_6

    .line 54
    const-string v4, "kick"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_2
    iget-object v4, p0, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 60
    const-string v4, "client_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_3
    iget-object v4, p0, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 65
    const-string v4, "cloud_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_4
    iget-object v4, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v5, "XIAOMI-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v5, "XMPUSH-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-static {v4, v1, v0, v5}, Lcom/xiaomi/channel/commonutils/g/b;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_5
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dH(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    .line 89
    invoke-virtual {v2}, Lcom/xiaomi/push/b/f;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/c/b;->d([BLjava/lang/String;)V

    .line 90
    invoke-virtual {p2, v3}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/c/b;)V

    .line 91
    return-void

    .line 30
    :cond_4
    const-string v0, "0"

    goto/16 :goto_0

    .line 34
    :cond_5
    const-string v0, "XIAOMI-SASL"

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/f;->dE(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto/16 :goto_1

    .line 56
    :cond_6
    const-string v4, "kick"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 62
    :cond_7
    const-string v4, "client_attrs"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 67
    :cond_8
    const-string v4, "cloud_attrs"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v4, "XIAOMI-SASL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/xiaomi/c/b;

    invoke-direct {v0}, Lcom/xiaomi/c/b;-><init>()V

    .line 95
    invoke-virtual {v0, p1}, Lcom/xiaomi/c/b;->setFrom(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b;->fp(I)V

    .line 98
    const-string v1, "UBND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/b;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/a;->i(Lcom/xiaomi/c/b;)V

    .line 100
    return-void
.end method

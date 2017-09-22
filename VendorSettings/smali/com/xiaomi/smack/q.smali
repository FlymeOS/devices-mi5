.class public Lcom/xiaomi/smack/q;
.super Lcom/xiaomi/smack/packet/e;
.source "XMBinder.java"


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/J;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/xiaomi/smack/packet/e;-><init>()V

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    const-string v0, "challenge"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "token"

    iget-object v3, p1, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "chid"

    iget-object v3, p1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "from"

    iget-object v3, p1, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "to"

    const-string v3, "xiaomi.com"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-boolean v0, p1, Lcom/xiaomi/push/service/J;->bdQ:Z

    if-eqz v0, :cond_2

    .line 38
    const-string v0, "kick"

    const-string v3, "1"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/xiaomi/smack/a;->getConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_b

    .line 45
    invoke-virtual {p3}, Lcom/xiaomi/smack/a;->JJ()I

    move-result v0

    .line 46
    const-string v3, "conn:%1$d,t:%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {p3}, Lcom/xiaomi/smack/a;->getConnectTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v3, "pf"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p3}, Lcom/xiaomi/smack/a;->JK()V

    .line 49
    invoke-virtual {p3}, Lcom/xiaomi/smack/a;->JL()V

    move-object v3, v0

    .line 52
    :goto_1
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    const-string v0, "client_attrs"

    iget-object v4, p1, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_2
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    const-string v0, "cloud_attrs"

    iget-object v4, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_3
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v4, "XIAOMI-PASS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v4, "XMPUSH-PASS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaomi/channel/commonutils/g/b;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 81
    :goto_4
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/q;->setChannelId(Ljava/lang/String;)V

    .line 82
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/q;->setFrom(Ljava/lang/String;)V

    .line 83
    const-string v0, "xiaomi.com"

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/q;->setTo(Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/q;->setPackageName(Ljava/lang/String;)V

    .line 87
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "token"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v5}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 93
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "kick"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p1, Lcom/xiaomi/push/service/J;->bdQ:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_5
    invoke-virtual {v5, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 99
    new-instance v5, Lcom/xiaomi/smack/packet/a;

    const-string v6, "sig"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5, v4}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v5}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 105
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "method"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 108
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 112
    :goto_6
    invoke-virtual {p0, v4}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 115
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "client_attrs"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_7
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 121
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "cloud_attrs"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_8
    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 126
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v5, "pf"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/xiaomi/smack/q;->b(Lcom/xiaomi/smack/packet/a;)V

    .line 132
    :cond_1
    return-void

    .line 40
    :cond_2
    const-string v0, "kick"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :cond_3
    const-string v0, "client_attrs"

    const-string v4, ""

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 60
    :cond_4
    const-string v0, "cloud_attrs"

    const-string v4, ""

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 65
    :cond_5
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    const-string v2, "XIAOMI-SASL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    move-object v4, v1

    goto/16 :goto_4

    .line 95
    :cond_7
    const-string v0, "0"

    goto/16 :goto_5

    .line 110
    :cond_8
    const-string v0, "XIAOMI-SASL"

    invoke-virtual {v4, v0}, Lcom/xiaomi/smack/packet/a;->setText(Ljava/lang/String;)V

    goto :goto_6

    .line 117
    :cond_9
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 123
    :cond_a
    iget-object v0, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    move-object v3, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v0, "<bind "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getPacketID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "to=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "from=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    const-string v0, "chid=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/xiaomi/smack/q;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/f;

    .line 156
    invoke-interface {v0}, Lcom/xiaomi/smack/packet/f;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "</bind>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

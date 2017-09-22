.class public Lcom/xiaomi/push/service/b;
.super Ljava/lang/Object;
.source "ClientEventDispatcher.java"


# instance fields
.field private bcV:Lcom/xiaomi/push/service/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaomi/push/service/q;

    invoke-direct {v0}, Lcom/xiaomi/push/service/q;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/b;->bcV:Lcom/xiaomi/push/service/q;

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/push/service/b;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/J;I)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    const-string v1, "com.xiaomi.push.channel_closed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/J;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "mipush kicked by server"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "com.xiaomi.push.kicked"

    .line 196
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 197
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v0, "ext_kick_type"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v0, "ext_kick_reason"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "ext_chid"

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v0, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/xiaomi/push/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/J;ZILjava/lang/String;)V
    .locals 6

    .prologue
    .line 44
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->bcV:Lcom/xiaomi/push/service/q;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/q;->b(Landroid/content/Context;Lcom/xiaomi/push/service/J;ZILjava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string v1, "com.xiaomi.push.channel_opened"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "ext_succeeded"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    if-nez p3, :cond_1

    .line 52
    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    const-string v1, "ext_reason_msg"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_2
    const-string v1, "ext_chid"

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p2, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/c/b;)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/b;->b(Lcom/xiaomi/c/b;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while notify channel closed! channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v1, "5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/xiaomi/push/service/b;->bcV:Lcom/xiaomi/push/service/q;

    invoke-virtual {v1, p1, p3, v0}, Lcom/xiaomi/push/service/q;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/c/b;Lcom/xiaomi/push/service/J;)V

    goto :goto_0

    .line 134
    :cond_1
    const-string v0, "don\'t support binary yet"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/e;)V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/b;->b(Lcom/xiaomi/smack/packet/e;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    .line 89
    if-nez v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while notify channel closed! channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "5"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->bcV:Lcom/xiaomi/push/service/q;

    invoke-virtual {v0, p1, p3, v1}, Lcom/xiaomi/push/service/q;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;Lcom/xiaomi/push/service/J;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, v1, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    .line 99
    instance-of v0, p3, Lcom/xiaomi/smack/packet/d;

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "com.xiaomi.push.new_msg"

    .line 109
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 110
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v0, "ext_chid"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v0, "ext_packet"

    invoke-virtual {p3}, Lcom/xiaomi/smack/packet/e;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/push/service/J;->session:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    sget-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {p1, v3, v2}, Lcom/xiaomi/push/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    instance-of v0, p3, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_3

    .line 102
    const-string v0, "com.xiaomi.push.new_iq"

    goto :goto_1

    .line 103
    :cond_3
    instance-of v0, p3, Lcom/xiaomi/smack/packet/Presence;

    if-eqz v0, :cond_4

    .line 104
    const-string v0, "com.xiaomi.push.new_pres"

    goto :goto_1

    .line 106
    :cond_4
    const-string v0, "unknown packet type, drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/xiaomi/c/b;)Lcom/xiaomi/push/service/J;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 178
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 168
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/c/b;->Jt()Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    .line 174
    iget-object v4, v0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 178
    goto :goto_0
.end method

.method b(Lcom/xiaomi/smack/packet/e;)Lcom/xiaomi/push/service/J;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->Ix()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->eh(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/e;->getTo()Ljava/lang/String;

    move-result-object v4

    .line 151
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/J;

    .line 153
    iget-object v5, v0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method public dQ(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    const-string v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

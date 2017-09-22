.class Lcom/xiaomi/smack/h;
.super Ljava/lang/Object;
.source "PacketReader.java"


# instance fields
.field private bhK:Ljava/lang/Thread;

.field private bhL:Lcom/xiaomi/smack/t;

.field private bhM:Lorg/xmlpull/v1/XmlPullParser;

.field private done:Z


# direct methods
.method protected constructor <init>(Lcom/xiaomi/smack/t;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    .line 56
    invoke-virtual {p0}, Lcom/xiaomi/smack/h;->init()V

    .line 57
    return-void
.end method

.method private JS()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    .line 117
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    iget-object v1, v1, Lcom/xiaomi/smack/t;->aYn:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 119
    return-void
.end method

.method private JT()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/smack/h;->JS()V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 132
    const-string v0, ""

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    invoke-virtual {v2}, Lcom/xiaomi/smack/t;->JN()V

    .line 135
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 136
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    .line 198
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 199
    iget-boolean v2, p0, Lcom/xiaomi/smack/h;->done:Z

    if-nez v2, :cond_2

    if-ne v1, v6, :cond_0

    .line 200
    :cond_2
    if-ne v1, v6, :cond_3

    .line 202
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: server close the connection or timeout happened, last element name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    .line 204
    invoke-virtual {v2}, Lcom/xiaomi/smack/t;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 208
    iget-boolean v1, p0, Lcom/xiaomi/smack/h;->done:Z

    if-nez v1, :cond_f

    .line 212
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/smack/h;->c(ILjava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_3
    :goto_1
    return-void

    .line 139
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    invoke-static {v0, v2}, Lcom/xiaomi/smack/d/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/a;)Lcom/xiaomi/smack/packet/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "presence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/Presence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    goto :goto_0

    .line 148
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    const-string v2, ""

    .line 152
    const/4 v0, 0x0

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_2
    iget-object v3, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 153
    iget-object v3, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    iget-object v3, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    iget-object v3, v3, Lcom/xiaomi/smack/t;->bhA:Lcom/xiaomi/smack/c;

    iget-object v4, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    .line 157
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Lcom/xiaomi/smack/c;->setServiceName(Ljava/lang/String;)V

    .line 152
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    :cond_8
    iget-object v3, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "challenge"

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 160
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 161
    :cond_9
    const-string v3, "ps"

    iget-object v4, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 163
    iget-object v3, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v4, Lcom/xiaomi/smack/packet/b;

    invoke-direct {v4}, Lcom/xiaomi/smack/packet/b;-><init>()V

    .line 165
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/b;->setChannelId(Ljava/lang/String;)V

    .line 166
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/b;->setPacketID(Ljava/lang/String;)V

    .line 167
    const-string v5, "ps"

    invoke-virtual {v4, v5, v3}, Lcom/xiaomi/smack/packet/b;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v3, Lcom/xiaomi/smack/packet/c;->biq:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/b;->a(Lcom/xiaomi/smack/packet/c;)V

    .line 169
    invoke-direct {p0, v4}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_3

    .line 173
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/t;->setChallenge(Ljava/lang/String;)V

    move-object v0, v1

    .line 174
    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    iget-object v1, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    .line 177
    invoke-static {v1}, Lcom/xiaomi/smack/d/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Lcom/xiaomi/smack/packet/g;)V

    throw v0

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 180
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multi-login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 183
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/smack/h;->c(ILjava/lang/Exception;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 185
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    .line 188
    invoke-static {v0}, Lcom/xiaomi/smack/d/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/r;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/packet/e;)V

    move-object v0, v1

    .line 190
    goto/16 :goto_0

    .line 191
    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 192
    iget-object v1, p0, Lcom/xiaomi/smack/h;->bhM:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/smack/h;->c(ILjava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 217
    :cond_f
    const-string v0, "reader is shutdown, ignore the exception."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 213
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/smack/h;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xiaomi/smack/h;->JT()V

    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 239
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    iget-object v0, v0, Lcom/xiaomi/smack/t;->bhu:Ljava/util/Map;

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/b;

    .line 237
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/b;->i(Lcom/xiaomi/smack/packet/e;)V

    goto :goto_0
.end method


# virtual methods
.method c(ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 107
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/t;->c(ILjava/lang/Exception;)V

    .line 108
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    iget-object v0, v0, Lcom/xiaomi/smack/t;->bhu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 66
    new-instance v0, Lcom/xiaomi/smack/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smack Packet Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/h;->bhL:Lcom/xiaomi/smack/t;

    iget v2, v2, Lcom/xiaomi/smack/t;->bhz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/smack/i;-><init>(Lcom/xiaomi/smack/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/smack/h;->bhK:Ljava/lang/Thread;

    .line 72
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/h;->done:Z

    .line 91
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xiaomi/smack/h;->bhK:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

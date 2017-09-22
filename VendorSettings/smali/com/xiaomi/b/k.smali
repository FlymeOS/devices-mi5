.class public Lcom/xiaomi/b/k;
.super Lcom/xiaomi/b/f;
.source "HostManagerV2.java"


# instance fields
.field private final DEFAULT_PORT:I

.field private final baz:I

.field private port:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/b/k;-><init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/b/f;-><init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput v1, p0, Lcom/xiaomi/b/k;->DEFAULT_PORT:I

    .line 50
    const/16 v0, 0x1466

    iput v0, p0, Lcom/xiaomi/b/k;->baz:I

    .line 62
    iput v1, p0, Lcom/xiaomi/b/k;->port:I

    .line 63
    const-string v0, "resolver.msg.xiaomi.net"

    const-string v1, "resolver.msg.xiaomi.net:5222"

    invoke-static {v0, v1}, Lcom/xiaomi/b/k;->L(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static ds(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 108
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 109
    aget-byte v3, v2, v0

    .line 110
    and-int/lit16 v4, v3, 0xf0

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_0

    .line 111
    shr-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v1

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 112
    and-int/lit16 v5, v3, 0xf0

    and-int/lit8 v3, v3, 0xf

    xor-int/2addr v3, v4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 118
    :goto_1
    return-object p0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected GA()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 174
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/b/k;->bav:Z

    if-nez v2, :cond_1

    .line 176
    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/b/k;->bav:Z

    .line 177
    iget-object v2, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/b/k;->Gz()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Lcom/xiaomi/b/k;->dt(Ljava/lang/String;)V

    .line 182
    const-string v2, "loading the new hosts succeed"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->cM(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    monitor-exit v1

    .line 192
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 191
    :cond_0
    monitor-exit v1

    .line 192
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public GB()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/k;->aYH:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/b/k;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 201
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 204
    invoke-virtual {p0}, Lcom/xiaomi/b/k;->GD()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 212
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected GD()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 216
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 217
    const-string v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string v2, "data"

    invoke-virtual {p0}, Lcom/xiaomi/b/k;->GC()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v0, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "type"

    invoke-direct {v0, v4, p2}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v0, "wap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "conpt"

    iget-object v5, p0, Lcom/xiaomi/b/k;->aYH:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/b/k;->ds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    new-instance v0, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "uuid"

    invoke-direct {v0, v4, p3}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Lcom/xiaomi/channel/commonutils/d/a;

    const-string v4, "list"

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/xiaomi/b/k;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/xiaomi/channel/commonutils/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "resolver.msg.xiaomi.net"

    invoke-virtual {p0, v0}, Lcom/xiaomi/b/k;->dn(Ljava/lang/String;)Lcom/xiaomi/b/b;

    move-result-object v0

    .line 134
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "http://%1$s/gslb/?ver=3.0"

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolver.msg.xiaomi.net:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/xiaomi/b/k;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 135
    if-nez v0, :cond_2

    .line 136
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v4, Lcom/xiaomi/b/k;->baj:Ljava/util/Map;

    monitor-enter v4

    .line 138
    :try_start_0
    sget-object v0, Lcom/xiaomi/b/k;->baj:Ljava/util/Map;

    const-string v5, "resolver.msg.xiaomi.net"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "http://%1$s/gslb/?ver=3.0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 148
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/d/c;

    .line 151
    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/d/c;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/xiaomi/channel/commonutils/d/c;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 144
    :cond_2
    invoke-virtual {v0, v4}, Lcom/xiaomi/b/b;->dh(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/b/k;->bal:Lcom/xiaomi/b/j;

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/xiaomi/b/k;->aYH:Landroid/content/Context;

    new-instance v5, Ljava/net/URL;

    .line 156
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/xiaomi/channel/commonutils/d/d;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_4
    :goto_4
    return-object v2

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/b/k;->bal:Lcom/xiaomi/b/j;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/xiaomi/b/j;->dr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_4

    .line 165
    :cond_6
    if-eqz v0, :cond_4

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/b/f;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 160
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected dt(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 224
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    const-string v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 228
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 229
    new-instance v0, Lorg/json/JSONException;

    const-string v2, "Bad version"

    invoke-direct {v0, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_0
    :try_start_1
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 232
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 233
    new-instance v3, Lcom/xiaomi/b/c;

    invoke-direct {v3}, Lcom/xiaomi/b/c;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/b/c;->n(Lorg/json/JSONObject;)Lcom/xiaomi/b/c;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/b/c;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    return-void
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "resolver.msg.xiaomi.net"

    return-object v0
.end method

.method public purge()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v4, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    monitor-enter v4

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/c;

    .line 78
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/xiaomi/b/c;->cc(Z)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 82
    :goto_1
    if-nez v0, :cond_2

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/b/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/c;->Gv()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/xiaomi/b/k;->bai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 88
    goto :goto_1

    .line 92
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method

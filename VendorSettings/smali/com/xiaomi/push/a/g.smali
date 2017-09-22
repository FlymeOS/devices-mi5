.class Lcom/xiaomi/push/a/g;
.super Lcom/xiaomi/push/a/f;
.source "LogUploader.java"


# instance fields
.field final synthetic baQ:Lcom/xiaomi/push/a/b;

.field baS:I

.field baT:Z

.field file:Ljava/io/File;

.field token:Ljava/lang/String;

.field uploaded:Z

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/a/f;-><init>(Lcom/xiaomi/push/a/b;)V

    .line 151
    iput-object p2, p0, Lcom/xiaomi/push/a/g;->url:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/xiaomi/push/a/g;->token:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/xiaomi/push/a/g;->file:Ljava/io/File;

    .line 154
    iput-boolean p5, p0, Lcom/xiaomi/push/a/g;->baT:Z

    .line 155
    return-void
.end method

.method private GH()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "log.timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 165
    const-string v0, "log.requst"

    const-string v2, ""

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 169
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v0, "time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 171
    const-string v0, "times"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 177
    const/16 v5, 0xa

    if-le v0, v5, :cond_1

    .line 195
    :goto_1
    return v1

    .line 172
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v1

    .line 186
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_1
    const-string v5, "time"

    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    const-string v2, "times"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "log.requst"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException on put "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public Fx()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/push/a/g;->GH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v1, "uid"

    invoke-static {}, Lcom/xiaomi/push/service/V;->Fj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "token"

    iget-object v2, p0, Lcom/xiaomi/push/a/g;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "net"

    iget-object v2, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v2}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/d/d;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/xiaomi/push/a/g;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/a/g;->file:Ljava/io/File;

    const-string v3, "file"

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/channel/commonutils/d/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a/g;->uploaded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Fy()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 216
    iget-boolean v0, p0, Lcom/xiaomi/push/a/g;->uploaded:Z

    if-nez v0, :cond_0

    .line 217
    iget v0, p0, Lcom/xiaomi/push/a/g;->baS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/a/g;->baS:I

    .line 218
    iget v0, p0, Lcom/xiaomi/push/a/g;->baS:I

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/a/g;->uploaded:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/push/a/g;->baS:I

    if-lt v0, v1, :cond_2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/a/g;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaomi/push/a/g;->baS:I

    shl-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;J)V

    .line 228
    return-void
.end method

.method public GG()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->dt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/push/a/g;->baT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

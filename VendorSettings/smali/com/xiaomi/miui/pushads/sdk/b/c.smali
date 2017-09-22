.class public Lcom/xiaomi/miui/pushads/sdk/b/c;
.super Ljava/lang/Object;
.source "AdsLogSender.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/b/h;


# static fields
.field private static aZK:Lcom/xiaomi/miui/pushads/sdk/b/c;


# instance fields
.field private aZL:Lcom/xiaomi/miui/pushads/sdk/b/b;

.field private aZM:Ljava/util/HashMap;

.field private aZN:Ljava/lang/String;

.field private aZO:Ljava/lang/String;

.field private aZP:I

.field private aZQ:I

.field private aZm:I

.field private mContext:Landroid/content/Context;

.field private mFailCount:I

.field private mImei:Ljava/lang/String;


# direct methods
.method public static declared-synchronized Go()Lcom/xiaomi/miui/pushads/sdk/b/c;
    .locals 2

    .prologue
    .line 146
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZK:Lcom/xiaomi/miui/pushads/sdk/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->c(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/f;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->c(Lcom/xiaomi/miui/pushads/sdk/b/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/b/a;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->b(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZM:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/b/a;->aZJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZQ:I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/f;->dg(Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/b/d;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZN:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZO:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/xiaomi/miui/pushads/sdk/b/d;-><init>(Lcom/xiaomi/miui/pushads/sdk/b/h;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 262
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZM:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/b/a;->aZJ:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 291
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "imei"

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mImei:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/b/f;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_0
    const-string v0, "actionType"

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v0, "actionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 305
    const/4 v3, 0x0

    .line 306
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-object v0, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    :goto_1
    if-nez v0, :cond_3

    .line 317
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 320
    :goto_2
    const-string v3, "adId"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-wide v6, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZG:J

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 321
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/a/d;

    iget-object v0, v0, Lcom/xiaomi/miui/pushads/sdk/a/d;->content:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 313
    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v0, "com.xiaomi.miui.ads.pushsdk"

    const-string v2, "content \u4e0d\u662fjson\u4e32"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_1

    .line 324
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 325
    const-string v1, "adList"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0

    :cond_3
    move-object v2, v0

    goto :goto_2
.end method

.method private c(Lcom/xiaomi/miui/pushads/sdk/b/a;)Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/e;->dO(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/c;->d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZm:I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/f;->dg(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/b/b;->a(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 351
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZL:Lcom/xiaomi/miui/pushads/sdk/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/b/b;->Gk()V

    .line 352
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "click"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZy:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/b/a;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZM:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aZJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->mFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aZJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZM:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/f;->dg(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->d(Lcom/xiaomi/miui/pushads/sdk/b/a;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZM:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/b/a;->aZJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZP:I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/b/c;->aZP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/b/f;->dg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "remove"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZy:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/miui/pushads/sdk/a/d;)V
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "received"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZy:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/b/c;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

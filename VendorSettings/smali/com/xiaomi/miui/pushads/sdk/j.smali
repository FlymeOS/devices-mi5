.class Lcom/xiaomi/miui/pushads/sdk/j;
.super Landroid/os/AsyncTask;
.source "NotifyAdsDownloader.java"


# instance fields
.field private aZc:Lcom/xiaomi/miui/pushads/sdk/c;

.field private aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

.field private aZe:Ljava/lang/String;

.field private aZf:I

.field private aZg:Landroid/content/SharedPreferences;

.field private aZh:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->mContext:Landroid/content/Context;

    .line 39
    iput-object p6, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZc:Lcom/xiaomi/miui/pushads/sdk/c;

    .line 40
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZe:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    .line 42
    iput-object p5, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZh:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private K(II)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 204
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    const-string v6, "starttime"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 207
    cmp-long v3, v6, v10

    if-nez v3, :cond_0

    .line 208
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "starttime"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    monitor-exit v2

    .line 231
    :goto_0
    return v0

    .line 214
    :cond_0
    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 215
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "starttime"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "notifycount"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "bubblecount"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    monitor-exit v2

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 222
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "notifycount"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 223
    if-ge v3, p1, :cond_3

    monitor-exit v2

    goto :goto_0

    .line 224
    :cond_2
    if-ne p2, v0, :cond_3

    .line 225
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "bubblecount"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 226
    mul-int/lit8 v4, p1, 0x4

    if-ge v3, v4, :cond_3

    monitor-exit v2

    goto :goto_0

    .line 230
    :cond_3
    const-string v0, "\u8d85\u8fc7\u4e86\u6bcf\u5929\u63a5\u53d7\u5e7f\u544a\u7684\u4e0a\u9650"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cZ(Ljava/lang/String;)V

    .line 231
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private db(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 115
    .line 117
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/j;->i(Lorg/json/JSONObject;)I

    move-result v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5, \u8fd4\u56de\u7ed3\u679c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->eK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 126
    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/j;->k(Lorg/json/JSONObject;)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u83b7\u53d6\u6700\u7ec8\u7ed3\u679c\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7c7b\u578b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    iget v2, v2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private eK(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "\u6210\u529f"

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "\u672a\u77e5\u539f\u56e0"

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "\u8fc7\u671f"

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v0, "\u5230\u8fbe\u4e0a\u9650"

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "\u5e7f\u544a\u5931\u6548"

    goto :goto_0

    .line 101
    :pswitch_5
    const-string v0, "\u6d88\u606f\u4e0d\u5339\u914d"

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private eL(I)Lcom/xiaomi/miui/pushads/sdk/a/b;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/a/b;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/a/b;-><init>()V

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZf:I

    iput v1, v0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    .line 198
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZe:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    .line 199
    return-object v0

    .line 186
    :pswitch_0
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/a;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/a;-><init>()V

    goto :goto_0

    .line 190
    :pswitch_1
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(Lorg/json/JSONObject;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, -0x1

    .line 145
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v0, "nonsense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    const-string v1, "MIUIADSPUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u65e0\u6548\u6807\u5fd7\u8bbe\u7f6e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "\u5e7f\u544a\u65e0\u6548"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 157
    const/4 v0, -0x2

    goto :goto_0

    .line 163
    :cond_2
    const-string v0, "lastShowTime"

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expireTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 166
    cmp-long v2, v0, v6

    if-eqz v2, :cond_3

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u5df2\u7ecf\u8fc7\u671f lastShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 170
    const/4 v0, -0x4

    goto/16 :goto_0

    .line 174
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private j(Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 178
    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private k(Ljava/io/File;)I
    .locals 4

    .prologue
    .line 318
    .line 319
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/h;

    .line 320
    iget-object v1, v0, Lcom/xiaomi/miui/pushads/sdk/h;->aYX:Ljava/lang/String;

    .line 322
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/h;)I

    move-result v0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u5e7f\u544a imgUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed3\u679c\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/j;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/j;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    const-string v1, "asynctask \u88abcancel"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/f;->dM(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u7c7b\u578b\u6539\u53d8\uff0c\u4e2d\u65ad\u4e0b\u8f7d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k(Lorg/json/JSONObject;)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->j(Lorg/json/JSONObject;)I

    move-result v3

    .line 248
    :try_start_0
    const-string v0, "miui.util.NotificationFilterHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    const-string v4, "canSendNotifications"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZh:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/j;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZh:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    if-nez v0, :cond_1

    move v0, v1

    .line 259
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u7981\u7528\u4e86\u901a\u77e5\u680f\u5e7f\u544a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 261
    const-string v4, "receiveUpperBound"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 264
    if-lez v4, :cond_3

    .line 265
    invoke-direct {p0, v4, v3}, Lcom/xiaomi/miui/pushads/sdk/j;->K(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u8fbe\u5230\u4e0a\u9650 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 273
    if-nez v1, :cond_0

    if-ne v3, v8, :cond_7

    if-eqz v0, :cond_7

    .line 275
    :cond_0
    :try_start_1
    const-string v1, "\u4f7f\u7528\u5019\u9009\u5e7f\u544a "

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 276
    const-string v1, "subAdId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 277
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    .line 278
    const-string v0, "\u6ca1\u6709\u5019\u9009\u5e7f\u544a "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    const/4 v2, -0x5

    .line 307
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 253
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v4, "NotifyAdsDownloader"

    const-string v5, "reflect errors!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 265
    goto :goto_1

    :cond_3
    move v1, v2

    .line 267
    goto :goto_1

    .line 282
    :cond_4
    :try_start_2
    const-string v1, "subAdInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/j;->j(Lorg/json/JSONObject;)I

    move-result v1

    .line 288
    if-ne v1, v8, :cond_5

    if-eqz v0, :cond_5

    .line 289
    const/4 v2, -0x6

    goto :goto_2

    .line 292
    :cond_5
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/j;->i(Lorg/json/JSONObject;)I

    move-result v0

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5019\u9009\u5e7f\u544a\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 294
    if-eqz v0, :cond_6

    move v2, v0

    .line 295
    goto :goto_2

    .line 297
    :cond_6
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/j;->eL(I)Lcom/xiaomi/miui/pushads/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    .line 298
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    invoke-virtual {v0, v3}, Lcom/xiaomi/miui/pushads/sdk/a/b;->h(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    const/4 v2, -0x1

    goto :goto_2

    .line 300
    :cond_7
    const-string v0, "\u4f7f\u7528\u4e3b\u5e7f\u544a "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/j;->eL(I)Lcom/xiaomi/miui/pushads/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    .line 302
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/a/b;->h(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZe:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->db(Ljava/lang/String;)I

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u89e3\u6790\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    iget v1, v1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->mContext:Landroid/content/Context;

    const-string v1, "comxiaomimiuipushadssdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/j;->k(Ljava/io/File;)I

    move-result v0

    .line 60
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 78
    const-string v0, "ADS_DOWNLOAD"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZc:Lcom/xiaomi/miui/pushads/sdk/c;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d post \u7684\u7ed3\u679c\u662f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZc:Lcom/xiaomi/miui/pushads/sdk/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/j;->aZd:Lcom/xiaomi/miui/pushads/sdk/a/b;

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaomi/miui/pushads/sdk/c;->a(ILcom/xiaomi/miui/pushads/sdk/a/b;Lcom/xiaomi/miui/pushads/sdk/j;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

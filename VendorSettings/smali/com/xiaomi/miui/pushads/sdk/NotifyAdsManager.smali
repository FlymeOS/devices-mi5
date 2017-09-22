.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
.super Lcom/xiaomi/mipush/sdk/h;
.source "NotifyAdsManager.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/c;


# static fields
.field private static aZi:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;


# instance fields
.field private aZg:Landroid/content/SharedPreferences;

.field private aZh:Ljava/lang/String;

.field private aZj:Lcom/xiaomi/miui/pushads/sdk/g;

.field private aZk:Lcom/xiaomi/miui/pushads/sdk/a/c;

.field private aZl:I

.field private aZm:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private sD:Ljava/lang/String;


# direct methods
.method public static declared-synchronized Gl()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    .locals 2

    .prologue
    .line 340
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZi:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    .line 461
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    if-gtz v2, :cond_1

    .line 462
    const-string v1, "\u767d\u540d\u5355\u7528\u6237"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    packed-switch v2, :pswitch_data_0

    move v2, v1

    move v3, v1

    .line 481
    :goto_1
    if-le v3, v2, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650---\u5df2\u7ecf\u83b7\u5f97\u6b21\u6570\uff1a "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    move v0, v1

    .line 487
    goto :goto_0

    .line 470
    :pswitch_0
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    mul-int/lit8 v2, v2, 0x4

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5192\u6ce1\u4e0a\u9650: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "bubblecount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 475
    :pswitch_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u901a\u77e5\u4e0a\u9650: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "notifycount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 391
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/j;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V

    .line 393
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method private b(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZm:I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZj:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/g;->a(Ljava/lang/String;JI)V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZj:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->Gk()V

    .line 495
    return-void
.end method

.method public static dc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 676
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method


# virtual methods
.method public a(ILcom/xiaomi/miui/pushads/sdk/a/b;Lcom/xiaomi/miui/pushads/sdk/j;)V
    .locals 4

    .prologue
    .line 415
    if-nez p2, :cond_1

    .line 416
    const-string v0, "\u8fd4\u56de\u5e7f\u544a\u4e3anull"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 422
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    .line 424
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 426
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->b(Ljava/lang/String;JI)V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZk:Lcom/xiaomi/miui/pushads/sdk/a/c;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 447
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    const-string v0, "===========\u7ed9APP \u53d1\u9001\u5e7f\u544a\u4fe1\u606f"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZk:Lcom/xiaomi/miui/pushads/sdk/a/c;

    invoke-interface {v0, p2}, Lcom/xiaomi/miui/pushads/sdk/a/c;->d(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_3
    if-nez p1, :cond_5

    .line 432
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    if-lez v0, :cond_4

    .line 433
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZl:I

    .line 434
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->Gl()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->eN(I)V

    .line 436
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u6210\u529f: id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7c7b\u578b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6210\u529f\u6b21\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->Gl()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->eM(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_5
    const-string v0, "com.miui.ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    :cond_6
    const-string v0, "\u5e7f\u544a\u6570\u91cf\u8d85\u8fc7\u9650\u5236\uff0c\u4e0d\u8fd4\u56de\u7ed9APP"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZk:Lcom/xiaomi/miui/pushads/sdk/a/c;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 208
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 209
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 210
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 215
    const-string v0, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316OK"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v0, "\u901a\u9053\u521d\u59cb\u5316\u5931\u8d25\uff0c \u5df2\u7ecf\u901a\u77e5\u4e86app\uff0c\u9700\u8981\u91cd\u65b0 open \u901a\u9053"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 271
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    move v1, v2

    .line 275
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 275
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_0
    const-string v0, "set-alias"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 281
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 282
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->sD:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    const/4 v0, 0x1

    .line 285
    const-string v1, "\u8bbe\u7f6e\u522b\u540d\u6210\u529f: "

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 281
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 289
    :cond_1
    if-nez v1, :cond_2

    .line 290
    const-string v0, "\u8bbe\u7f6e\u522b\u540d\u5931\u8d25\uff0c\u91cd\u65b0\u8bbe\u7f6e: "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->sD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u6709\u6548alias\uff0c\u5ffd\u7565\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->sD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->sD:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u4e0d\u540calias \u7684\u6d88\u606f\uff0c\u6ce8\u9500\u65e7\u7684 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->dc(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZh:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public declared-synchronized eM(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    monitor-enter p0

    .line 316
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 318
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 319
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eN(I)V
    .locals 3

    .prologue
    .line 326
    monitor-enter p0

    .line 328
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

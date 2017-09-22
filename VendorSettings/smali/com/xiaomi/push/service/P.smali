.class Lcom/xiaomi/push/service/P;
.super Lcom/xiaomi/b/k;
.source "PushHostManagerFactory.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/b/k;-><init>(Landroid/content/Context;Lcom/xiaomi/b/e;Lcom/xiaomi/b/j;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/xiaomi/push/service/V;->Fj()Ljava/lang/String;

    move-result-object p3

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/b/k;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 96
    iget-object v0, p0, Lcom/xiaomi/push/service/P;->aYH:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 97
    :goto_0
    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfE:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v0}, Lcom/xiaomi/d/j;->a(IIILjava/lang/String;I)V

    .line 98
    throw v3

    :cond_1
    move v0, v2

    .line 96
    goto :goto_0
.end method

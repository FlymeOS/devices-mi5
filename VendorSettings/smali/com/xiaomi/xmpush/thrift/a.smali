.class public Lcom/xiaomi/xmpush/thrift/a;
.super Ljava/lang/Object;
.source "XmPushThriftSerializeUtils.java"


# direct methods
.method public static a(Lorg/apache/thrift/TBase;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/thrift/e;

    new-instance v1, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 57
    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/e;->b(Lorg/apache/thrift/TBase;[B)V

    .line 58
    return-void
.end method

.method public static a(Lorg/apache/thrift/TBase;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/f;

    new-instance v2, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/thrift/f;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 37
    invoke-virtual {v1, p0}, Lorg/apache/thrift/f;->b(Lorg/apache/thrift/TBase;)[B
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/channel/commonutils/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static ad(Landroid/content/Context;Ljava/lang/String;)S
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->I(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->getValue()I

    move-result v0

    add-int v2, v1, v0

    .line 63
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/d;->do(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v2

    .line 64
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/c/d;->dn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    add-int/2addr v0, v1

    .line 65
    int-to-short v0, v0

    return v0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0
.end method

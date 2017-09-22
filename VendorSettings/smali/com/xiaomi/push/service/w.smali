.class final Lcom/xiaomi/push/service/w;
.super Lcom/xiaomi/push/service/at;
.source "MIPushEventProcessor.java"


# instance fields
.field final synthetic bdq:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic bdr:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic bdt:Ljava/lang/String;

.field final synthetic bdu:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p2, p0, Lcom/xiaomi/push/service/w;->bdq:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/w;->bdr:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iput-object p4, p0, Lcom/xiaomi/push/service/w;->bdt:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/w;->bdu:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/at;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 4

    .prologue
    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/w;->bdq:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/w;->bdr:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/q;->b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 413
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "error"

    iget-object v3, p0, Lcom/xiaomi/push/service/w;->bdt:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    const-string v2, "reason"

    iget-object v3, p0, Lcom/xiaomi/push/service/w;->bdu:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/xiaomi/push/service/w;->bdq:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/x;->d(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 418
    iget-object v1, p0, Lcom/xiaomi/push/service/w;->bdq:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const-string v0, "send wrong message ack for message."

    return-object v0
.end method

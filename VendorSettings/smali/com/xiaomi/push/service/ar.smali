.class public Lcom/xiaomi/push/service/ar;
.super Lcom/xiaomi/push/service/at;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;

.field public beZ:Ljava/lang/Exception;

.field public reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/xiaomi/push/service/ar;->beV:Lcom/xiaomi/push/service/XMPushService;

    .line 1430
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/at;-><init>(I)V

    .line 1431
    iput p2, p0, Lcom/xiaomi/push/service/ar;->reason:I

    .line 1432
    iput-object p3, p0, Lcom/xiaomi/push/service/ar;->beZ:Ljava/lang/Exception;

    .line 1433
    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 3

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/xiaomi/push/service/ar;->beV:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/ar;->reason:I

    iget-object v2, p0, Lcom/xiaomi/push/service/ar;->beZ:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 1437
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    const-string v0, "disconnect the connection."

    return-object v0
.end method

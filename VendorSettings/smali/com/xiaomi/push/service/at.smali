.class public abstract Lcom/xiaomi/push/service/at;
.super Lcom/xiaomi/push/service/g;
.source "XMPushService.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/g;-><init>(I)V

    .line 1189
    return-void
.end method


# virtual methods
.method public abstract Fx()V
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1193
    iget v0, p0, Lcom/xiaomi/push/service/at;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/at;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/at;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/at;->Fx()V

    .line 1197
    return-void
.end method

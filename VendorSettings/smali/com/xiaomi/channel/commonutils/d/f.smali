.class public Lcom/xiaomi/channel/commonutils/d/f;
.super Ljava/lang/Object;
.source "Network.java"


# instance fields
.field public aXZ:I

.field public aYa:Ljava/util/Map;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 530
    const-string v0, "resCode = %1$d, headers = %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/channel/commonutils/d/f;->aXZ:I

    .line 531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/d/f;->aYa:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 530
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

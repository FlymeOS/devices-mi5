.class public final Lcom/xiaomi/b/d;
.super Ljava/lang/Object;
.source "Host.java"


# instance fields
.field private bah:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xiaomi/b/d;->bah:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/xiaomi/b/d;->port:I

    .line 33
    return-void
.end method

.method public static C(Ljava/lang/String;I)Lcom/xiaomi/b/d;
    .locals 2

    .prologue
    .line 41
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    if-gtz v0, :cond_1

    :goto_0
    move-object p0, v1

    .line 54
    :cond_0
    :goto_1
    new-instance v0, Lcom/xiaomi/b/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/b/d;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    move-object p0, v1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public static D(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/xiaomi/b/d;->C(Ljava/lang/String;I)Lcom/xiaomi/b/d;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/xiaomi/b/d;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/b/d;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/b/d;->bah:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/xiaomi/b/d;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/xiaomi/b/d;->port:I

    if-lez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/b/d;->bah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/b/d;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/d;->bah:Ljava/lang/String;

    goto :goto_0
.end method

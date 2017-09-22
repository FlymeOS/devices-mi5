.class Lcom/xiaomi/mipush/sdk/p;
.super Landroid/database/ContentObserver;
.source "PushServiceClient.java"


# instance fields
.field final synthetic aYP:Lcom/xiaomi/mipush/sdk/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/o;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/o;->a(Lcom/xiaomi/mipush/sdk/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/Q;->dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/Q;->IE()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/o;->a(Lcom/xiaomi/mipush/sdk/o;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 316
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/o;->b(Lcom/xiaomi/mipush/sdk/o;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/o;->a(Lcom/xiaomi/mipush/sdk/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 318
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/o;->a(Lcom/xiaomi/mipush/sdk/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aYP:Lcom/xiaomi/mipush/sdk/o;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/o;->Gf()V

    .line 322
    :cond_0
    return-void
.end method

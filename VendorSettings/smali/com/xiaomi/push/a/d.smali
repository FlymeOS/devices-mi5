.class Lcom/xiaomi/push/a/d;
.super Lcom/xiaomi/channel/commonutils/c/j;
.source "LogUploader.java"


# instance fields
.field final synthetic baQ:Lcom/xiaomi/push/a/b;

.field baR:Lcom/xiaomi/channel/commonutils/c/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/xiaomi/push/a/d;->baQ:Lcom/xiaomi/push/a/b;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/f;

    .line 270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/f;->GG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->baQ:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/c/j;

    iput-object v0, p0, Lcom/xiaomi/push/a/d;->baR:Lcom/xiaomi/channel/commonutils/c/j;

    .line 272
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->baR:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/j;->Fx()V

    .line 274
    :cond_0
    return-void
.end method

.method public Fy()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->baR:Lcom/xiaomi/channel/commonutils/c/j;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->baR:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/j;->Fy()V

    .line 281
    :cond_0
    return-void
.end method

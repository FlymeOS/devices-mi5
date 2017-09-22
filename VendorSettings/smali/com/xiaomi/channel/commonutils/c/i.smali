.class Lcom/xiaomi/channel/commonutils/c/i;
.super Ljava/lang/Thread;
.source "SerializedAsyncTaskProcessor.java"


# instance fields
.field final synthetic aXS:Lcom/xiaomi/channel/commonutils/c/f;

.field private final aXU:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/c/f;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    .line 129
    const-string v0, "PackageProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXU:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 130
    return-void
.end method


# virtual methods
.method public b(Lcom/xiaomi/channel/commonutils/c/j;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXU:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 139
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;)I

    move-result v0

    move v1, v0

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->b(Lcom/xiaomi/channel/commonutils/c/f;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXU:Ljava/util/concurrent/LinkedBlockingQueue;

    int-to-long v4, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/c/j;

    invoke-static {v2, v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/j;)Lcom/xiaomi/channel/commonutils/c/j;

    .line 143
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->c(Lcom/xiaomi/channel/commonutils/c/f;)Lcom/xiaomi/channel/commonutils/c/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->d(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/c/f;->c(Lcom/xiaomi/channel/commonutils/c/f;)Lcom/xiaomi/channel/commonutils/c/j;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/f;->d(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->c(Lcom/xiaomi/channel/commonutils/c/f;)Lcom/xiaomi/channel/commonutils/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/c/j;->Fx()V

    .line 147
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->d(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/c/f;->c(Lcom/xiaomi/channel/commonutils/c/f;)Lcom/xiaomi/channel/commonutils/c/j;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/f;->d(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 139
    goto :goto_0

    .line 150
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;)I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/i;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->e(Lcom/xiaomi/channel/commonutils/c/f;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    :cond_3
    return-void
.end method

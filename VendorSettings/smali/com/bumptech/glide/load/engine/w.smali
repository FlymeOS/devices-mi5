.class Lcom/bumptech/glide/load/engine/w;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# instance fields
.field private aRq:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/y;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/y;-><init>(Lcom/bumptech/glide/load/engine/x;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/w;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public i(Lcom/bumptech/glide/load/engine/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 19
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/w;->aRq:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/w;->aRq:Z

    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->recycle()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/w;->aRq:Z

    goto :goto_0
.end method

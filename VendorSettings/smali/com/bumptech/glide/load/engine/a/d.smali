.class abstract Lcom/bumptech/glide/load/engine/a/d;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# instance fields
.field private final aRv:Ljava/util/Queue;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/h/h;->eC(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/d;->aRv:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected abstract CW()Lcom/bumptech/glide/load/engine/a/n;
.end method

.method protected CX()Lcom/bumptech/glide/load/engine/a/n;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/d;->aRv:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/n;

    .line 13
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/d;->CW()Lcom/bumptech/glide/load/engine/a/n;

    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/n;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/d;->aRv:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/d;->aRv:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

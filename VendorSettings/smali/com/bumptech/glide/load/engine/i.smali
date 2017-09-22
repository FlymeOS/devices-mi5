.class Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final aQG:Ljava/util/Map;

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->aQG:Ljava/util/Map;

    .line 352
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 353
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/j;

    .line 358
    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->aQG:Ljava/util/Map;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/load/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b;


# instance fields
.field private final aQL:Lcom/bumptech/glide/load/engine/b/b;

.field private volatile aQM:Lcom/bumptech/glide/load/engine/b/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/b;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->aQL:Lcom/bumptech/glide/load/engine/b/b;

    .line 317
    return-void
.end method


# virtual methods
.method public CI()Lcom/bumptech/glide/load/engine/b/a;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_2

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQL:Lcom/bumptech/glide/load/engine/b/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/b;->Dd()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Lcom/bumptech/glide/load/engine/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    .line 329
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->aQM:Lcom/bumptech/glide/load/engine/b/a;

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

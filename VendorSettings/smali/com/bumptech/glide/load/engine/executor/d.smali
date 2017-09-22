.class Lcom/bumptech/glide/load/engine/executor/d;
.super Ljava/util/concurrent/FutureTask;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final order:I

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/executor/e;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/executor/e;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    .line 138
    iput p3, p0, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    .line 139
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/executor/d;)I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    sub-int/2addr v0, v1

    .line 161
    if-nez v0, :cond_0

    .line 162
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    sub-int/2addr v0, v1

    .line 164
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 127
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/d;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/executor/d;->a(Lcom/bumptech/glide/load/engine/executor/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/executor/d;

    if-eqz v1, :cond_0

    .line 145
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/d;

    .line 146
    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 148
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/d;->priority:I

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/d;->order:I

    add-int/2addr v0, v1

    .line 155
    return v0
.end method

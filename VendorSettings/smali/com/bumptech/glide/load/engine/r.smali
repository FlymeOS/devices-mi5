.class Lcom/bumptech/glide/load/engine/r;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/v;


# instance fields
.field private final aNl:Z

.field private aQP:Lcom/bumptech/glide/load/b;

.field private final aQU:Lcom/bumptech/glide/load/engine/v;

.field private aRh:Lcom/bumptech/glide/load/engine/s;

.field private aRi:I

.field private aRj:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/v;Z)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped resource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/r;->aQU:Lcom/bumptech/glide/load/engine/v;

    .line 30
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/r;->aNl:Z

    .line 31
    return-void
.end method


# virtual methods
.method CP()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->aNl:Z

    return v0
.end method

.method a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/s;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/r;->aQP:Lcom/bumptech/glide/load/b;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/r;->aRh:Lcom/bumptech/glide/load/engine/s;

    .line 36
    return-void
.end method

.method acquire()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->aRj:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    .line 81
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->aQU:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->aQU:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->getSize()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    if-lez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->aRj:Z

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->aRj:Z

    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->aQU:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->recycle()V

    .line 62
    return-void
.end method

.method release()V
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    if-gtz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/r;->aRi:I

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->aRh:Lcom/bumptech/glide/load/engine/s;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/r;->aQP:Lcom/bumptech/glide/load/b;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/engine/s;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;)V

    .line 102
    :cond_2
    return-void
.end method

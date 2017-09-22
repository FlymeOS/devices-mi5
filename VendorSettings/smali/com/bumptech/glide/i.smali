.class public Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private aNA:Lcom/bumptech/glide/load/engine/e;

.field private aNB:Lcom/bumptech/glide/load/engine/a/e;

.field private aNC:Lcom/bumptech/glide/load/engine/b/o;

.field private aND:Lcom/bumptech/glide/load/DecodeFormat;

.field private aNN:Ljava/util/concurrent/ExecutorService;

.field private aNO:Ljava/util/concurrent/ExecutorService;

.field private aNP:Lcom/bumptech/glide/load/engine/b/b;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method BK()Lcom/bumptech/glide/h;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/i;->aNN:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/i;->aNN:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->aNO:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->aNO:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/b/q;

    iget-object v1, p0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/q;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/i;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    if-nez v1, :cond_2

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_7

    .line 180
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/q;->Di()I

    move-result v1

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/a/i;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/a/i;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/i;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    .line 187
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/i;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    if-nez v1, :cond_3

    .line 188
    new-instance v1, Lcom/bumptech/glide/load/engine/b/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/q;->Dh()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/b/n;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/i;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/i;->aNP:Lcom/bumptech/glide/load/engine/b/b;

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Lcom/bumptech/glide/load/engine/b/l;

    iget-object v1, p0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->aNP:Lcom/bumptech/glide/load/engine/b/b;

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/i;->aNA:Lcom/bumptech/glide/load/engine/e;

    if-nez v0, :cond_5

    .line 196
    new-instance v0, Lcom/bumptech/glide/load/engine/e;

    iget-object v1, p0, Lcom/bumptech/glide/i;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    iget-object v2, p0, Lcom/bumptech/glide/i;->aNP:Lcom/bumptech/glide/load/engine/b/b;

    iget-object v3, p0, Lcom/bumptech/glide/i;->aNO:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/i;->aNN:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/b/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->aNA:Lcom/bumptech/glide/load/engine/e;

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/i;->aND:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v0, :cond_6

    .line 200
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->aQd:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/i;->aND:Lcom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_6
    new-instance v0, Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/i;->aNA:Lcom/bumptech/glide/load/engine/e;

    iget-object v2, p0, Lcom/bumptech/glide/i;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    iget-object v3, p0, Lcom/bumptech/glide/i;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    iget-object v4, p0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/i;->aND:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/a/e;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v0

    .line 183
    :cond_7
    new-instance v1, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/a/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/i;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    goto :goto_0
.end method

.class Lcom/bumptech/glide/load/resource/c/g;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# instance fields
.field private final aUd:Lcom/bumptech/glide/load/resource/c/j;

.field private final aUe:Lcom/bumptech/glide/b/a;

.field private aUf:Z

.field private aUg:Lcom/bumptech/glide/c;

.field private aUh:Lcom/bumptech/glide/load/resource/c/i;

.field private aUi:Z

.field private final handler:Landroid/os/Handler;

.field private isRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/c/j;Lcom/bumptech/glide/b/a;II)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/h;->cV(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->BC()Lcom/bumptech/glide/load/engine/a/e;

    move-result-object v1

    invoke-static {p1, p3, p4, p5, v1}, Lcom/bumptech/glide/load/resource/c/g;->a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/bumptech/glide/load/resource/c/g;-><init>(Lcom/bumptech/glide/load/resource/c/j;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/c;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/c/j;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/c;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->isRunning:Z

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUf:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/c/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/resource/c/k;-><init>(Lcom/bumptech/glide/load/resource/c/g;Lcom/bumptech/glide/load/resource/c/h;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/g;->aUd:Lcom/bumptech/glide/load/resource/c/j;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/c/g;->aUe:Lcom/bumptech/glide/b/a;

    .line 54
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/c/g;->handler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/c/g;->aUg:Lcom/bumptech/glide/c;

    .line 56
    return-void
.end method

.method private DQ()V
    .locals 5

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->isRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUf:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUf:Z

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUe:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->advance()V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/c/g;->aUe:Lcom/bumptech/glide/b/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a;->BX()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 102
    new-instance v2, Lcom/bumptech/glide/load/resource/c/i;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/c/g;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/c/g;->aUe:Lcom/bumptech/glide/b/a;

    invoke-virtual {v4}, Lcom/bumptech/glide/b/a;->BY()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/bumptech/glide/load/resource/c/i;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUg:Lcom/bumptech/glide/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/c/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/c/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;)Lcom/bumptech/glide/request/b/k;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/c;
    .locals 5

    .prologue
    .line 172
    new-instance v0, Lcom/bumptech/glide/load/resource/c/o;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/resource/c/o;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    .line 173
    new-instance v1, Lcom/bumptech/glide/load/resource/c/m;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/c/m;-><init>()V

    .line 174
    invoke-static {}, Lcom/bumptech/glide/load/resource/a;->Ds()Lcom/bumptech/glide/load/a;

    move-result-object v2

    .line 175
    invoke-static {p0}, Lcom/bumptech/glide/h;->cW(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/b/a;

    invoke-virtual {v3, v1, v4}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/m;->x(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->d(Ljava/lang/Class;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->bW(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aQy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/c;->E(II)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DP()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/c/i;->DR()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/f;)V
    .locals 3

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUg:Lcom/bumptech/glide/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUg:Lcom/bumptech/glide/c;

    .line 64
    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/c/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 110
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUi:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    .line 117
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/g;->aUd:Lcom/bumptech/glide/load/resource/c/j;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/c/i;->b(Lcom/bumptech/glide/load/resource/c/i;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/resource/c/j;->ey(I)V

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/g;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUf:Z

    .line 124
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/c/g;->DQ()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/c/g;->stop()V

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    invoke-static {v0}, Lcom/bumptech/glide/h;->c(Lcom/bumptech/glide/request/b/k;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUh:Lcom/bumptech/glide/load/resource/c/i;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUi:Z

    .line 88
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->isRunning:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->isRunning:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->aUi:Z

    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/c/g;->DQ()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/c/g;->isRunning:Z

    .line 78
    return-void
.end method

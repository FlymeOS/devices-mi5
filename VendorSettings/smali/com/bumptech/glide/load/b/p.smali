.class public Lcom/bumptech/glide/load/b/p;
.super Ljava/lang/Object;
.source "ModelCache.java"


# instance fields
.field private final aSR:Lcom/bumptech/glide/h/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/p;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/b/q;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/b/q;-><init>(Lcom/bumptech/glide/load/b/p;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/p;->aSR:Lcom/bumptech/glide/h/e;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->d(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/r;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/bumptech/glide/load/b/p;->aSR:Lcom/bumptech/glide/h/e;

    invoke-virtual {v1, v0, p4}, Lcom/bumptech/glide/h/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public c(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->d(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/r;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/bumptech/glide/load/b/p;->aSR:Lcom/bumptech/glide/h/e;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/r;->release()V

    .line 47
    return-object v1
.end method

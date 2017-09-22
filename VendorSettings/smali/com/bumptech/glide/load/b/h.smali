.class public Lcom/bumptech/glide/load/b/h;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/s;


# instance fields
.field private final aSD:Lcom/bumptech/glide/load/b/s;

.field private final aSE:Lcom/bumptech/glide/load/b/s;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/b/s;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/h;->aSD:Lcom/bumptech/glide/load/b/s;

    .line 32
    iput-object p2, p0, Lcom/bumptech/glide/load/b/h;->aSE:Lcom/bumptech/glide/load/b/s;

    .line 33
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->aSD:Lcom/bumptech/glide/load/b/s;

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h;->aSD:Lcom/bumptech/glide/load/b/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/s;->b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->aSE:Lcom/bumptech/glide/load/b/s;

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/bumptech/glide/load/b/h;->aSE:Lcom/bumptech/glide/load/b/s;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/b/s;->b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v2

    .line 46
    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/b/i;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/b/i;-><init>(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/a/c;)V

    .line 49
    :cond_1
    return-object v1

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

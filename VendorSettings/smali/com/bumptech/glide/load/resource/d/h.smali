.class public Lcom/bumptech/glide/load/resource/d/h;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# instance fields
.field private final aUG:Lcom/bumptech/glide/load/f;

.field private final aUH:Lcom/bumptech/glide/load/f;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/bumptech/glide/load/resource/c/f;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/load/resource/c/f;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/h;->aUG:Lcom/bumptech/glide/load/f;

    .line 26
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/h;->aUH:Lcom/bumptech/glide/load/f;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;
    .locals 3

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DU()Lcom/bumptech/glide/load/engine/v;

    move-result-object v1

    .line 32
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DV()Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    .line 33
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/h;->aUG:Lcom/bumptech/glide/load/f;

    if-eqz v2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/h;->aUG:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v1, Lcom/bumptech/glide/load/resource/d/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DV()Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V

    .line 37
    new-instance p1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/a;)V

    .line 46
    :cond_0
    :goto_0
    return-object p1

    .line 39
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/h;->aUH:Lcom/bumptech/glide/load/f;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/h;->aUH:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, v0, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v2, Lcom/bumptech/glide/load/resource/d/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DU()Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V

    .line 43
    new-instance p1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/a;)V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/h;->aUG:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

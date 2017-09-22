.class public Lcom/bumptech/glide/load/engine/b/n;
.super Lcom/bumptech/glide/h/e;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/o;


# instance fields
.field private aSe:Lcom/bumptech/glide/load/engine/b/p;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h/e;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected synthetic B(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/b/n;->j(Lcom/bumptech/glide/load/engine/v;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/v;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/n;->aSe:Lcom/bumptech/glide/load/engine/b/p;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/n;->aSe:Lcom/bumptech/glide/load/engine/b/p;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/engine/b/p;->f(Lcom/bumptech/glide/load/engine/v;)V

    .line 34
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/p;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/n;->aSe:Lcom/bumptech/glide/load/engine/b/p;

    .line 27
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/b;

    check-cast p2, Lcom/bumptech/glide/load/engine/v;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/b/n;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/v;)V

    return-void
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/v;

    return-object v0
.end method

.method protected j(Lcom/bumptech/glide/load/engine/v;)I
    .locals 1

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->getSize()I

    move-result v0

    return v0
.end method

.method public synthetic j(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/bumptech/glide/h/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/v;

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/n;->BJ()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/n;->EJ()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/b/n;->trimToSize(I)V

    goto :goto_0
.end method

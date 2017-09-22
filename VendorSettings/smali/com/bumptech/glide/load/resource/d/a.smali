.class public Lcom/bumptech/glide/load/resource/d/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapper.java"


# instance fields
.field private final aUu:Lcom/bumptech/glide/load/engine/v;

.field private final aUv:Lcom/bumptech/glide/load/engine/v;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/engine/v;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/a;->aUv:Lcom/bumptech/glide/load/engine/v;

    .line 24
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/a;->aUu:Lcom/bumptech/glide/load/engine/v;

    .line 25
    return-void
.end method


# virtual methods
.method public DU()Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->aUv:Lcom/bumptech/glide/load/engine/v;

    return-object v0
.end method

.method public DV()Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->aUu:Lcom/bumptech/glide/load/engine/v;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->aUv:Lcom/bumptech/glide/load/engine/v;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->aUv:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->getSize()I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->aUu:Lcom/bumptech/glide/load/engine/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->getSize()I

    move-result v0

    goto :goto_0
.end method

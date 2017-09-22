.class public Lcom/bumptech/glide/load/resource/e/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/c;


# instance fields
.field private final aUJ:Lcom/bumptech/glide/load/resource/e/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/e/c;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/a;->aUJ:Lcom/bumptech/glide/load/resource/e/c;

    .line 21
    return-void
.end method


# virtual methods
.method public d(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 2

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/a;

    .line 27
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DU()Lcom/bumptech/glide/load/engine/v;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->aUJ:Lcom/bumptech/glide/load/resource/e/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/resource/e/c;->d(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/a;->DV()Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.class public Lcom/bumptech/glide/load/resource/d/g;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# instance fields
.field private final aUF:Lcom/bumptech/glide/load/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->aUF:Lcom/bumptech/glide/load/d;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/v;
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->aUF:Lcom/bumptech/glide/load/d;

    new-instance v1, Lcom/bumptech/glide/load/b/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/b/j;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/g;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->aUF:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

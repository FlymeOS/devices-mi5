.class Lcom/bumptech/glide/load/resource/c/o;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# instance fields
.field private final aNB:Lcom/bumptech/glide/load/engine/a/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/o;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/bumptech/glide/b/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/c/o;->b(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/engine/v;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->Ca()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/o;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method

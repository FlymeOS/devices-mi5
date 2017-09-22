.class Lcom/bumptech/glide/load/resource/d/d;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

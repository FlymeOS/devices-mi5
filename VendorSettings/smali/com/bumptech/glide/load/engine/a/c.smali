.class Lcom/bumptech/glide/load/engine/a/c;
.super Lcom/bumptech/glide/load/engine/a/d;
.source "AttributeStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected CV()Lcom/bumptech/glide/load/engine/a/b;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/b;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    return-object v0
.end method

.method protected synthetic CW()Lcom/bumptech/glide/load/engine/a/n;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/c;->CV()Lcom/bumptech/glide/load/engine/a/b;

    move-result-object v0

    return-object v0
.end method

.method public g(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/a/b;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/c;->CX()Lcom/bumptech/glide/load/engine/a/n;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/b;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/b;->f(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method

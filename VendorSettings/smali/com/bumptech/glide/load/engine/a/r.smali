.class Lcom/bumptech/glide/load/engine/a/r;
.super Lcom/bumptech/glide/load/engine/a/d;
.source "SizeConfigStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic CW()Lcom/bumptech/glide/load/engine/a/n;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/r;->Dc()Lcom/bumptech/glide/load/engine/a/q;

    move-result-object v0

    return-object v0
.end method

.method protected Dc()Lcom/bumptech/glide/load/engine/a/q;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/bumptech/glide/load/engine/a/q;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/q;-><init>(Lcom/bumptech/glide/load/engine/a/r;)V

    return-object v0
.end method

.method public d(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/a/q;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/r;->CX()Lcom/bumptech/glide/load/engine/a/n;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/q;

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/q;->c(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method

.class public Lcom/bumptech/glide/load/resource/bitmap/j;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# instance fields
.field private final aRb:Lcom/bumptech/glide/load/d;

.field private final aRe:Lcom/bumptech/glide/load/a;

.field private final aTh:Lcom/bumptech/glide/load/resource/bitmap/k;

.field private final aTi:Lcom/bumptech/glide/load/resource/bitmap/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aRb:Lcom/bumptech/glide/load/d;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aTh:Lcom/bumptech/glide/load/resource/bitmap/k;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aTi:Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 31
    invoke-static {}, Lcom/bumptech/glide/load/resource/a;->Ds()Lcom/bumptech/glide/load/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aRe:Lcom/bumptech/glide/load/a;

    .line 32
    return-void
.end method


# virtual methods
.method public DA()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aTi:Lcom/bumptech/glide/load/resource/bitmap/b;

    return-object v0
.end method

.method public Dx()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aRb:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public Dy()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aTh:Lcom/bumptech/glide/load/resource/bitmap/k;

    return-object v0
.end method

.method public Dz()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/j;->aRe:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

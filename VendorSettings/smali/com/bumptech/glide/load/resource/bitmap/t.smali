.class public Lcom/bumptech/glide/load/resource/bitmap/t;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# instance fields
.field private final aTF:Lcom/bumptech/glide/load/resource/bitmap/u;

.field private final aTG:Lcom/bumptech/glide/load/b/v;

.field private final aTH:Lcom/bumptech/glide/load/resource/b/c;

.field private final aTi:Lcom/bumptech/glide/load/resource/bitmap/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/v;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTG:Lcom/bumptech/glide/load/b/v;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTF:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTi:Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTF:Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTH:Lcom/bumptech/glide/load/resource/b/c;

    .line 32
    return-void
.end method


# virtual methods
.method public DA()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTi:Lcom/bumptech/glide/load/resource/bitmap/b;

    return-object v0
.end method

.method public Dx()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTH:Lcom/bumptech/glide/load/resource/b/c;

    return-object v0
.end method

.method public Dy()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTF:Lcom/bumptech/glide/load/resource/bitmap/u;

    return-object v0
.end method

.method public Dz()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->aTG:Lcom/bumptech/glide/load/b/v;

    return-object v0
.end method

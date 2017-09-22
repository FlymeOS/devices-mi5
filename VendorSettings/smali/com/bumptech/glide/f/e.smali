.class public Lcom/bumptech/glide/f/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/f;


# instance fields
.field private final aNw:Lcom/bumptech/glide/load/b/s;

.field private final aQs:Lcom/bumptech/glide/load/resource/e/c;

.field private final aVl:Lcom/bumptech/glide/f/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/f/b;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/f/e;->aNw:Lcom/bumptech/glide/load/b/s;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/bumptech/glide/f/e;->aQs:Lcom/bumptech/glide/load/resource/e/c;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/bumptech/glide/f/e;->aVl:Lcom/bumptech/glide/f/b;

    .line 41
    return-void
.end method


# virtual methods
.method public DA()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aVl:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->DA()Lcom/bumptech/glide/load/e;

    move-result-object v0

    return-object v0
.end method

.method public Dx()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aVl:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Dx()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public Dy()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aVl:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Dy()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public Dz()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aVl:Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->Dz()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method

.method public Ee()Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aNw:Lcom/bumptech/glide/load/b/s;

    return-object v0
.end method

.method public Ef()Lcom/bumptech/glide/load/resource/e/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->aQs:Lcom/bumptech/glide/load/resource/e/c;

    return-object v0
.end method

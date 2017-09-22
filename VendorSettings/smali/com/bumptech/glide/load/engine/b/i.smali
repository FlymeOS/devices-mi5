.class public Lcom/bumptech/glide/load/engine/b/i;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/b;


# instance fields
.field private final aRX:I

.field private final aRY:Lcom/bumptech/glide/load/engine/b/j;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/j;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/engine/b/i;->aRX:I

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/i;->aRY:Lcom/bumptech/glide/load/engine/b/j;

    .line 52
    return-void
.end method


# virtual methods
.method public Dd()Lcom/bumptech/glide/load/engine/b/a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/i;->aRY:Lcom/bumptech/glide/load/engine/b/j;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/b/j;->Df()Ljava/io/File;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i;->aRX:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/engine/b/k;->a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    goto :goto_0
.end method

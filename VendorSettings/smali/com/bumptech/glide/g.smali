.class public Lcom/bumptech/glide/g;
.super Lcom/bumptech/glide/f;
.source "GifTypeRequest.java"


# instance fields
.field private final aMQ:Lcom/bumptech/glide/load/b/s;

.field private final aMS:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/o;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p1, Lcom/bumptech/glide/c;->aMU:Lcom/bumptech/glide/h;

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/f;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/g;->aMQ:Lcom/bumptech/glide/load/b/s;

    .line 43
    iput-object p3, p0, Lcom/bumptech/glide/g;->aMS:Lcom/bumptech/glide/o;

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->BA()Lcom/bumptech/glide/f;

    .line 47
    return-void
.end method

.method private static a(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 31
    :cond_0
    if-nez p3, :cond_1

    .line 32
    const-class v0, Lcom/bumptech/glide/load/resource/c/b;

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;

    move-result-object p3

    .line 34
    :cond_1
    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/bumptech/glide/load/resource/c/b;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    .line 36
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0, p1, p3, v1}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method

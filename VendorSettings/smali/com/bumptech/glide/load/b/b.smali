.class public Lcom/bumptech/glide/load/b/b;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/s;


# instance fields
.field private final aSt:Lcom/bumptech/glide/load/b/s;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/s;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b;->aSt:Lcom/bumptech/glide/load/b/s;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->aSt:Lcom/bumptech/glide/load/b/s;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/b/s;->b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/b;->a(Ljava/io/File;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

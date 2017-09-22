.class public Lcom/bumptech/glide/load/b/y;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/s;


# instance fields
.field private final aSW:Lcom/bumptech/glide/load/b/s;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/s;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/b/y;->aSW:Lcom/bumptech/glide/load/b/s;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;II)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->aSW:Lcom/bumptech/glide/load/b/s;

    new-instance v1, Lcom/bumptech/glide/load/b/e;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/b/e;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/b/s;->b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/y;->a(Ljava/net/URL;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

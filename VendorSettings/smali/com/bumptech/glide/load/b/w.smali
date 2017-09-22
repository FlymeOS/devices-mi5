.class public Lcom/bumptech/glide/load/b/w;
.super Ljava/lang/Object;
.source "StringLoader.java"

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
    iput-object p1, p0, Lcom/bumptech/glide/load/b/w;->aSt:Lcom/bumptech/glide/load/b/s;

    .line 21
    return-void
.end method

.method private static cB(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/w;->e(Ljava/lang/String;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;II)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-static {p1}, Lcom/bumptech/glide/load/b/w;->cB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->aSt:Lcom/bumptech/glide/load/b/s;

    invoke-interface {v1, v0, p2, p3}, Lcom/bumptech/glide/load/b/s;->b(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/load/b/w;->cB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

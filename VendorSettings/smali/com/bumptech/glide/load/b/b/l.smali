.class public Lcom/bumptech/glide/load/b/b/l;
.super Lcom/bumptech/glide/load/b/x;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/x;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected F(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/bumptech/glide/load/a/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/a/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/bumptech/glide/load/a/l;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/a/l;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

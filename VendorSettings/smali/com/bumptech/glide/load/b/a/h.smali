.class public Lcom/bumptech/glide/load/b/a/h;
.super Lcom/bumptech/glide/load/b/x;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/x;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected F(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/bumptech/glide/load/a/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/a/d;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/bumptech/glide/load/a/e;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/a/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.class public Lcom/bumptech/glide/load/b/b/b;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/t;


# instance fields
.field private final aSX:Lcom/bumptech/glide/load/b/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/b/p;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/p;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/b;->aSX:Lcom/bumptech/glide/load/b/p;

    return-void
.end method


# virtual methods
.method public Dr()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/b/c;)Lcom/bumptech/glide/load/b/s;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/load/b/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/b;->aSX:Lcom/bumptech/glide/load/b/p;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/a;-><init>(Lcom/bumptech/glide/load/b/p;)V

    return-object v0
.end method

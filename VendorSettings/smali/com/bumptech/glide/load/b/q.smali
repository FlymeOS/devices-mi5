.class Lcom/bumptech/glide/load/b/q;
.super Lcom/bumptech/glide/h/e;
.source "ModelCache.java"


# instance fields
.field final synthetic aSS:Lcom/bumptech/glide/load/b/p;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/p;I)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/b/q;->aSS:Lcom/bumptech/glide/load/b/p;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/h/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/b/r;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/r;->release()V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/bumptech/glide/load/b/r;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/q;->a(Lcom/bumptech/glide/load/b/r;Ljava/lang/Object;)V

    return-void
.end method

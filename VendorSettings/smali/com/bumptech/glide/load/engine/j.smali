.class Lcom/bumptech/glide/load/engine/j;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# instance fields
.field private final aQP:Lcom/bumptech/glide/load/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->aQP:Lcom/bumptech/glide/load/b;

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/load/b;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->aQP:Lcom/bumptech/glide/load/b;

    return-object v0
.end method

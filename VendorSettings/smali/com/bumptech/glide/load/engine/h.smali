.class public Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final aQN:Lcom/bumptech/glide/load/engine/k;

.field private final aQO:Lcom/bumptech/glide/request/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/k;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->aQO:Lcom/bumptech/glide/request/d;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h;->aQN:Lcom/bumptech/glide/load/engine/k;

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->aQN:Lcom/bumptech/glide/load/engine/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->aQO:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/k;->b(Lcom/bumptech/glide/request/d;)V

    .line 58
    return-void
.end method

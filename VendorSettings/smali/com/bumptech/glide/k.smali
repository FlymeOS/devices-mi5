.class Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aNX:Lcom/bumptech/glide/d/i;

.field final synthetic aNY:Lcom/bumptech/glide/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/d/i;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bumptech/glide/k;->aNY:Lcom/bumptech/glide/j;

    iput-object p2, p0, Lcom/bumptech/glide/k;->aNX:Lcom/bumptech/glide/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/k;->aNX:Lcom/bumptech/glide/d/i;

    iget-object v1, p0, Lcom/bumptech/glide/k;->aNY:Lcom/bumptech/glide/j;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/i;->a(Lcom/bumptech/glide/d/j;)V

    .line 76
    return-void
.end method

.class public final Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field private final aMT:Ljava/lang/Class;

.field private final aMZ:Ljava/lang/Object;

.field private final aNZ:Z

.field final synthetic aOa:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 748
    iput-object p1, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/n;->aNZ:Z

    .line 750
    iput-object p2, p0, Lcom/bumptech/glide/n;->aMZ:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/bumptech/glide/j;->w(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/n;->aMT:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Class;)Lcom/bumptech/glide/e;
    .locals 11

    .prologue
    .line 768
    iget-object v0, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v0}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;

    move-result-object v10

    new-instance v0, Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v1, v1, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v2, v2, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v2}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/n;->aMT:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    invoke-static {v4}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/load/b/s;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    invoke-static {v5}, Lcom/bumptech/glide/m;->b(Lcom/bumptech/glide/m;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/q;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->d(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/i;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/n;->aOa:Lcom/bumptech/glide/m;

    iget-object v6, v6, Lcom/bumptech/glide/m;->aNY:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Class;Lcom/bumptech/glide/load/b/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;Lcom/bumptech/glide/o;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/c;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    .line 771
    iget-boolean v1, p0, Lcom/bumptech/glide/n;->aNZ:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/bumptech/glide/n;->aMZ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->t(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    .line 774
    :cond_0
    return-object v0
.end method

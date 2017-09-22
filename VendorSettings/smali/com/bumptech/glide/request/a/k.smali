.class public Lcom/bumptech/glide/request/a/k;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# instance fields
.field private final aVR:Lcom/bumptech/glide/request/a/j;

.field private aVS:Lcom/bumptech/glide/request/a/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/j;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/request/a/k;->aVR:Lcom/bumptech/glide/request/a/j;

    .line 27
    return-void
.end method


# virtual methods
.method public e(ZZ)Lcom/bumptech/glide/request/a/d;
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/a/g;->Ey()Lcom/bumptech/glide/request/a/d;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/a/k;->aVS:Lcom/bumptech/glide/request/a/d;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/a/i;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/k;->aVR:Lcom/bumptech/glide/request/a/j;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a/i;-><init>(Lcom/bumptech/glide/request/a/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/k;->aVS:Lcom/bumptech/glide/request/a/d;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/a/k;->aVS:Lcom/bumptech/glide/request/a/d;

    goto :goto_0
.end method

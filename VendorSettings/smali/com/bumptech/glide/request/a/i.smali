.class public Lcom/bumptech/glide/request/a/i;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/d;


# instance fields
.field private final aVR:Lcom/bumptech/glide/request/a/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/j;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/a/i;->aVR:Lcom/bumptech/glide/request/a/j;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)Z
    .locals 2

    .prologue
    .line 36
    invoke-interface {p2}, Lcom/bumptech/glide/request/a/e;->getView()Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/request/a/i;->aVR:Lcom/bumptech/glide/request/a/j;

    invoke-interface {v1}, Lcom/bumptech/glide/request/a/j;->Ew()Landroid/view/animation/Animation;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

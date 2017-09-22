.class public Lcom/bumptech/glide/request/e;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/a;
.implements Lcom/bumptech/glide/request/b;


# instance fields
.field private aVI:Lcom/bumptech/glide/request/a;

.field private aVJ:Lcom/bumptech/glide/request/a;

.field private aVK:Lcom/bumptech/glide/request/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    .line 18
    return-void
.end method

.method private Er()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->c(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Es()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->d(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Et()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->Eq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Ei()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->Ei()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->Ei()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Eq()Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->Et()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->Ei()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    .line 23
    return-void
.end method

.method public begin()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->begin()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->begin()V

    .line 92
    :cond_1
    return-void
.end method

.method public c(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->Er()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->Ei()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->clear()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->clear()V

    .line 107
    return-void
.end method

.method public d(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->Es()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->Eq()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/bumptech/glide/request/a;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVK:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->e(Lcom/bumptech/glide/request/a;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->clear()V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->pause()V

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->pause()V

    .line 98
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVI:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->recycle()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->aVJ:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->recycle()V

    .line 155
    return-void
.end method

.class Lcom/bumptech/glide/load/resource/c/k;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic aUl:Lcom/bumptech/glide/load/resource/c/g;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/c/g;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/k;->aUl:Lcom/bumptech/glide/load/resource/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/c/g;Lcom/bumptech/glide/load/resource/c/h;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/c/k;-><init>(Lcom/bumptech/glide/load/resource/c/g;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/c/i;

    .line 135
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/c/k;->aUl:Lcom/bumptech/glide/load/resource/c/g;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/resource/c/g;->a(Lcom/bumptech/glide/load/resource/c/i;)V

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/c/i;

    .line 139
    invoke-static {v0}, Lcom/bumptech/glide/h;->c(Lcom/bumptech/glide/request/b/k;)V

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

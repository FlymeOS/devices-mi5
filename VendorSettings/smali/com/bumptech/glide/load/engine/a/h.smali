.class Lcom/bumptech/glide/load/engine/a/h;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# instance fields
.field aRA:Lcom/bumptech/glide/load/engine/a/h;

.field private aRy:Ljava/util/List;

.field aRz:Lcom/bumptech/glide/load/engine/a/h;

.field private final key:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/h;-><init>(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRA:Lcom/bumptech/glide/load/engine/a/h;

    iput-object p0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRz:Lcom/bumptech/glide/load/engine/a/h;

    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/h;->key:Ljava/lang/Object;

    .line 128
    return-void
.end method

.method static synthetic e(Lcom/bumptech/glide/load/engine/a/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->key:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/h;->size()I

    move-result v0

    .line 132
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->aRy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

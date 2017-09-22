.class public Lcom/bumptech/glide/h/e;
.super Ljava/lang/Object;
.source "LruCache.java"


# instance fields
.field private final aRE:I

.field private aRG:I

.field private final aWp:Ljava/util/LinkedHashMap;

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/h/e;->aRG:I

    .line 25
    iput p1, p0, Lcom/bumptech/glide/h/e;->aRE:I

    .line 26
    iput p1, p0, Lcom/bumptech/glide/h/e;->maxSize:I

    .line 27
    return-void
.end method

.method private CY()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/bumptech/glide/h/e;->maxSize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->trimToSize(I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected B(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public BJ()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->trimToSize(I)V

    .line 147
    return-void
.end method

.method public EJ()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bumptech/glide/h/e;->aRG:I

    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h/e;->B(Ljava/lang/Object;)I

    move-result v0

    .line 111
    iget v1, p0, Lcom/bumptech/glide/h/e;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    if-eqz p2, :cond_1

    .line 118
    iget v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h/e;->B(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 122
    iget v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->B(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/h/e;->CY()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h/e;->B(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/h/e;->aRG:I

    .line 139
    :cond_0
    return-object v0
.end method

.method protected trimToSize(I)V
    .locals 4

    .prologue
    .line 156
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/h/e;->aRG:I

    if-le v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget v2, p0, Lcom/bumptech/glide/h/e;->aRG:I

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h/e;->B(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/h/e;->aRG:I

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/bumptech/glide/h/e;->aWp:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/h/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

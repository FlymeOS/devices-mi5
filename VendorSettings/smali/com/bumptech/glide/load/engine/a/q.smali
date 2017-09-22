.class final Lcom/bumptech/glide/load/engine/a/q;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/n;


# instance fields
.field private final aRR:Lcom/bumptech/glide/load/engine/a/r;

.field private aRu:Landroid/graphics/Bitmap$Config;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/r;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q;->aRR:Lcom/bumptech/glide/load/engine/a/r;

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/a/q;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/q;->size:I

    return v0
.end method


# virtual methods
.method public CU()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/q;->aRR:Lcom/bumptech/glide/load/engine/a/r;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/r;->a(Lcom/bumptech/glide/load/engine/a/n;)V

    .line 196
    return-void
.end method

.method public c(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q;->size:I

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/a/q;

    if-eqz v1, :cond_0

    .line 206
    check-cast p1, Lcom/bumptech/glide/load/engine/a/q;

    .line 207
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/q;->size:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/q;->size:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/q;->size:I

    .line 215
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 216
    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/q;->size:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/q;->aRu:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/a/o;->b(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

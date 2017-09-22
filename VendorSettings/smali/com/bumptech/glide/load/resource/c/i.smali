.class Lcom/bumptech/glide/load/resource/c/i;
.super Lcom/bumptech/glide/request/b/g;
.source "GifFrameLoader.java"


# instance fields
.field private final aUj:J

.field private aUk:Landroid/graphics/Bitmap;

.field private final handler:Landroid/os/Handler;

.field private final index:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/g;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/i;->handler:Landroid/os/Handler;

    .line 154
    iput p2, p0, Lcom/bumptech/glide/load/resource/c/i;->index:I

    .line 155
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/c/i;->aUj:J

    .line 156
    return-void
.end method

.method static synthetic b(Lcom/bumptech/glide/load/resource/c/i;)I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/bumptech/glide/load/resource/c/i;->index:I

    return v0
.end method


# virtual methods
.method public DR()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/i;->aUk:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/d;)V
    .locals 4

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/i;->aUk:Landroid/graphics/Bitmap;

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/i;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/i;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/bumptech/glide/load/resource/c/i;->aUj:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/d;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/c/i;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/d;)V

    return-void
.end method

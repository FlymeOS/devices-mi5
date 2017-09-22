.class public Lcom/bumptech/glide/load/resource/bitmap/w;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/a;


# static fields
.field private static final aTJ:Lcom/bumptech/glide/load/resource/bitmap/x;


# instance fields
.field private aTK:Lcom/bumptech/glide/load/resource/bitmap/x;

.field private aTL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/x;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTJ:Lcom/bumptech/glide/load/resource/bitmap/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTJ:Lcom/bumptech/glide/load/resource/bitmap/x;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>(Lcom/bumptech/glide/load/resource/bitmap/x;I)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/x;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTK:Lcom/bumptech/glide/load/resource/bitmap/x;

    .line 38
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTL:I

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/a/e;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTK:Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/x;->DJ()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTL:I

    if-ltz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/w;->aTL:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 54
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 55
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

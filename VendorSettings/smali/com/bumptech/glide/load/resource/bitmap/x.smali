.class Lcom/bumptech/glide/load/resource/bitmap/x;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DJ()Landroid/media/MediaMetadataRetriever;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-object v0
.end method

.class Lcom/android/camera/module/VideoModule$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mThumbnail:Lcom/android/camera/Thumbnail;

.field mUri:Landroid/net/Uri;

.field mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 1

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2086
    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    .line 2087
    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->access$3200(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    .line 2088
    return-void
.end method

.method private updateThumbnail()V
    .locals 3

    .prologue
    .line 2116
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadThumbnailTask updateThumbnail mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v2, v2, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 2120
    :cond_1
    return-void

    .line 2118
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2081
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2092
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2093
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2095
    .local v0, "videoFrame":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2100
    .end local v0    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v4

    .line 2096
    .restart local v0    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v0, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 2111
    const-string v0, "videocamera"

    const-string v1, "LoadThumbnailTask onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    .line 2113
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2081
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    :goto_0
    return-void

    .line 2106
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    goto :goto_0
.end method

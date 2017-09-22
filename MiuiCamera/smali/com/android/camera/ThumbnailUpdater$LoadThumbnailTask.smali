.class Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
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
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;Z)V
    .locals 0
    .param p2, "lookAtCache"    # Z

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "t":Lcom/android/camera/Thumbnail;
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 74
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 75
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 76
    .local v3, "thumbnailUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Thumbnail;->getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v5

    goto :goto_0

    .line 82
    .end local v3    # "thumbnailUri":Landroid/net/Uri;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v6, :cond_4

    .line 84
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 92
    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 94
    :cond_5
    new-array v1, v8, [Lcom/android/camera/Thumbnail;

    .line 96
    .local v1, "result":[Lcom/android/camera/Thumbnail;
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    if-nez v6, :cond_6

    .line 98
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v0

    .line 104
    .local v0, "code":I
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    move-object v5, v2

    .line 106
    goto/16 :goto_0

    .line 101
    .end local v0    # "code":I
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v7}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6, v1, v7, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result v0

    .restart local v0    # "code":I
    goto :goto_1

    .line 110
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, v1, v5

    goto/16 :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->cancel(Z)Z

    goto/16 :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    # setter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/camera/ThumbnailUpdater;->access$102(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 122
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

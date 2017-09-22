.class Lcom/android/settings/users/EditUserPhotoController$3;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# instance fields
.field final synthetic atR:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic atU:Z

.field final synthetic atV:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atU:Z

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atV:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$3;->i([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs i([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 245
    iget-boolean v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atU:Z

    if-eqz v1, :cond_2

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->d(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atV:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 250
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 255
    if-eqz v2, :cond_0

    .line 257
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    const-string v2, "EditUserPhotoController"

    const-string v3, "Cannot close image stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 252
    :goto_1
    :try_start_3
    const-string v3, "EditUserPhotoController"

    const-string v4, "Cannot find image file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    if-eqz v2, :cond_0

    .line 257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 258
    :catch_2
    move-exception v1

    .line 259
    const-string v2, "EditUserPhotoController"

    const-string v3, "Cannot close image stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 257
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 260
    :cond_1
    :goto_3
    throw v0

    .line 258
    :catch_3
    move-exception v1

    .line 259
    const-string v2, "EditUserPhotoController"

    const-string v3, "Cannot close image stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->e(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserPhotoController;->e(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    :try_start_6
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v3}, Lcom/android/settings/users/EditUserPhotoController;->d(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atV:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 272
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v3

    .line 276
    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 279
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 280
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 281
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v4, v0

    add-int/2addr v0, v5

    invoke-direct {v6, v4, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v4}, Lcom/android/settings/users/EditUserPhotoController;->e(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v5}, Lcom/android/settings/users/EditUserPhotoController;->e(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v5

    invoke-direct {v0, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 285
    invoke-virtual {v2, v3, v6, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 286
    goto/16 :goto_0

    .line 273
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 255
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 251
    :catch_5
    move-exception v1

    goto/16 :goto_1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0, p1}, Lcom/android/settings/users/EditUserPhotoController;->a(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->f(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserPhotoController;->g(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/c/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->a(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->f(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->h(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->d(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$3;->atR:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->d(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 304
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$3;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.class Lcom/android/camera/snap/SnapCamera$2;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 14
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 313
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 314
    .local v4, "loc":Landroid/location/Location;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_SNAP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 317
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$200(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mWidth:I
    invoke-static {v6}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)I

    move-result v7

    iget-object v6, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mHeight:I
    invoke-static {v6}, Lcom/android/camera/snap/SnapCamera;->access$400(Lcom/android/camera/snap/SnapCamera;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v11}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;

    move-result-object v13

    .line 329
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$600(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1    # "title":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v5    # "orientation":I
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v12

    .line 341
    .local v12, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save picture failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/camera/module/MorphoPanoramaModule$3;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;

.field final synthetic val$data2:[B


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V
    .locals 0

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->val$data2:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1368
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1369
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreviewFrame mCameraDevice has been released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1372
    :cond_0
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame CaptureInfo run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2900(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2400()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2900(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1379
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z
    invoke-static {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$3102(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    .line 1380
    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreviewFrame takePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$3000(Lcom/android/camera/module/MorphoPanoramaModule;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    goto :goto_1

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->val$data2:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->onPictureTakenPreview([B)V

    goto :goto_0
.end method

.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
.super Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StereoPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 706
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 710
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mJpegPictureCallback] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z
    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1300(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 715
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 716
    if-eqz p1, :cond_0

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1400(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 721
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1502(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 722
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    .line 723
    const-string v0, "Camera"

    const-string v1, "[mJpegPictureCallback] end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

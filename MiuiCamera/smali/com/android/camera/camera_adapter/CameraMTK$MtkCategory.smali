.class Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;
.super Lcom/android/camera/module/CameraModule$CameraCategory;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtkCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 684
    return-void
.end method


# virtual methods
.method public takePicture(Landroid/location/Location;)V
    .locals 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v3, 0x0

    .line 687
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;
    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$700(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stereo/WarningCallback;->isDualCameraReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$700(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stereo/WarningCallback;->isDualCameraReady()Z

    move-result v1

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$802(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z

    .line 691
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$500(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 692
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1000(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$900(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoDataCallback(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1200(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1100(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$500(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    goto :goto_0
.end method

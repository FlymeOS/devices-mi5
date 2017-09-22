.class final Lcom/android/camera/module/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3013
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3014
    iput-object p2, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 3015
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3019
    const-string v0, "videocamera"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$3902(Lcom/android/camera/module/VideoModule;Z)Z

    .line 3022
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3027
    :goto_0
    return-void

    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    # invokes: Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/module/VideoModule;->access$4000(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V

    .line 3026
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    goto :goto_0
.end method

.class Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;
.super Landroid/os/Handler;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveHandler"
.end annotation


# instance fields
.field private mXmpJpegData:[B

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 628
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 629
    return-void
.end method

.method private saveFile([BLjava/lang/String;)V
    .locals 15
    .param p1, "mXmpJpegData"    # [B
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$300(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 656
    .local v0, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v11

    .line 657
    .local v11, "orientation":I
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$400(Lcom/android/camera/camera_adapter/CameraMTK;)I

    move-result v1

    add-int/2addr v1, v11

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 658
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .line 659
    .local v8, "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    .line 664
    .local v9, "height":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$500(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->getLocation()Landroid/location/Location;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v14}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 676
    return-void

    .line 661
    .end local v8    # "width":I
    .end local v9    # "height":I
    :cond_0
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 662
    .restart local v8    # "width":I
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v9    # "height":I
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 632
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 636
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/camera/stereo/StereoDataGroup;

    .line 637
    .local v8, "dataGroup":Lcom/android/camera/stereo/StereoDataGroup;
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getOriginalJpegData()[B

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getJpsData()[B

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getMaskAndConfigData()[B

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getClearImage()[B

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getDepthMap()[B

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getLdcData()[B

    move-result-object v7

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B
    invoke-static/range {v0 .. v7}, Lcom/android/camera/camera_adapter/CameraMTK;->access$200(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    .line 642
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMergeData mXmpJpegData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-virtual {v8}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->saveFile([BLjava/lang/String;)V

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field mPressDownTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 1135
    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1138
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5000(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1140
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    .line 1141
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x0

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4002(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1145
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4002(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$4002(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    .end local v0    # "currentTime":J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_UBIFOCUS_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_BURST"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 18
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-nez v2, :cond_2

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5000(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_0

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v6, v6, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v5, v6, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v6, v6, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmpl-double v7, v8, v16

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmpl-double v7, v8, v16

    if-eqz v7, :cond_5

    :cond_3
    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->stopMultiSnap()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5100(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 1171
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1178
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 1188
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 1192
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-gt v2, v3, :cond_b

    const/4 v14, 0x1

    .line 1195
    .local v14, "isHide":Z
    :goto_3
    if-eqz v14, :cond_c

    const/4 v13, 0x0

    .line 1197
    .local v13, "orientation":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_d

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    .line 1199
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1205
    .local v11, "height":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    .line 1206
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_e

    const/4 v15, 0x1

    .line 1208
    .local v15, "isMap":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-eq v2, v3, :cond_9

    .line 1209
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    check-cast v8, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v16}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V

    .line 1222
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-eqz v2, :cond_13

    .line 1223
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x1

    # invokes: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 1230
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v8, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v9, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_12

    const/4 v12, 0x1

    :goto_a
    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1232
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Burst shooting finished. Total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pictures, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cost consuming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1194
    .end local v5    # "title":Ljava/lang/String;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v13    # "orientation":I
    .end local v14    # "isHide":Z
    .end local v15    # "isMap":Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1195
    .restart local v14    # "isHide":Z
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    goto/16 :goto_4

    .line 1201
    .restart local v13    # "orientation":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v10, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1202
    .restart local v10    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    .restart local v11    # "height":I
    goto/16 :goto_5

    .line 1206
    .restart local v5    # "title":Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 1228
    .restart local v15    # "isMap":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # invokes: Lcom/android/camera/module/CameraModule;->stopMultiSnap()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5100(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_7

    .line 1230
    :cond_10
    const/4 v8, 0x1

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    goto :goto_a

    .line 1242
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v15, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const v3, 0x7f0e0188

    const/4 v4, 0x0

    # invokes: Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V
    invoke-static {v2, v3, v4}, Lcom/android/camera/module/CameraModule;->access$2500(Lcom/android/camera/module/CameraModule;IZ)V

    goto/16 :goto_0

    .line 1246
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5200(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object v2

    # invokes: Lcom/android/camera/module/CameraModule$BurstSpeedController;->onPictureTaken()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->access$5300(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    goto/16 :goto_0
.end method

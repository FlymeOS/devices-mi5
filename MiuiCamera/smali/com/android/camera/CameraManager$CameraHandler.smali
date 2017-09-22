.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 137
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    sparse-switch v0, :sswitch_data_0

    .line 350
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 351
    :goto_1
    return-void

    .line 142
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 144
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v6

    .line 335
    .local v6, "e":Ljava/util/ConcurrentModificationException;
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConcurrentModificationException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v6    # "e":Ljava/util/ConcurrentModificationException;
    :sswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 151
    :catch_1
    move-exception v7

    .line 152
    .local v7, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0, v7}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 336
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 337
    .local v6, "e":Ljava/lang/RuntimeException;
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 343
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0, v12}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 344
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0, v12}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraError:Z
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    throw v6

    .line 157
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :sswitch_3
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 161
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 166
    :sswitch_5
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 167
    :catch_3
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    .end local v6    # "e":Ljava/io/IOException;
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_1

    .line 177
    :sswitch_7
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 181
    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 186
    :sswitch_9
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 191
    :sswitch_a
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 195
    :sswitch_b
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 199
    :sswitch_c
    const-string v8, "cancelAutoFocus failed"
    :try_end_8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 201
    .local v8, "paramEmptyException":Ljava/lang/String;
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 202
    :catch_4
    move-exception v6

    .line 203
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "paramEmptyException":Ljava/lang/String;
    :sswitch_d
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 218
    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 222
    :sswitch_f
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 227
    :sswitch_10
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 232
    :sswitch_11
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_0

    .line 236
    :sswitch_12
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 240
    :sswitch_13
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    .line 244
    :sswitch_14
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 248
    :sswitch_15
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 251
    :sswitch_16
    const-string v8, "getParameters failed (empty parameters)"
    :try_end_a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 252
    .restart local v8    # "paramEmptyException":Ljava/lang/String;
    const/4 v10, 0x3

    .local v10, "retry_cnt":I
    move v11, v10

    .line 253
    .end local v10    # "retry_cnt":I
    .local v11, "retry_cnt":I
    :goto_3
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "retry_cnt":I
    .restart local v10    # "retry_cnt":I
    if-lez v11, :cond_0

    .line 255
    :try_start_b
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    # setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 257
    :catch_5
    move-exception v6

    .line 258
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    move v11, v10

    .line 265
    .end local v10    # "retry_cnt":I
    .restart local v11    # "retry_cnt":I
    goto :goto_3

    .line 262
    .end local v11    # "retry_cnt":I
    .restart local v10    # "retry_cnt":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "paramEmptyException":Ljava/lang/String;
    .end local v10    # "retry_cnt":I
    :sswitch_17
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 273
    :sswitch_18
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_0

    .line 276
    :sswitch_19
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result v1

    # setter for: Lcom/android/camera/CameraManager;->mFlashOn:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 279
    :sswitch_1a
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFocusSuccessful(Landroid/hardware/Camera;)Z

    move-result v1

    # setter for: Lcom/android/camera/CameraManager;->mFocusSuccessful:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$602(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 282
    :sswitch_1b
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->cancelContinuousMode(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 285
    :sswitch_1c
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera;)I

    move-result v1

    # setter for: Lcom/android/camera/CameraManager;->mWBCT:I
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$702(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 288
    :sswitch_1d
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setLongshotMode(Landroid/hardware/Camera;Z)V

    goto/16 :goto_0

    .line 291
    :sswitch_1e
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 294
    :sswitch_1f
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    .line 295
    .local v9, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, v9, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->startObjectTrack(Landroid/hardware/Camera;IIII)V

    goto/16 :goto_0

    .line 298
    .end local v9    # "rect":Landroid/graphics/RectF;
    :sswitch_20
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->stopObjectTrack(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 301
    :sswitch_21
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    goto/16 :goto_0

    .line 304
    :sswitch_22
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->isPreviewEnabled(Landroid/hardware/Camera;)Z

    move-result v1

    # setter for: Lcom/android/camera/CameraManager;->mPreviewEnable:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$802(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 307
    :sswitch_23
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBurstShotSpeed(Landroid/hardware/Camera;I)V
    :try_end_c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 311
    :sswitch_24
    :try_start_d
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 312
    :catch_6
    move-exception v6

    .line 313
    .local v6, "e":Ljava/io/IOException;
    :try_start_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 317
    .end local v6    # "e":Ljava/io/IOException;
    :sswitch_25
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    goto/16 :goto_0

    .line 324
    :sswitch_26
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    :sswitch_27
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    :sswitch_28
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 340
    .local v6, "e":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v7

    .line 341
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "CameraManager"

    const-string v1, "Fail to release the camera."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_16
        0x15 -> :sswitch_1e
        0x16 -> :sswitch_0
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_13
        0x64 -> :sswitch_19
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1d
        0x6a -> :sswitch_1f
        0x6b -> :sswitch_20
        0x6c -> :sswitch_21
        0x6d -> :sswitch_1a
        0x6e -> :sswitch_22
        0x6f -> :sswitch_23
        0x70 -> :sswitch_24
        0x71 -> :sswitch_25
        0x72 -> :sswitch_9
        0x73 -> :sswitch_26
        0x74 -> :sswitch_27
        0x75 -> :sswitch_28
    .end sparse-switch
.end method

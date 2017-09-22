.class public Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 376
    # setter for: Lcom/android/camera/CameraManager;->mCameraError:Z
    invoke-static {p1, v1}, Lcom/android/camera/CameraManager;->access$902(Lcom/android/camera/CameraManager;Z)Z

    .line 377
    return-void

    :cond_0
    move v0, v1

    .line 375
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CameraManager;
    .param p2, "x1"    # Lcom/android/camera/CameraManager$1;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 473
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 475
    return-void
.end method

.method public addRawImageCallbackBuffer([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 596
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 597
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 598
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 479
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 480
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 481
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 485
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 487
    return-void
.end method

.method public cancelPicture()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 514
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 516
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 589
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 590
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 591
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$400(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getWBCT()I
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 582
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 583
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 584
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mWBCT:I
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)I

    move-result v0

    return v0
.end method

.method public isFocusSuccessful()Z
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 575
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 577
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mFocusSuccessful:Z
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedFlashOn()Z
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 568
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 569
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 570
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mFlashOn:Z
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Z

    move-result v0

    return v0
.end method

.method public isPreviewEnable()Z
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 626
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 627
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 628
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mPreviewEnable:Z
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 410
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 411
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 412
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 395
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 391
    return-void
.end method

.method public removeAllAsyncMessage()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 491
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 492
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 493
    return-void
.end method

.method public setBurstShotSpeed(I)V
    .locals 3
    .param p1, "burstSpeed"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 633
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 634
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 635
    return-void
.end method

.method public setCameraError()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/CameraManager;->mCameraError:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$902(Lcom/android/camera/CameraManager;Z)Z

    .line 385
    return-void
.end method

.method public setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 639
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 640
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 641
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 520
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 522
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 523
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 553
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 533
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 535
    return-void
.end method

.method public final setLongshotMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 467
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 468
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 469
    return-void
.end method

.method public setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 2
    .param p1, "cameraMetaDataCallback"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 620
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 621
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 622
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 461
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 462
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 463
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 557
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 558
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 559
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v1, 0x15

    .line 562
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 455
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 457
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 449
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 451
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 422
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 423
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 424
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 416
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 417
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 418
    return-void
.end method

.method public setStereoDataCallback(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 645
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 646
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 647
    return-void
.end method

.method public setStereoWarningCallback(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 651
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 652
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 653
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 527
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 528
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 529
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 539
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 541
    return-void
.end method

.method public startObjectTrack(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 608
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 610
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 432
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 434
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 545
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 547
    return-void
.end method

.method public stopObjectTrack()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 614
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 615
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 616
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 443
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 445
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 499
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 510
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1200(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    # getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 406
    return-void
.end method

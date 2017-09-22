.class Lcom/android/zxing/QRCodeManager$MyHander;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->recode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/zxing/QRCodeManager;->access$302(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$500(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # invokes: Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$700(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v1, 0xfa0

    # invokes: Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V
    invoke-static {v0, v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$400(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # invokes: Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$600(Lcom/android/zxing/QRCodeManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$1000(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->access$900(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v1, 0x3e8

    # invokes: Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V
    invoke-static {v0, v1}, Lcom/android/zxing/QRCodeManager;->access$800(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # invokes: Lcom/android/zxing/QRCodeManager;->exitDecode()V
    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->access$1100(Lcom/android/zxing/QRCodeManager;)V

    .line 183
    const-string v0, "QRCodeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit decode qrcode for timeout, mResumeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    # getter for: Lcom/android/zxing/QRCodeManager;->mResumeTime:J
    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->access$1200(Lcom/android/zxing/QRCodeManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " decodetime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->access$1300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f090006
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

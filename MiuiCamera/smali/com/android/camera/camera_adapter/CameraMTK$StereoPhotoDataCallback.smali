.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
.super Ljava/lang/Object;
.source "CameraMTK.java"

# interfaces
.implements Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StereoPhotoDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method private constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/camera_adapter/CameraMTK;
    .param p2, "x1"    # Lcom/android/camera/camera_adapter/CameraMTK$1;

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    return-void
.end method


# virtual methods
.method public onClearImageCapture([B)V
    .locals 3
    .param p1, "clearImageData"    # [B

    .prologue
    .line 765
    const-string v0, "Camera"

    const-string v1, "onClearImageCapture clearImageData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-nez p1, :cond_0

    .line 767
    const-string v0, "Camera"

    const-string v1, " clearImage data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_0
    return-void

    .line 770
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearImageCapture clearImageData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2102(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 772
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    goto :goto_0
.end method

.method public onDepthMapCapture([B)V
    .locals 3
    .param p1, "depthData"    # [B

    .prologue
    .line 755
    const-string v0, "Camera"

    const-string v1, "onDepthMapCapture depthData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-nez p1, :cond_0

    .line 757
    const-string v0, "Camera"

    const-string v1, "depth data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDepthMapCapture depthData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2002(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 762
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    goto :goto_0
.end method

.method public onJpsCapture([B)V
    .locals 3
    .param p1, "jpsData"    # [B

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    const-string v0, "Camera"

    const-string v1, "JPS data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpsCapture jpsData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1702(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 742
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    goto :goto_0
.end method

.method public onLdcCapture([B)V
    .locals 3
    .param p1, "ldcData"    # [B

    .prologue
    .line 775
    const-string v0, "Camera"

    const-string v1, "onLdcCapture ldcData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    if-nez p1, :cond_0

    .line 777
    const-string v0, "Camera"

    const-string v1, " ldc data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLdcCapture ldcData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$2202(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 782
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    goto :goto_0
.end method

.method public onMaskCapture([B)V
    .locals 3
    .param p1, "maskData"    # [B

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    const-string v0, "Camera"

    const-string v1, "Mask data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMaskCapture maskData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # setter for: Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B
    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1802(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 751
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # getter for: Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1800(Lcom/android/camera/camera_adapter/CameraMTK;)[B

    move-result-object v1

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->setJsonBuffer([B)V
    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1900(Lcom/android/camera/camera_adapter/CameraMTK;[B)V

    .line 752
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    # invokes: Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    goto :goto_0
.end method

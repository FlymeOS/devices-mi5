.class Lcom/android/camera/snap/SnapTrigger$1;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapTrigger;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # invokes: Lcom/android/camera/snap/SnapTrigger;->shutdownWatchDog()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$100(Lcom/android/camera/snap/SnapTrigger;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # invokes: Lcom/android/camera/snap/SnapTrigger;->vibratorShort()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$200(Lcom/android/camera/snap/SnapTrigger;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->startCamcorder()V

    .line 105
    # getter for: Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "take movie"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_quick_snap_movie"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    const/4 v1, 0x0

    # invokes: Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapTrigger;->access$400(Lcom/android/camera/snap/SnapTrigger;Z)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->takeSnap()V

    .line 110
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$1;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # operator++ for: Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$508(Lcom/android/camera/snap/SnapTrigger;)I

    .line 111
    # getter for: Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "take snap"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_quick_snap"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

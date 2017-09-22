.class Lcom/android/camera/snap/SnapCamera$1;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0xe1

    const/16 v4, 0x87

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "angle":I
    const/16 v3, 0x2d

    if-gt v3, p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 199
    const/16 v0, 0xb4

    .line 213
    :goto_0
    const/4 v2, -0x1

    .line 214
    .local v2, "toAngle":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mCameraId:I
    invoke-static {v4}, Lcom/android/camera/snap/SnapCamera;->access$000(Lcom/android/camera/snap/SnapCamera;)I

    move-result v4

    aget-object v1, v3, v4

    .line 215
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 216
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 217
    rsub-int v3, v0, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 225
    :goto_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # getter for: Lcom/android/camera/snap/SnapCamera;->mLastAngle:I
    invoke-static {v3}, Lcom/android/camera/snap/SnapCamera;->access$100(Lcom/android/camera/snap/SnapCamera;)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v3, v2}, Lcom/android/camera/snap/SnapCamera;->updateCameraOrientation(I)V

    .line 227
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    # setter for: Lcom/android/camera/snap/SnapCamera;->mLastAngle:I
    invoke-static {v3, v2}, Lcom/android/camera/snap/SnapCamera;->access$102(Lcom/android/camera/snap/SnapCamera;I)I

    .line 229
    :cond_0
    return-void

    .line 200
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "toAngle":I
    :cond_1
    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    .line 201
    const/16 v0, 0x10e

    goto :goto_0

    .line 202
    :cond_2
    if-gt v5, p1, :cond_3

    const/16 v3, 0x13b

    if-ge p1, v3, :cond_3

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 219
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v2    # "toAngle":I
    :cond_4
    rem-int/lit16 v2, v0, 0x168

    goto :goto_1

    .line 222
    :cond_5
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method

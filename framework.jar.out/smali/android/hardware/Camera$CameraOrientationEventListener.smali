.class Landroid/hardware/Camera$CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraOrientationEventListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mOrientation:I

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    iput-object p1, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->this$0:Landroid/hardware/Camera;

    .line 700
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 697
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mOrientation:I

    .line 701
    iput-object p2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    .line 702
    iget-object v1, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 703
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    .line 704
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 711
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mOrientation:I

    # invokes: Landroid/hardware/Camera;->roundOrientation(II)I
    invoke-static {p1, v2}, Landroid/hardware/Camera;->access$000(II)I

    move-result v2

    iput v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mOrientation:I

    .line 713
    iget v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 714
    iget-object v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 715
    .local v0, "degrees":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 716
    .local v1, "newReverse":Z
    :goto_1
    iget-object v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mReverseFrameData:Z
    invoke-static {v2}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 717
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReverseFrameData change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current client orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v2, p0, Landroid/hardware/Camera$CameraOrientationEventListener;->this$0:Landroid/hardware/Camera;

    # setter for: Landroid/hardware/Camera;->mReverseFrameData:Z
    invoke-static {v2, v1}, Landroid/hardware/Camera;->access$102(Landroid/hardware/Camera;Z)Z

    goto :goto_0

    .line 715
    .end local v1    # "newReverse":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

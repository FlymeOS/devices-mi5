.class Lcom/android/camera/snap/SnapTrigger$2;
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
    .line 117
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # invokes: Lcom/android/camera/snap/SnapTrigger;->initCamera()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$600(Lcom/android/camera/snap/SnapTrigger;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$700(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$700(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$800(Lcom/android/camera/snap/SnapTrigger;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    # getter for: Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;
    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_0
    return-void

    .line 122
    :cond_1
    const-wide/16 v0, 0xc8

    goto :goto_0
.end method

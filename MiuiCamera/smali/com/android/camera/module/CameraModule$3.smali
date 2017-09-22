.class Lcom/android/camera/module/CameraModule$3;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;

.field final synthetic val$extra1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iput-object p2, p0, Lcom/android/camera/module/CameraModule$3;->val$extra1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeBefore()V

    .line 1822
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$3;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$3;->val$extra1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V
    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->access$5900(Lcom/android/camera/module/CameraModule;I)V

    .line 1823
    return-void
.end method

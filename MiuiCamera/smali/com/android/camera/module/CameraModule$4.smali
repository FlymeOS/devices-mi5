.class Lcom/android/camera/module/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;

.field final synthetic val$burstNum:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;I)V
    .locals 0

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iput p2, p0, Lcom/android/camera/module/CameraModule$4;->val$burstNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2662
    iget v4, p0, Lcom/android/camera/module/CameraModule$4;->val$burstNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2663
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2664
    .local v3, "toastStart":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e011f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2665
    .local v2, "toastEnd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/module/CameraModule$4;->val$burstNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2666
    .local v1, "toastContent":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2667
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2669
    .end local v0    # "toast":Landroid/widget/Toast;
    .end local v1    # "toastContent":Ljava/lang/String;
    .end local v2    # "toastEnd":Ljava/lang/String;
    .end local v3    # "toastStart":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v4, v4, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v4, :cond_1

    .line 2670
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 2671
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v5, 0x0

    # setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/camera/module/CameraModule;->access$4002(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 2672
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    # setter for: Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z
    invoke-static {v4, v6}, Lcom/android/camera/module/CameraModule;->access$5002(Lcom/android/camera/module/CameraModule;Z)Z

    .line 2673
    return-void
.end method

.class Lcom/android/camera/module/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mPreviewing:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1500(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->onDevicePostureChanged()V

    .line 749
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 6
    .param p1, "a"    # D

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1702(Lcom/android/camera/module/VideoModule;Z)Z

    .line 730
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->onDeviceKeepMoving()V

    .line 732
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)V

    .line 734
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 738
    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 0
    .param p1, "orientation"    # F
    .param p2, "isLying"    # Z

    .prologue
    .line 745
    return-void
.end method

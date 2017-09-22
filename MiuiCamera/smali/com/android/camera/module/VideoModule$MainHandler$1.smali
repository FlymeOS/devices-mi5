.class Lcom/android/camera/module/VideoModule$MainHandler$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/VideoModule$MainHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule$MainHandler;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x96

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6RecordingTimeView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1000(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1102(Lcom/android/camera/module/VideoModule;I)I

    .line 366
    :cond_1
    return-void
.end method

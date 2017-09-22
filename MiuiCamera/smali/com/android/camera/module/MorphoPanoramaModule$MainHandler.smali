.class Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
.super Landroid/os/Handler;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/module/MorphoPanoramaModule$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 222
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->ignoreTouchEvent(Z)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->onOpenCameraException()V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 242
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 244
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->initCommenConfig()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$300(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto :goto_0

    .line 248
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x0

    # setter for: Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$402(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 249
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 250
    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 252
    .local v0, "style":I
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    if-eq v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput v0, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    .line 254
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->changePreviewSurfaceSize()V

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->initPreviewLayout()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$500(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 257
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V
    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$600(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 258
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    .line 262
    .end local v0    # "style":I
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$700(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    # invokes: Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V
    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$800(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

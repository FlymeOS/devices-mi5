.class Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/V6GestureRecognizer$1;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/16 v2, 0x9

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "zoom_gesture_times"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/module/Module;->onScale(FFF)Z

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onScaleEnd()V

    .line 309
    return-void
.end method

.class Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"

# interfaces
.implements Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEdgeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/V6GestureRecognizer$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onEdgeTap(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 316
    const-string v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyEdgeGestureListener onEdgeTap x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "CameraGestureRecognizer"

    const-string v1, "EdgeGesture detectTap sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6EdgeShutterView;->onEdgeTap(II)Z

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeTouch(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 328
    const-string v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyEdgeGestureListener onEdgeTouch x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "CameraGestureRecognizer"

    const-string v1, "EdgeGesture detectTouch sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6EdgeShutterView;->onEdgeTouch(II)Z

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

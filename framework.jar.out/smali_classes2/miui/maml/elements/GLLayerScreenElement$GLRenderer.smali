.class Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/GLLayerScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/GLLayerScreenElement$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$600(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$600(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 95
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 99
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$300(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$400(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 84
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$500(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 85
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$300(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 86
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 72
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$100(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$100(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 75
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

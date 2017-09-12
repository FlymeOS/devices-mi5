.class Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/GLLayerScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/GLLayerScreenElement$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$700(Lmiui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 112
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 107
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 117
    return-void
.end method

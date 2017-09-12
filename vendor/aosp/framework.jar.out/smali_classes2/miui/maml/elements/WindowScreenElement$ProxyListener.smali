.class Lmiui/maml/elements/WindowScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/WindowScreenElement;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/WindowScreenElement;Lmiui/maml/elements/WindowScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/WindowScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/WindowScreenElement$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lmiui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    # getter for: Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;
    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->access$200(Lmiui/maml/elements/WindowScreenElement;)Lmiui/maml/elements/WindowScreenElement$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/WindowScreenElement$WindowView;->postInvalidate()V

    .line 107
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WindowScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 117
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WindowScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 112
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/WindowScreenElement;->doTick(J)V

    .line 102
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WindowScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 122
    return-void
.end method

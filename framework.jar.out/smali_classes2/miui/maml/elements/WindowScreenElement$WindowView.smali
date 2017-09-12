.class Lmiui/maml/elements/WindowScreenElement$WindowView;
.super Landroid/view/View;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/WindowScreenElement;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$WindowView;->this$0:Lmiui/maml/elements/WindowScreenElement;

    .line 80
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$WindowView;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WindowScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$WindowView;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WindowScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$WindowView;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WindowScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

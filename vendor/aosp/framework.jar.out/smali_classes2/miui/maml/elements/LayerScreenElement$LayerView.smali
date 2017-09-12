.class Lmiui/maml/elements/LayerScreenElement$LayerView;
.super Landroid/view/View;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/LayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/LayerScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/LayerScreenElement;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    .line 24
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/LayerScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 30
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/LayerScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 31
    return-void
.end method

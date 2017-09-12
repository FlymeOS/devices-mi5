.class public abstract Lmiui/maml/elements/ElementGroupRC;
.super Lmiui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field protected mController:Lmiui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 17
    const-string v0, "frameRate"

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 19
    iget v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 20
    new-instance v0, Lmiui/maml/RendererController;

    invoke-direct {v0}, Lmiui/maml/RendererController;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    .line 21
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->onControllerCreated(Lmiui/maml/RendererController;)V

    .line 22
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 29
    iget v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->requestFramerate(F)V

    .line 30
    return-void
.end method

.method protected abstract onControllerCreated(Lmiui/maml/RendererController;)V
.end method

.class public Lmiui/maml/elements/CanvasDrawerElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "CanvasDrawerElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lmiui/maml/data/IndexedVariable;

.field private mDrawCommands:Lmiui/maml/CommandTrigger;

.field private mHVar:Lmiui/maml/data/IndexedVariable;

.field private mWVar:Lmiui/maml/data/IndexedVariable;

.field private mXVar:Lmiui/maml/data/IndexedVariable;

.field private mYVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 32
    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string v2, "draw"

    invoke-virtual {v1, v2}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    .line 35
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-nez v1, :cond_1

    .line 36
    const-string v1, "CanvasDrawer"

    const-string v2, "no draw commands."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 39
    .local v0, "vars":Lmiui/maml/data/Variables;
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__x"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    .line 40
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__y"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    .line 41
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__w"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    .line 42
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__h"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    .line 43
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__objCanvas"

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    .line 44
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getWidthRaw()F

    move-result v1

    .line 50
    .local v1, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getHeightRaw()F

    move-result v0

    .line 51
    .local v0, "h":F
    invoke-virtual {p0, v5, v1}, Lmiui/maml/elements/CanvasDrawerElement;->getLeft(FF)F

    move-result v2

    .line 52
    .local v2, "x":F
    invoke-virtual {p0, v5, v0}, Lmiui/maml/elements/CanvasDrawerElement;->getTop(FF)F

    move-result v3

    .line 53
    .local v3, "y":F
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 54
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 55
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 56
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v0

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 57
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 58
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    .line 59
    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 61
    .end local v0    # "h":F
    .end local v1    # "w":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    return-void
.end method

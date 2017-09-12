.class public Lmiui/maml/elements/MirrorScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "MirrorScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Mirror"


# instance fields
.field private mMirrorTranslation:Z

.field private mTarget:Lmiui/maml/elements/ScreenElement;

.field private mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 22
    const-string v0, "mirrorTranslation"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    if-eqz v0, :cond_0

    .line 37
    iget-boolean v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    instance-of v0, v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 28
    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    .line 29
    iget-object v0, p0, Lmiui/maml/elements/MirrorScreenElement;->mTarget:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "MirrorScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the target does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

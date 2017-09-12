.class public Lmiui/maml/shader/RadialGradientElement;
.super Lmiui/maml/shader/ShaderElement;
.source "RadialGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "RadialGradient"


# instance fields
.field private mRx:F

.field private mRxExp:Lmiui/maml/data/Expression;

.field private mRy:F

.field private mRyExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    invoke-virtual {p0}, Lmiui/maml/shader/RadialGradientElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "rX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/RadialGradientElement;->mRxExp:Lmiui/maml/data/Expression;

    .line 22
    invoke-virtual {p0}, Lmiui/maml/shader/RadialGradientElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "rY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/RadialGradientElement;->mRyExp:Lmiui/maml/data/Expression;

    .line 24
    iget-object v0, p0, Lmiui/maml/shader/RadialGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 25
    return-void
.end method

.method private final getRx()F
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRxExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRxExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 66
    .local v0, "rX":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 65
    .end local v0    # "rX":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final getRy()F
    .locals 4

    .prologue
    .line 70
    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRyExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRyExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 71
    .local v0, "rY":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 70
    .end local v0    # "rY":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lmiui/maml/shader/RadialGradientElement;->mX:F

    .line 34
    iput v1, p0, Lmiui/maml/shader/RadialGradientElement;->mY:F

    .line 35
    iput v3, p0, Lmiui/maml/shader/RadialGradientElement;->mRx:F

    .line 36
    iput v3, p0, Lmiui/maml/shader/RadialGradientElement;->mRy:F

    .line 38
    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v2}, Lmiui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v4

    iget-object v2, p0, Lmiui/maml/shader/RadialGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v2}, Lmiui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/shader/RadialGradientElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmiui/maml/shader/RadialGradientElement;->mShader:Landroid/graphics/Shader;

    .line 40
    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 7

    .prologue
    .line 44
    invoke-virtual {p0}, Lmiui/maml/shader/RadialGradientElement;->getX()F

    move-result v2

    .line 45
    .local v2, "x":F
    invoke-virtual {p0}, Lmiui/maml/shader/RadialGradientElement;->getY()F

    move-result v3

    .line 46
    .local v3, "y":F
    invoke-direct {p0}, Lmiui/maml/shader/RadialGradientElement;->getRx()F

    move-result v0

    .line 47
    .local v0, "rX":F
    invoke-direct {p0}, Lmiui/maml/shader/RadialGradientElement;->getRy()F

    move-result v1

    .line 48
    .local v1, "rY":F
    iget v4, p0, Lmiui/maml/shader/RadialGradientElement;->mX:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_0

    iget v4, p0, Lmiui/maml/shader/RadialGradientElement;->mY:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    iget v4, p0, Lmiui/maml/shader/RadialGradientElement;->mRx:F

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    iget v4, p0, Lmiui/maml/shader/RadialGradientElement;->mRy:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 49
    :cond_0
    iput v2, p0, Lmiui/maml/shader/RadialGradientElement;->mX:F

    .line 50
    iput v3, p0, Lmiui/maml/shader/RadialGradientElement;->mY:F

    .line 51
    iput v0, p0, Lmiui/maml/shader/RadialGradientElement;->mRx:F

    .line 52
    iput v1, p0, Lmiui/maml/shader/RadialGradientElement;->mRy:F

    .line 54
    iget-object v4, p0, Lmiui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 55
    iget-object v4, p0, Lmiui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    neg-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    iget-object v4, p0, Lmiui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    iget-object v4, p0, Lmiui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    const/4 v4, 0x1

    .line 61
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

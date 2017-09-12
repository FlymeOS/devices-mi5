.class public abstract Lmiui/maml/shader/ShaderElement;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/shader/ShaderElement$GradientStops;,
        Lmiui/maml/shader/ShaderElement$GradientStop;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShaderElement"


# instance fields
.field protected mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mShader:Landroid/graphics/Shader;

.field protected mShaderMatrix:Landroid/graphics/Matrix;

.field protected mTileMode:Landroid/graphics/Shader$TileMode;

.field protected mX:F

.field protected mXExp:Lmiui/maml/data/Expression;

.field protected mY:F

.field protected mYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 114
    new-instance v1, Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-direct {v1, p0}, Lmiui/maml/shader/ShaderElement$GradientStops;-><init>(Lmiui/maml/shader/ShaderElement;)V

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    .line 117
    iput-object p2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 118
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 119
    .local v0, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v1, "x"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    .line 120
    const-string/jumbo v1, "y"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    .line 121
    const-string v1, "tile"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapShader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;->loadGradientStops(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 125
    :cond_0
    return-void
.end method

.method public static getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "strTile"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v0, "mirror"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0
.end method

.method private loadGradientStops(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 145
    const-string v3, "GradientStop"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 146
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 147
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 148
    .local v0, "ele":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    new-instance v4, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-direct {v4, p0, v0, p2}, Lmiui/maml/shader/ShaderElement$GradientStop;-><init>(Lmiui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Lmiui/maml/shader/ShaderElement$GradientStops;->add(Lmiui/maml/shader/ShaderElement$GradientStop;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "ele":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 151
    const-string v3, "ShaderElement"

    const-string v4, "lost gradient stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_1
    return-void

    .line 154
    :cond_1
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStops;->init()V

    goto :goto_1
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method protected getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 159
    .local v0, "x":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 158
    .end local v0    # "x":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 164
    .local v0, "y":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 163
    .end local v0    # "y":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public abstract onGradientStopsChanged()V
.end method

.method public updateShader()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 172
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement;->updateShaderMatrix()Z

    move-result v0

    .line 173
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lmiui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 176
    :cond_0
    return-void
.end method

.method public abstract updateShaderMatrix()Z
.end method

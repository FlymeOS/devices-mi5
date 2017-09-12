.class public Lmiui/maml/elements/CircleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 19
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/CircleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    .line 20
    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 21
    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 22
    return-void
.end method

.method private final getRadius()F
    .locals 4

    .prologue
    .line 38
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    .line 39
    .local v0, "r":F
    :goto_0
    float-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/CircleScreenElement;->scale(D)F

    move-result v1

    return v1

    .line 38
    .end local v0    # "r":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lmiui/maml/elements/CircleScreenElement;->getRadius()F

    move-result v0

    .line 29
    .local v0, "r":F
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_1

    .line 30
    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 34
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 35
    return-void

    .line 31
    :cond_1
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_0

    .line 32
    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_0
.end method

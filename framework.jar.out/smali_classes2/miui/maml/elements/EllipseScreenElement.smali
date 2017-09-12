.class public Lmiui/maml/elements/EllipseScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 17
    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 18
    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 19
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 23
    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getWidth()F

    move-result v3

    .line 24
    .local v3, "width":F
    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getHeight()F

    move-result v0

    .line 25
    .local v0, "height":F
    cmpg-float v4, v3, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v0, v5

    if-gez v4, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_3

    .line 30
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v3, v4

    .line 31
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v0, v4

    .line 39
    :cond_2
    div-float v4, v3, v6

    sub-float v1, v5, v4

    .line 40
    .local v1, "left":F
    div-float v4, v0, v6

    sub-float v2, v5, v4

    .line 41
    .local v2, "top":F
    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v3

    add-float v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lmiui/maml/elements/EllipseScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 32
    .end local v1    # "left":F
    .end local v2    # "top":F
    :cond_3
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_2

    .line 33
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v3, v4

    .line 34
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v0, v4

    .line 35
    cmpg-float v4, v3, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v0, v5

    if-gez v4, :cond_2

    goto :goto_0
.end method

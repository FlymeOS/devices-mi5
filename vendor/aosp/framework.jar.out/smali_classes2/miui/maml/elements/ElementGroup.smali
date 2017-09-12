.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ElementGroup$1;,
        Lmiui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 48
    iput-object p2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 43
    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 44
    return-void
.end method

.method public static createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;
    .locals 1
    .param p0, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p1, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    .line 52
    new-instance v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/ElementGroup;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z
    .locals 1
    .param p0, "se"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 56
    instance-of v0, p0, Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/maml/elements/ElementGroup;

    .end local p0    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 84
    :cond_0
    return-void

    .line 66
    :cond_1
    const-string v5, "clip"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 67
    const-string v5, "layered"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    .line 69
    const-string v5, "linear"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "linear":Ljava/lang/String;
    const-string v5, "h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 71
    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 76
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 77
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 78
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 79
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 80
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 81
    .local v3, "item":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 78
    .end local v3    # "item":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "N":I
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_4
    const-string v5, "v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_0
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 3
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 437
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 438
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 439
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 440
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "newElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 89
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 211
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v9

    .line 212
    .local v9, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v7

    .line 213
    .local v7, "h":F
    invoke-virtual {p0, v10, v9}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v1

    .line 214
    .local v1, "x":F
    invoke-virtual {p0, v10, v7}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v2

    .line 215
    .local v2, "y":F
    const/4 v8, 0x0

    .line 216
    .local v8, "rs":I
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v0, :cond_1

    cmpl-float v0, v9, v10

    if-lez v0, :cond_1

    cmpl-float v0, v7, v10

    if-lez v0, :cond_1

    .line 217
    add-float v3, v1, v9

    add-float v4, v2, v7

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    .line 221
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    cmpl-float v0, v9, v10

    if-lez v0, :cond_0

    cmpl-float v0, v7, v10

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1, v10, v10, v9, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 228
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    goto :goto_0
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 233
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 234
    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 236
    :cond_0
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 243
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTickChildren(J)V

    .line 244
    return-void
.end method

.method protected doTickChildren(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 247
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    .local v0, "N":I
    const/4 v2, 0x0

    .line 249
    .local v2, "currentPos":F
    const/4 v6, 0x0

    .line 250
    .local v6, "maxSize":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 251
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    .line 252
    .local v3, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_0

    .line 253
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v5

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 254
    :cond_0
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 256
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v9, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    if-eq v8, v9, :cond_1

    instance-of v8, v3, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v3

    .line 259
    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    .line 260
    .local v1, "ae":Lmiui/maml/elements/AnimatedScreenElement;
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 250
    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    .restart local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :pswitch_0
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v8

    add-float/2addr v2, v8

    .line 263
    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setX(D)V

    .line 264
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 265
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    .line 266
    .local v4, "h":F
    cmpg-float v8, v6, v4

    if-gez v8, :cond_1

    .line 267
    move v6, v4

    goto :goto_1

    .line 270
    .end local v4    # "h":F
    :pswitch_1
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v8

    add-float/2addr v2, v8

    .line 271
    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 272
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 273
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    .line 274
    .local v7, "w":F
    cmpg-float v8, v6, v7

    if-gez v8, :cond_1

    .line 275
    move v6, v7

    goto :goto_1

    .line 281
    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    .end local v3    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v7    # "w":F
    :cond_2
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 295
    :goto_2
    return-void

    .line 283
    :pswitch_2
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    .line 284
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    .line 285
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    .line 286
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    goto :goto_2

    .line 289
    :pswitch_3
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    .line 290
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    .line 291
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    .line 292
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_2

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 418
    .local v1, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 428
    :goto_0
    return-object v3

    .line 421
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 422
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 423
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 425
    goto :goto_0

    .line 422
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 391
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 393
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 397
    :try_start_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MAML_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getChild(I)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    goto :goto_0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method protected getParentTop()F
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 110
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 112
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 116
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayered()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 105
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v5

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v4

    .line 353
    .local v4, "touched":Z
    iget-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    .line 354
    iget-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    if-eqz v6, :cond_0

    .line 360
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 363
    :cond_2
    const/4 v3, 0x0

    .line 364
    .local v3, "ret":Z
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 365
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 366
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 367
    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_3

    .line 368
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 369
    :cond_3
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    const/4 v3, 0x1

    .line 375
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    if-eqz v3, :cond_6

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    .line 376
    iget-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    goto :goto_0

    .line 365
    .restart local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 375
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_6
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 299
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    .line 344
    :goto_0
    return v7

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 303
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v6

    .line 304
    .local v6, "touched":Z
    iget-boolean v9, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    .line 305
    iget-boolean v9, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v9, :cond_1

    move v7, v8

    .line 307
    goto :goto_0

    .line 311
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 314
    :cond_2
    const/4 v4, 0x0

    .line 315
    .local v4, "ret":Z
    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    .local v0, "N":I
    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9}, Lmiui/maml/ScreenElementRoot;->version()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    move v5, v7

    .line 319
    .local v5, "reverse":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 321
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 322
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 323
    .local v2, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_3

    .line 324
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v3

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 325
    :cond_3
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 326
    const/4 v4, 0x1

    .line 341
    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 343
    if-eqz v4, :cond_a

    :goto_4
    iput-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    .line 344
    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    goto :goto_0

    .end local v3    # "i":I
    .end local v5    # "reverse":Z
    :cond_5
    move v5, v8

    .line 318
    goto :goto_1

    .line 321
    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .restart local v3    # "i":I
    .restart local v5    # "reverse":Z
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 331
    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_4

    .line 332
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 333
    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_8

    .line 334
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v3

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 335
    :cond_8
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 336
    const/4 v4, 0x1

    .line 337
    goto :goto_3

    .line 331
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 343
    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_a
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_4
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 446
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 447
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 448
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 449
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 178
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 148
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 134
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 136
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_1

    .line 138
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, v10

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 140
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 137
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 101
    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "element"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 96
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 168
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 188
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 158
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 6
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 126
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 128
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 455
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 409
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 410
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method

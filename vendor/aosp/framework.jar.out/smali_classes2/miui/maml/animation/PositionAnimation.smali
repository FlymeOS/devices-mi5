.class public Lmiui/maml/animation/PositionAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 13
    const-string v0, "Position"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final getX()D
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

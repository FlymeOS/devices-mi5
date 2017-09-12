.class public Lmiui/maml/elements/CurveScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CurveScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Curve"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    .line 20
    return-void
.end method

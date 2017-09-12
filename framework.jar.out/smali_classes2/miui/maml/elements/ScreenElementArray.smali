.class public Lmiui/maml/elements/ScreenElementArray;
.super Lmiui/maml/elements/ElementGroup;
.source "ScreenElementArray.java"


# static fields
.field private static final DEF_INDEX_VAR_NAME:Ljava/lang/String; = "__i"

.field public static final TAG_NAME:Ljava/lang/String; = "Array"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 26
    const-string v4, "count"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    .line 27
    .local v1, "count":I
    move-object v0, p2

    .line 28
    .local v0, "_root":Lmiui/maml/ScreenElementRoot;
    const-string v4, "indexName"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "indexVarName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const-string v3, "__i"

    .line 32
    :cond_0
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElementArray;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    .line 33
    .local v2, "indexVar":Lmiui/maml/data/IndexedVariable;
    const/4 v4, 0x0

    new-instance v5, Lmiui/maml/elements/ScreenElementArray$1;

    invoke-direct {v5, p0, v1, v0, v2}, Lmiui/maml/elements/ScreenElementArray$1;-><init>(Lmiui/maml/elements/ScreenElementArray;ILmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$001(Lmiui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/ScreenElementArray;
    .param p1, "x1"    # Lorg/w3c/dom/Element;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

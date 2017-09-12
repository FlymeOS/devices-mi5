.class public Lmiui/maml/util/StyleHelper;
.super Ljava/lang/Object;
.source "StyleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "style"    # Lmiui/maml/StylesManager$Style;

    .prologue
    .line 12
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 18
    :goto_0
    return-object v1

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2, p1}, Lmiui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

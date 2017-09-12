.class public Lmiui/maml/StylesManager$Style;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/StylesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Style"


# instance fields
.field private base:Lmiui/maml/StylesManager$Style;

.field private mAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/StylesManager;


# direct methods
.method public constructor <init>(Lmiui/maml/StylesManager;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p2, "style"    # Lorg/w3c/dom/Element;

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/maml/StylesManager$Style;->this$0:Lmiui/maml/StylesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 35
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 36
    .local v2, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 37
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 38
    .local v1, "item":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "nodeName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "nodeValue":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    iput-object v4, p0, Lmiui/maml/StylesManager$Style;->name:Ljava/lang/String;

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const-string v5, "base"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    # getter for: Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;
    invoke-static {p1}, Lmiui/maml/StylesManager;->access$000(Lmiui/maml/StylesManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/StylesManager$Style;

    iput-object v5, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    goto :goto_1

    .line 45
    :cond_1
    iget-object v5, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    .end local v1    # "item":Lorg/w3c/dom/Node;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    invoke-virtual {v1, p1}, Lmiui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

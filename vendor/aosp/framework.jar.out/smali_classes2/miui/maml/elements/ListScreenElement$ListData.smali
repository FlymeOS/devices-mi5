.class public Lmiui/maml/elements/ListScreenElement$ListData;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListData"
.end annotation


# instance fields
.field public mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$Column;",
            ">;"
        }
    .end annotation
.end field

.field public mList:Lmiui/maml/elements/ListScreenElement;

.field public mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "list"    # Lmiui/maml/elements/ListScreenElement;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 295
    iput-object p2, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 296
    iput-object p3, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lmiui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V

    .line 300
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 303
    const-string v0, "Column"

    new-instance v1, Lmiui/maml/elements/ListScreenElement$ListData$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/ListScreenElement$ListData$1;-><init>(Lmiui/maml/elements/ListScreenElement$ListData;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 309
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 320
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement$Column;

    .line 321
    .local v0, "column":Lmiui/maml/elements/ListScreenElement$Column;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$Column;->finish()V

    goto :goto_0

    .line 325
    .end local v0    # "column":Lmiui/maml/elements/ListScreenElement$Column;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 312
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement$Column;

    .line 313
    .local v0, "column":Lmiui/maml/elements/ListScreenElement$Column;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$Column;->init()V

    goto :goto_0

    .line 317
    .end local v0    # "column":Lmiui/maml/elements/ListScreenElement$Column;
    :cond_1
    return-void
.end method

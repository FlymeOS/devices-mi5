.class public Lmiui/maml/StylesManager;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/StylesManager$Style;
    }
.end annotation


# instance fields
.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/StylesManager$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "styles"    # Lorg/w3c/dom/Element;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 18
    const-string v0, "Style"

    new-instance v1, Lmiui/maml/StylesManager$1;

    invoke-direct {v1, p0}, Lmiui/maml/StylesManager$1;-><init>(Lmiui/maml/StylesManager;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/StylesManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/StylesManager;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/StylesManager$Style;

    return-object v0
.end method

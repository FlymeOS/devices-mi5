.class public Lorg/htmlparser/scanners/StyleScanner;
.super Lorg/htmlparser/scanners/CompositeTagScanner;
.source "StyleScanner.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NF()Lorg/htmlparser/a;

    move-result-object v3

    .line 72
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v4

    .line 73
    invoke-virtual {p2, v6}, Lorg/htmlparser/lexer/Lexer;->cX(Z)Lorg/htmlparser/a;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->Nq()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 76
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/htmlparser/d;->Ns()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2, v4}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    move-object v1, v2

    .line 83
    :cond_1
    if-nez v1, :cond_2

    .line 85
    new-instance v0, Lorg/htmlparser/Attribute;

    const-string v1, "/style"

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    .line 89
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    .line 88
    invoke-interface {v0, v2, v4, v4, v1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;

    move-result-object v1

    :cond_2
    move-object v0, v1

    .line 91
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    .line 92
    if-eqz v3, :cond_3

    .line 94
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0, v3}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/a;)V

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->a(Lorg/htmlparser/util/NodeList;)V

    .line 95
    invoke-interface {v3, p1}, Lorg/htmlparser/a;->b(Lorg/htmlparser/a;)V

    .line 97
    :cond_3
    invoke-interface {v1, p1}, Lorg/htmlparser/a;->b(Lorg/htmlparser/a;)V

    .line 98
    invoke-interface {p1}, Lorg/htmlparser/d;->Ng()V

    .line 100
    return-object p1
.end method

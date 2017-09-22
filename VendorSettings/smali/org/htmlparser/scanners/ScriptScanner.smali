.class public Lorg/htmlparser/scanners/ScriptScanner;
.super Lorg/htmlparser/scanners/CompositeTagScanner;
.source "ScriptScanner.java"


# static fields
.field public static btE:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/scanners/ScriptScanner;->btE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    instance-of v0, p1, Lorg/htmlparser/tags/ScriptTag;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 102
    check-cast v0, Lorg/htmlparser/tags/ScriptTag;

    invoke-virtual {v0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    const-string v1, "JScript.Encode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "VBScript.Encode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NC()Lorg/htmlparser/lexer/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/htmlparser/scanners/b;->a(Lorg/htmlparser/lexer/Page;Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    .line 108
    check-cast v0, Lorg/htmlparser/tags/ScriptTag;

    invoke-virtual {v0, v1}, Lorg/htmlparser/tags/ScriptTag;->fn(Ljava/lang/String;)V

    .line 111
    :cond_1
    sget-boolean v0, Lorg/htmlparser/scanners/ScriptScanner;->btE:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Lorg/htmlparser/lexer/Lexer;->cY(Z)Lorg/htmlparser/a;

    move-result-object v4

    .line 112
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v5

    .line 113
    invoke-virtual {p2, v2}, Lorg/htmlparser/lexer/Lexer;->cX(Z)Lorg/htmlparser/a;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->Nq()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 116
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/htmlparser/d;->Ns()[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_2
    invoke-virtual {p2, v5}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    move-object v1, v3

    .line 123
    :cond_3
    if-nez v1, :cond_4

    .line 125
    new-instance v0, Lorg/htmlparser/Attribute;

    const-string v1, "/script"

    invoke-direct {v0, v1, v3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    .line 128
    invoke-interface {v0, v2, v5, v5, v1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;

    move-result-object v1

    :cond_4
    move-object v0, v1

    .line 131
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    .line 132
    if-eqz v4, :cond_5

    .line 134
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0, v4}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/a;)V

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->a(Lorg/htmlparser/util/NodeList;)V

    .line 135
    invoke-interface {v4, p1}, Lorg/htmlparser/a;->b(Lorg/htmlparser/a;)V

    .line 137
    :cond_5
    invoke-interface {v1, p1}, Lorg/htmlparser/a;->b(Lorg/htmlparser/a;)V

    .line 138
    invoke-interface {p1}, Lorg/htmlparser/d;->Ng()V

    .line 140
    return-object p1

    .line 111
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

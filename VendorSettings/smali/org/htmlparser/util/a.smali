.class public Lorg/htmlparser/util/a;
.super Ljava/lang/Object;
.source "IteratorImpl.java"

# interfaces
.implements Lorg/htmlparser/util/b;


# instance fields
.field mCursor:Lorg/htmlparser/lexer/Cursor;

.field mFeedback:Lorg/htmlparser/util/d;

.field mLexer:Lorg/htmlparser/lexer/Lexer;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/d;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    .line 45
    iput-object p2, p0, Lorg/htmlparser/util/a;->mFeedback:Lorg/htmlparser/util/d;

    .line 46
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    iget-object v1, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    iput-object v0, p0, Lorg/htmlparser/util/a;->mCursor:Lorg/htmlparser/lexer/Cursor;

    .line 47
    return-void
.end method


# virtual methods
.method public NE()Lorg/htmlparser/a;
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->NE()Lorg/htmlparser/a;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 81
    instance-of v1, v2, Lorg/htmlparser/d;

    if-eqz v1, :cond_0

    .line 83
    move-object v0, v2

    check-cast v0, Lorg/htmlparser/d;

    move-object v1, v0

    .line 84
    invoke-interface {v1}, Lorg/htmlparser/d;->Nq()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-interface {v1}, Lorg/htmlparser/d;->Nw()Lorg/htmlparser/scanners/a;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    .line 90
    new-instance v2, Lorg/htmlparser/util/NodeList;

    invoke-direct {v2}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 91
    iget-object v4, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-interface {v3, v1, v4, v2}, Lorg/htmlparser/scanners/a;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 113
    :cond_0
    return-object v2

    .line 97
    :catch_0
    move-exception v1

    .line 99
    throw v1

    .line 101
    :catch_1
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    const-string v3, "Unexpected Exception occurred while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v3, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v3, ", in nextNode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    new-instance v3, Lorg/htmlparser/util/ParserException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v1, p0, Lorg/htmlparser/util/a;->mFeedback:Lorg/htmlparser/util/d;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lorg/htmlparser/util/d;->a(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V

    .line 110
    throw v3
.end method

.method public Om()Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lorg/htmlparser/util/a;->mCursor:Lorg/htmlparser/lexer/Cursor;

    iget-object v1, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 58
    const v0, 0xffff

    iget-object v1, p0, Lorg/htmlparser/util/a;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/util/a;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

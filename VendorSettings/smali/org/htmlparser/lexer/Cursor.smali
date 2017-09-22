.class public Lorg/htmlparser/lexer/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/htmlparser/util/a/a;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected mPosition:I


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    .line 64
    iput p2, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 65
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 169
    check-cast p1, Lorg/htmlparser/lexer/Cursor;

    .line 170
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public Ny()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 108
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    if-gez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 110
    :cond_0
    return-void
.end method

.method public advance()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 100
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/Page;->e(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/Page;->f(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 149
    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.class public Lorg/htmlparser/nodes/TextNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "TextNode.java"

# interfaces
.implements Lorg/htmlparser/e;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;II)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/nodes/AbstractNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    .line 117
    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->Ne()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x4d

    .line 139
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->getStartPosition()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->Ne()I

    move-result v1

    .line 141
    new-instance v2, Ljava/lang/StringBuffer;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 142
    iget-object v3, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 144
    new-instance v3, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 145
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TextNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 146
    const-string v4, "Txt ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 150
    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_0
    invoke-virtual {v3}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v0, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 156
    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt v5, v0, :cond_0

    .line 177
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    :pswitch_1
    :try_start_1
    const-string v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    goto :goto_1

    .line 162
    :pswitch_2
    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 165
    :pswitch_3
    const-string v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 184
    :cond_3
    const-string v3, "Txt ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 192
    packed-switch v1, :pswitch_data_1

    .line 204
    :pswitch_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v5, v1, :cond_4

    .line 208
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 195
    :pswitch_5
    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 198
    :pswitch_6
    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 201
    :pswitch_7
    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 189
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 192
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

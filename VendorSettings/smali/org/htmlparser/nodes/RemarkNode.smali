.class public Lorg/htmlparser/nodes/RemarkNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "RemarkNode.java"

# interfaces
.implements Lorg/htmlparser/c;


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

    iput-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->getStartPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 88
    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->Ne()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 89
    if-lt v0, v1, :cond_0

    .line 90
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/nodes/RemarkNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v2, v0, v1}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->Ne()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x4d

    .line 164
    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->getStartPosition()I

    move-result v0

    .line 165
    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->Ne()I

    move-result v1

    .line 166
    new-instance v2, Ljava/lang/StringBuffer;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 167
    iget-object v3, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 169
    new-instance v3, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 170
    new-instance v4, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/RemarkNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 171
    const-string v5, "Rem ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 173
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 175
    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v3, v0}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 177
    add-int/lit8 v0, v1, -0x3

    .line 178
    :cond_0
    invoke-virtual {v3}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 241
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 183
    packed-switch v1, :pswitch_data_0

    .line 195
    :pswitch_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v6, v1, :cond_0

    .line 204
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 186
    :pswitch_1
    :try_start_1
    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    goto :goto_1

    .line 189
    :pswitch_2
    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 192
    :pswitch_3
    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 211
    :cond_3
    const-string v3, "Rem ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 213
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 219
    packed-switch v1, :pswitch_data_1

    .line 231
    :pswitch_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v6, v1, :cond_4

    .line 235
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 222
    :pswitch_5
    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 225
    :pswitch_6
    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 228
    :pswitch_7
    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 216
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 219
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

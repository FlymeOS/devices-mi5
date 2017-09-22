.class public Lorg/htmlparser/scanners/CompositeTagScanner;
.super Lorg/htmlparser/scanners/TagScanner;
.source "CompositeTagScanner.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/htmlparser/scanners/TagScanner;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method protected a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/lexer/Page;I)Lorg/htmlparser/d;
    .locals 4

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/htmlparser/d;->Np()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 331
    new-instance v2, Lorg/htmlparser/Attribute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    invoke-interface {v0, p3, p4, p4, v1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;

    move-result-object v0

    .line 335
    return-object v0
.end method

.method public a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 108
    .line 110
    invoke-interface {p1}, Lorg/htmlparser/d;->Nr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1, p1}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    .line 274
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V

    .line 276
    return-object p1

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/htmlparser/lexer/Lexer;->cX(Z)Lorg/htmlparser/a;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_1

    .line 118
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_f

    move-object v0, v1

    .line 120
    check-cast v0, Lorg/htmlparser/d;

    .line 121
    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-interface {v0}, Lorg/htmlparser/d;->Nq()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-interface {p1, v0}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    move-object v1, v5

    .line 246
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    .line 249
    if-eqz v2, :cond_2

    .line 251
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p3, v0}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v1

    .line 252
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_11

    move-object v0, v1

    .line 254
    check-cast v0, Lorg/htmlparser/d;

    .line 255
    invoke-interface {v0}, Lorg/htmlparser/d;->Nw()Lorg/htmlparser/scanners/a;

    move-result-object v3

    .line 256
    if-ne v3, p0, :cond_10

    .line 258
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Lorg/htmlparser/util/NodeList;->fL(I)Lorg/htmlparser/a;

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V

    .line 260
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    move-object p1, v0

    .line 272
    :cond_2
    :goto_2
    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/d;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-interface {v0}, Lorg/htmlparser/d;->getStartPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    move-object v1, v5

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-interface {v0}, Lorg/htmlparser/d;->Nq()Z

    move-result v2

    if-nez v2, :cond_8

    .line 137
    invoke-interface {v0}, Lorg/htmlparser/d;->Nw()Lorg/htmlparser/scanners/a;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_7

    .line 148
    if-ne v2, p0, :cond_6

    .line 150
    invoke-interface {v0}, Lorg/htmlparser/d;->Nr()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    invoke-interface {v0, v0}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    .line 153
    invoke-virtual {p0, v0, p2}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V

    .line 154
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {p3, p1}, Lorg/htmlparser/util/NodeList;->c(Lorg/htmlparser/a;)V

    move-object p1, v0

    .line 161
    goto :goto_1

    .line 164
    :cond_6
    invoke-interface {v2, v0, p2, p3}, Lorg/htmlparser/scanners/a;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;

    move-result-object v1

    .line 165
    invoke-virtual {p0, p1, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    goto :goto_1

    .line 170
    :cond_7
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    goto :goto_1

    .line 193
    :cond_8
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 194
    new-instance v3, Lorg/htmlparser/Attribute;

    invoke-direct {v3, v7, v5}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v3

    .line 196
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-interface {v0}, Lorg/htmlparser/d;->getStartPosition()I

    move-result v8

    invoke-interface {v0}, Lorg/htmlparser/d;->Ne()I

    move-result v9

    .line 195
    invoke-interface {v3, v4, v8, v9, v2}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;

    move-result-object v2

    .line 199
    invoke-interface {v2}, Lorg/htmlparser/d;->Nw()Lorg/htmlparser/scanners/a;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_e

    if-ne v2, p0, :cond_e

    .line 204
    invoke-virtual {p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v4, v6

    :goto_3
    if-ne v6, v4, :cond_9

    if-gez v3, :cond_a

    .line 214
    :cond_9
    if-eq v6, v4, :cond_d

    .line 217
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V

    .line 218
    invoke-virtual {p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    .line 219
    invoke-virtual {p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4
    if-gt v2, v4, :cond_c

    .line 225
    invoke-virtual {p3, v4}, Lorg/htmlparser/util/NodeList;->fL(I)Lorg/htmlparser/a;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    move-object p1, v0

    move-object v1, v5

    .line 227
    goto/16 :goto_1

    .line 208
    :cond_a
    invoke-virtual {p3, v3}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/d;

    .line 209
    invoke-interface {v2}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v2, v3

    .line 204
    :goto_5
    add-int/lit8 v3, v3, -0x1

    move v4, v2

    goto :goto_3

    .line 211
    :cond_b
    invoke-virtual {p0, v2, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/d;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v3

    .line 212
    goto :goto_5

    .line 221
    :cond_c
    invoke-virtual {p3, v2}, Lorg/htmlparser/util/NodeList;->fL(I)Lorg/htmlparser/a;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    .line 222
    invoke-virtual {p0, v0, p2}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V

    .line 223
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p3, v1}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/d;

    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    .line 219
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    .line 229
    :cond_d
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    goto/16 :goto_1

    .line 232
    :cond_e
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    goto/16 :goto_1

    .line 238
    :cond_f
    invoke-virtual {p0, p1, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V

    .line 239
    invoke-interface {v1}, Lorg/htmlparser/a;->Ng()V

    goto/16 :goto_1

    :cond_10
    move-object v1, v5

    .line 265
    goto/16 :goto_2

    :cond_11
    move-object v1, v5

    .line 267
    goto/16 :goto_2

    :cond_12
    move v2, v4

    goto :goto_5
.end method

.method protected a(Lorg/htmlparser/d;Lorg/htmlparser/a;)V
    .locals 1

    .prologue
    .line 286
    invoke-interface {p1}, Lorg/htmlparser/d;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->a(Lorg/htmlparser/util/NodeList;)V

    .line 288
    :cond_0
    invoke-interface {p2, p1}, Lorg/htmlparser/a;->b(Lorg/htmlparser/a;)V

    .line 289
    invoke-interface {p1}, Lorg/htmlparser/d;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/htmlparser/util/NodeList;->c(Lorg/htmlparser/a;)V

    .line 290
    return-void
.end method

.method protected a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;)V
    .locals 2

    .prologue
    .line 304
    invoke-interface {p1}, Lorg/htmlparser/d;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->NC()Lorg/htmlparser/lexer/Cursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/lexer/Page;I)Lorg/htmlparser/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/htmlparser/d;->b(Lorg/htmlparser/d;)V

    .line 306
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/d;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/htmlparser/d;->b(Lorg/htmlparser/a;)V

    .line 307
    invoke-interface {p1}, Lorg/htmlparser/d;->Ng()V

    .line 308
    return-void
.end method

.method public final a(Lorg/htmlparser/d;Lorg/htmlparser/d;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 354
    .line 356
    invoke-interface {p2}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-interface {p2}, Lorg/htmlparser/d;->Nq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {p1}, Lorg/htmlparser/d;->Nu()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 361
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 368
    :goto_2
    return v2

    .line 360
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/d;->Nt()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    const/4 v2, 0x1

    .line 365
    goto :goto_2

    .line 361
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

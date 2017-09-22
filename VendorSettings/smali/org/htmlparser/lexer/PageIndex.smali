.class public Lorg/htmlparser/lexer/PageIndex;
.super Ljava/lang/Object;
.source "PageIndex.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/a/c;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mCount:I

.field protected mIncrement:I

.field protected mIndices:[I

.field protected mPage:Lorg/htmlparser/lexer/Page;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 82
    iput-object p1, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    .line 83
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 85
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 86
    return-void
.end method


# virtual methods
.method public NB()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public a(ILorg/htmlparser/util/a/a;)Lorg/htmlparser/util/a/a;
    .locals 2

    .prologue
    .line 407
    if-eqz p2, :cond_0

    .line 409
    check-cast p2, Lorg/htmlparser/lexer/Cursor;

    .line 410
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v0, v0, p1

    iput v0, p2, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 411
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    iput-object v0, p2, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    .line 416
    :goto_0
    return-object p2

    .line 414
    :cond_0
    new-instance p2, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v1, v1, p1

    invoke-direct {p2, v0, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    goto :goto_0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    array-length v0, v0

    return v0
.end method

.method public e(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3

    .prologue
    .line 241
    invoke-static {p0, p1}, Lorg/htmlparser/util/a/b;->a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I

    move-result v0

    .line 246
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 249
    :cond_0
    return v0
.end method

.method public f(Lorg/htmlparser/lexer/Cursor;)I
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/PageIndex;->e(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->fI(I)I

    move-result v0

    .line 278
    :goto_0
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    sub-int v0, v1, v0

    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fI(I)I
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-lt p1, v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beyond current limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public g(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    .line 153
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget v2, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 161
    if-ne v1, v0, :cond_2

    .line 162
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    :cond_2
    if-le v1, v0, :cond_3

    .line 166
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 167
    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-static {p0, p1}, Lorg/htmlparser/util/a/b;->a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 176
    :cond_4
    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0
.end method

.method protected insertElementAt(II)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v0

    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 338
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 339
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 342
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-static {v1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    :goto_0
    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 352
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aput p1, v0, p2

    .line 353
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 354
    return-void

    .line 346
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 351
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public last()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    return v0
.end method

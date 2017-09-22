.class public Lorg/htmlparser/lexer/StringSource;
.super Lorg/htmlparser/lexer/Source;
.source "StringSource.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mEncoding:Ljava/lang/String;

.field protected mMark:I

.field protected mOffset:I

.field protected mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/htmlparser/lexer/Source;-><init>()V

    .line 82
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 84
    iput-object p2, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    .line 86
    return-void
.end method


# virtual methods
.method public NA()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 419
    const/4 v0, -0x1

    .line 423
    :goto_0
    return v0

    .line 421
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    goto :goto_0
.end method

.method public Nz()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-gtz v0, :cond_1

    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t unread no characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 299
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;II)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    add-int v0, p2, p3

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-le v0, v1, :cond_1

    .line 388
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond end of string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public fE(I)C
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt p1, v0, :cond_1

    .line 315
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond current offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    add-int v0, p1, p2

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-le v0, v1, :cond_1

    .line 364
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond end of string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 369
    return-object v0
.end method

.method public mark(I)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    .line 247
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 137
    const/4 v0, -0x1

    .line 144
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    goto :goto_0
.end method

.method public read([C)I
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/StringSource;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 166
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt v1, v0, :cond_1

    .line 167
    const/4 p3, -0x1

    .line 178
    :goto_0
    return p3

    .line 170
    :cond_1
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_2

    .line 171
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int p3, v0, v1

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 173
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    goto :goto_0
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    if-eq v0, v1, :cond_1

    .line 220
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 265
    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot skip backwards"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 272
    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt v3, v2, :cond_3

    move-wide p1, v0

    .line 276
    :cond_2
    :goto_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 280
    return-wide p1

    .line 274
    :cond_3
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v0, v2, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 275
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v0, v2, v0

    int-to-long p1, v0

    goto :goto_0
.end method

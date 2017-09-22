.class public Lorg/htmlparser/lexer/InputStreamSource;
.super Lorg/htmlparser/lexer/Source;
.source "InputStreamSource.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient bti:Ljava/io/InputStream;

.field protected transient btj:Ljava/io/InputStreamReader;

.field protected mBuffer:[C

.field protected mEncoding:Ljava/lang/String;

.field protected mLevel:I

.field protected mMark:I

.field protected mOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lorg/htmlparser/lexer/Source;-><init>()V

    .line 132
    if-nez p1, :cond_1

    .line 133
    new-instance p1, Lorg/htmlparser/lexer/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;)V

    .line 149
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    .line 150
    if-nez p2, :cond_2

    .line 152
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    .line 153
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 160
    :goto_1
    new-array v0, p3, [C

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 161
    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 162
    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 164
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lorg/htmlparser/lexer/a;

    invoke-direct {v0, p1}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0

    .line 157
    :cond_2
    iput-object p2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 206
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    .line 209
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 185
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 186
    const/16 v1, 0x1000

    new-array v1, v1, [C

    .line 187
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Lorg/htmlparser/lexer/InputStreamSource;->read([C)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 189
    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 193
    return-void
.end method


# virtual methods
.method public NA()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 681
    const/4 v0, -0x1

    .line 685
    :goto_0
    return v0

    .line 683
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_0
.end method

.method public Nz()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    if-lez v0, :cond_1

    .line 568
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 571
    return-void

    .line 570
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t unread no characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/StringBuffer;II)V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    invoke-virtual {p1, v0, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 647
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 661
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    .line 662
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 664
    :cond_0
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    .line 665
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 666
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 667
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 668
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 669
    return-void
.end method

.method protected fD(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v0, v0

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    sub-int v1, v0, v1

    .line 333
    if-ge v1, p1, :cond_2

    .line 336
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    .line 337
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    add-int/2addr v0, p1

    .line 338
    if-ge v1, v0, :cond_1

    .line 342
    :goto_0
    new-array v0, v0, [C

    .line 351
    :goto_1
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .line 352
    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 354
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    .line 368
    :cond_0
    :goto_2
    return-void

    .line 341
    :cond_1
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    sub-int p1, v1, v0

    move v0, v1

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    move p1, v1

    .line 347
    goto :goto_1

    .line 359
    :cond_3
    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    if-eq v2, v0, :cond_4

    .line 361
    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 364
    :cond_4
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    goto :goto_2
.end method

.method public fE(I)C
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 587
    new-instance v0, Ljava/io/IOException;

    const-string v1, "illegal read ahead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    aget-char v0, v0, p1

    .line 591
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    add-int v0, p1, p2

    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 627
    new-instance v0, Ljava/io/IOException;

    const-string v1, "illegal read ahead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 631
    return-object v0
.end method

.method public mark(I)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 501
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 397
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_2

    .line 399
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/InputStreamSource;->fD(I)V

    .line 402
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v0, v1, :cond_1

    .line 403
    const/4 v0, -0x1

    .line 410
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public read([C)I
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/InputStreamSource;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-gez p3, :cond_3

    .line 431
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "illegal argument read ("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_2
    const-string v0, "cbuf"

    goto :goto_0

    .line 434
    :cond_3
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_4

    .line 435
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    sub-int v0, p3, v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/InputStreamSource;->fD(I)V

    .line 436
    :cond_4
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v0, v1, :cond_5

    .line 437
    const/4 v0, -0x1

    .line 445
    :goto_1
    return v0

    .line 440
    :cond_5
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 441
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_1
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

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
    .line 471
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    if-eq v0, v1, :cond_1

    .line 474
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Lorg/htmlparser/lexer/InputStreamSource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    invoke-virtual {p0}, Lorg/htmlparser/lexer/InputStreamSource;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 266
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 267
    iget v4, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 268
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :try_start_1
    iput-object p1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 272
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/htmlparser/lexer/InputStreamSource;->btj:Ljava/io/InputStreamReader;

    .line 273
    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v2, v2

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 274
    const/4 v2, 0x0

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 275
    const/4 v2, 0x0

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 276
    const/4 v2, -0x1

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 277
    if-eqz v4, :cond_3

    .line 279
    new-array v2, v4, [C

    .line 280
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/InputStreamSource;->read([C)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 281
    new-instance v0, Lorg/htmlparser/util/ParserException;

    const-string v1, "reset stream failed"

    invoke-direct {v0, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    :try_start_2
    new-instance v1, Lorg/htmlparser/util/ParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    :catch_1
    move-exception v0

    .line 308
    new-instance v1, Lorg/htmlparser/util/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream reset failed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    const-string v3, "), try wrapping it with a org.htmlparser.lexer.Stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_0
    :try_start_3
    aget-char v5, v2, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_1

    .line 284
    new-instance v4, Lorg/htmlparser/util/EncodingChangeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "character mismatch (new: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    aget-char v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 286
    const-string v6, " [0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 287
    aget-char v2, v2, v0

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string v5, "] != old: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    const-string v5, " [0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    aget-char v5, v3, v0

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string v3, "]) for encoding change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    const-string v3, " at character offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {v4, v0, v1, p1}, Lorg/htmlparser/util/EncodingChangeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-lt v0, v4, :cond_0

    .line 314
    :cond_3
    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    .line 534
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->bti:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot skip backwards"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 541
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/InputStreamSource;->fD(I)V

    .line 542
    :cond_2
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v0, v1, :cond_3

    .line 543
    const-wide/16 v0, -0x1

    .line 551
    :goto_0
    return-wide v0

    .line 546
    :cond_3
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 547
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_0
.end method

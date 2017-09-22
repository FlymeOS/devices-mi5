.class public Lorg/htmlparser/util/a/b;
.super Ljava/lang/Object;
.source "Sort.java"


# direct methods
.method public static a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I
    .locals 2

    .prologue
    .line 439
    invoke-interface {p0}, Lorg/htmlparser/util/a/c;->first()I

    move-result v0

    invoke-interface {p0}, Lorg/htmlparser/util/a/c;->last()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/htmlparser/util/a/b;->a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;II)I

    move-result v0

    return v0
.end method

.method public static a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;II)I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 402
    .line 404
    sub-int v0, p3, p2

    add-int/lit8 v1, v0, 0x1

    .line 405
    const/4 v0, 0x0

    move v3, v4

    move-object v5, v0

    move v6, v1

    move v2, p2

    .line 406
    :goto_0
    if-ne v4, v3, :cond_0

    if-le v2, p3, :cond_1

    .line 425
    :cond_0
    if-ne v4, v3, :cond_6

    move v0, v2

    .line 428
    :goto_1
    return v0

    .line 408
    :cond_1
    div-int/lit8 v0, v6, 0x2

    .line 409
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_2
    add-int/2addr v1, v2

    .line 410
    invoke-interface {p0, v1, v5}, Lorg/htmlparser/util/a/c;->a(ILorg/htmlparser/util/a/a;)Lorg/htmlparser/util/a/a;

    move-result-object v5

    .line 411
    invoke-interface {p1, v5}, Lorg/htmlparser/util/a/a;->F(Ljava/lang/Object;)I

    move-result v7

    .line 412
    if-nez v7, :cond_3

    move v3, v1

    .line 413
    goto :goto_0

    .line 409
    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 414
    :cond_3
    if-gez v7, :cond_5

    .line 416
    add-int/lit8 p3, v1, -0x1

    .line 417
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_4

    :goto_3
    move v6, v0

    .line 418
    goto :goto_0

    .line 417
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 421
    :cond_5
    add-int/lit8 v2, v1, 0x1

    move v6, v0

    .line 422
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

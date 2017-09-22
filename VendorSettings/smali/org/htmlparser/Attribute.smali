.class public Lorg/htmlparser/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mAssignment:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mQuote:C

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 316
    return-void

    .line 315
    :cond_0
    const-string v0, "="

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1

    .prologue
    .line 281
    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 282
    return-void

    .line 281
    :cond_0
    const-string v0, "="

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p2}, Lorg/htmlparser/Attribute;->ff(Ljava/lang/String;)V

    .line 261
    if-nez p4, :cond_0

    .line 262
    invoke-virtual {p0, p3}, Lorg/htmlparser/Attribute;->fg(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0, p3}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, p4}, Lorg/htmlparser/Attribute;->a(C)V

    goto :goto_0
.end method


# virtual methods
.method public Nb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    return-object v0
.end method

.method public Nc()C
    .locals 1

    .prologue
    .line 471
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    return v0
.end method

.method public a(C)V
    .locals 0

    .prologue
    .line 497
    iput-char p1, p0, Lorg/htmlparser/Attribute;->mQuote:C

    .line 498
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 482
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    if-eqz v0, :cond_0

    .line 483
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->d(Ljava/lang/StringBuffer;)V

    .line 545
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->c(Ljava/lang/StringBuffer;)V

    .line 546
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->d(Ljava/lang/StringBuffer;)V

    .line 547
    return-void
.end method

.method public f(Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->a(Ljava/lang/StringBuffer;)V

    .line 753
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->b(Ljava/lang/StringBuffer;)V

    .line 754
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->e(Ljava/lang/StringBuffer;)V

    .line 755
    return-void
.end method

.method public ff(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public fg(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x27

    const/16 v7, 0x22

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 572
    .line 573
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v2, v0, :cond_1

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v1, v6

    .line 643
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v1}, Lorg/htmlparser/Attribute;->a(C)V

    .line 645
    return-void

    .line 581
    :cond_1
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v2, v0, :cond_2

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v1, v7

    .line 586
    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v1

    .line 594
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_3

    .line 615
    if-eqz v5, :cond_0

    .line 617
    if-eqz v2, :cond_7

    move v1, v7

    .line 618
    goto :goto_0

    .line 596
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 597
    if-ne v6, v8, :cond_5

    move v4, v1

    move v5, v3

    .line 594
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    :cond_5
    if-ne v7, v8, :cond_6

    move v2, v1

    move v5, v3

    .line 606
    goto :goto_2

    .line 607
    :cond_6
    const/16 v9, 0x2d

    if-eq v9, v8, :cond_4

    const/16 v9, 0x2e

    if-eq v9, v8, :cond_4

    const/16 v9, 0x5f

    if-eq v9, v8, :cond_4

    .line 608
    const/16 v9, 0x3a

    if-eq v9, v8, :cond_4

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v3

    .line 610
    goto :goto_2

    .line 619
    :cond_7
    if-eqz v4, :cond_8

    move v1, v6

    .line 620
    goto :goto_0

    .line 626
    :cond_8
    const-string v0, "&quot;"

    .line 628
    new-instance v2, Ljava/lang/StringBuffer;

    .line 629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    .line 628
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 630
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_9

    .line 638
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    move v1, v7

    goto/16 :goto_0

    .line 632
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 633
    if-ne v7, v3, :cond_a

    .line 634
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 636
    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 701
    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->Nb()Ljava/lang/String;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_2

    .line 708
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_2
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->Nc()C

    move-result v1

    .line 710
    if-eqz v1, :cond_3

    .line 711
    add-int/lit8 v0, v0, 0x2

    .line 713
    :cond_3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getLength()I

    move-result v0

    .line 739
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 740
    invoke-virtual {p0, v1}, Lorg/htmlparser/Attribute;->f(Ljava/lang/StringBuffer;)V

    .line 742
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

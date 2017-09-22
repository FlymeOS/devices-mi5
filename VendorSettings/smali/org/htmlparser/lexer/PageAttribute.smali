.class public Lorg/htmlparser/lexer/PageAttribute;
.super Lorg/htmlparser/Attribute;
.source "PageAttribute.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mNameEnd:I

.field protected mNameStart:I

.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected mValueEnd:I

.field protected mValueStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/htmlparser/Attribute;-><init>()V

    .line 196
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 197
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;IIIIC)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lorg/htmlparser/Attribute;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    .line 94
    iput p2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    .line 95
    iput p3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    .line 96
    iput p4, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    .line 97
    iput p5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    .line 98
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->ff(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->setValue(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p6}, Lorg/htmlparser/lexer/PageAttribute;->a(C)V

    .line 102
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    .line 111
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    .line 112
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    .line 113
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    .line 114
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    .line 115
    return-void
.end method


# virtual methods
.method public Nb()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Lorg/htmlparser/Attribute;->Nb()Ljava/lang/String;

    move-result-object v0

    .line 253
    if-nez v0, :cond_2

    .line 255
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v1, :cond_2

    .line 257
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_1
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->ff(Ljava/lang/String;)V

    .line 266
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 233
    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/StringBuffer;II)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public b(Ljava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lorg/htmlparser/Attribute;->Nb()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/StringBuffer;II)V

    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 290
    const/16 v2, 0x27

    if-eq v2, v1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public c(Ljava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 335
    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/StringBuffer;II)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public e(Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValue:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 383
    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->Nc()C

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-eq v1, v2, :cond_1

    .line 388
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    invoke-virtual {v1, p1, v2, v3}, Lorg/htmlparser/lexer/Page;->b(Ljava/lang/StringBuffer;II)V

    .line 389
    :cond_1
    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    :cond_2
    :goto_0
    return-void

    .line 395
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->Nc()C

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    :cond_4
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_4

    .line 570
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/htmlparser/Attribute;->Nb()Ljava/lang/String;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_5

    .line 575
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_6

    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->Nc()C

    move-result v1

    .line 584
    if-eqz v1, :cond_3

    .line 585
    add-int/lit8 v0, v0, 0x2

    .line 587
    :cond_3
    return v0

    .line 571
    :cond_4
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v1, :cond_0

    .line 572
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 576
    :cond_5
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v1, :cond_1

    .line 577
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 581
    :cond_6
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v1, :cond_2

    .line 582
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 213
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v1, :cond_0

    .line 215
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->setName(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 315
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v1, :cond_0

    .line 317
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Page;->Q(II)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageAttribute;->setValue(Ljava/lang/String;)V

    .line 322
    :cond_0
    return-object v0
.end method

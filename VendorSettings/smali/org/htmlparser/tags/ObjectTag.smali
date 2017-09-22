.class public Lorg/htmlparser/tags/ObjectTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "ObjectTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "OBJECT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/ObjectTag;->btF:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/ObjectTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/ObjectTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/htmlparser/tags/ObjectTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public Oa()Ljava/util/Hashtable;
    .locals 6

    .prologue
    .line 100
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 101
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 121
    :cond_0
    return-object v2

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/tags/ObjectTag;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->fK(I)Lorg/htmlparser/a;

    move-result-object v0

    .line 106
    instance-of v4, v0, Lorg/htmlparser/d;

    if-eqz v4, :cond_2

    .line 108
    check-cast v0, Lorg/htmlparser/d;

    .line 109
    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PARAM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    const-string v4, "NAME"

    invoke-interface {v0, v4}, Lorg/htmlparser/d;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    const-string v5, "VALUE"

    invoke-interface {v0, v5}, Lorg/htmlparser/d;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public Ob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "CLASSID"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Od()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "CODETYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "DATA"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Of()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "HEIGHT"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Og()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "STANDBY"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "WIDTH"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ObjectTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oj()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oa()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 373
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x1f4

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 374
    const-string v0, "Object Tag\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v0, "**********\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const-string v0, "ClassId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Ob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v0, "CodeBase = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v0, "CodeType = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Od()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v0, "Data = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v0, "Height = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Of()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v0, "Standby = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Og()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v0, "Type = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v0, "Width = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->Oj()Ljava/util/Hashtable;

    move-result-object v5

    .line 401
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 402
    if-nez v6, :cond_3

    .line 403
    const-string v0, "No Params found.\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/ObjectTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/htmlparser/util/f;->Om()Z

    move-result v0

    if-nez v0, :cond_4

    .line 430
    if-eqz v3, :cond_2

    .line 431
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_2
    const-string v0, "End of Object Tag\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v0, "*****************\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v3

    .line 405
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 410
    const-string v7, ": Parameter name = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v0, ", Parameter value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 419
    :cond_4
    invoke-interface {v2}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v1

    .line 420
    instance-of v0, v1, Lorg/htmlparser/d;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 421
    check-cast v0, Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PARAM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_5
    if-nez v3, :cond_6

    .line 424
    const-string v0, "Miscellaneous items :\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :goto_2
    const/4 v3, 0x1

    .line 428
    invoke-interface {v1}, Lorg/htmlparser/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 426
    :cond_6
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

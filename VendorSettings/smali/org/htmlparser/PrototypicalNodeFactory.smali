.class public Lorg/htmlparser/PrototypicalNodeFactory;
.super Ljava/lang/Object;
.source "PrototypicalNodeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/b;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mBlastocyst:Ljava/util/Map;

.field protected mRemark:Lorg/htmlparser/c;

.field protected mTag:Lorg/htmlparser/d;

.field protected mText:Lorg/htmlparser/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>(Z)V

    .line 175
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->clear()V

    .line 185
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/e;

    .line 186
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/c;

    .line 187
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, v2, v1, v1, v2}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/d;

    .line 188
    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->Nl()Lorg/htmlparser/PrototypicalNodeFactory;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public Nl()Lorg/htmlparser/PrototypicalNodeFactory;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lorg/htmlparser/tags/AppletTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/AppletTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 308
    new-instance v0, Lorg/htmlparser/tags/BaseHrefTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/BaseHrefTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 309
    new-instance v0, Lorg/htmlparser/tags/Bullet;

    invoke-direct {v0}, Lorg/htmlparser/tags/Bullet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 310
    new-instance v0, Lorg/htmlparser/tags/BulletList;

    invoke-direct {v0}, Lorg/htmlparser/tags/BulletList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 311
    new-instance v0, Lorg/htmlparser/tags/DefinitionList;

    invoke-direct {v0}, Lorg/htmlparser/tags/DefinitionList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 312
    new-instance v0, Lorg/htmlparser/tags/DefinitionListBullet;

    invoke-direct {v0}, Lorg/htmlparser/tags/DefinitionListBullet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 313
    new-instance v0, Lorg/htmlparser/tags/DoctypeTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/DoctypeTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 314
    new-instance v0, Lorg/htmlparser/tags/FormTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FormTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 315
    new-instance v0, Lorg/htmlparser/tags/FrameSetTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FrameSetTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 316
    new-instance v0, Lorg/htmlparser/tags/FrameTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FrameTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 317
    new-instance v0, Lorg/htmlparser/tags/HeadingTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/HeadingTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 318
    new-instance v0, Lorg/htmlparser/tags/ImageTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ImageTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 319
    new-instance v0, Lorg/htmlparser/tags/InputTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/InputTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 320
    new-instance v0, Lorg/htmlparser/tags/JspTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/JspTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 321
    new-instance v0, Lorg/htmlparser/tags/LabelTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/LabelTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 322
    new-instance v0, Lorg/htmlparser/tags/LinkTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/LinkTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 323
    new-instance v0, Lorg/htmlparser/tags/MetaTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/MetaTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 324
    new-instance v0, Lorg/htmlparser/tags/ObjectTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ObjectTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 325
    new-instance v0, Lorg/htmlparser/tags/OptionTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/OptionTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 326
    new-instance v0, Lorg/htmlparser/tags/ParagraphTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ParagraphTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 327
    new-instance v0, Lorg/htmlparser/tags/ProcessingInstructionTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ProcessingInstructionTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 328
    new-instance v0, Lorg/htmlparser/tags/ScriptTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ScriptTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 329
    new-instance v0, Lorg/htmlparser/tags/SelectTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/SelectTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 330
    new-instance v0, Lorg/htmlparser/tags/StyleTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/StyleTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 331
    new-instance v0, Lorg/htmlparser/tags/TableColumn;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableColumn;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 332
    new-instance v0, Lorg/htmlparser/tags/TableHeader;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableHeader;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 333
    new-instance v0, Lorg/htmlparser/tags/TableRow;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableRow;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 334
    new-instance v0, Lorg/htmlparser/tags/TableTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 335
    new-instance v0, Lorg/htmlparser/tags/TextareaTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TextareaTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 336
    new-instance v0, Lorg/htmlparser/tags/TitleTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TitleTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 337
    new-instance v0, Lorg/htmlparser/tags/Div;

    invoke-direct {v0}, Lorg/htmlparser/tags/Div;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 338
    new-instance v0, Lorg/htmlparser/tags/BlockquoteTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/BlockquoteTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 339
    new-instance v0, Lorg/htmlparser/tags/Span;

    invoke-direct {v0}, Lorg/htmlparser/tags/Span;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 340
    new-instance v0, Lorg/htmlparser/tags/BodyTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/BodyTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 341
    new-instance v0, Lorg/htmlparser/tags/HeadTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/HeadTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 342
    new-instance v0, Lorg/htmlparser/tags/Html;

    invoke-direct {v0}, Lorg/htmlparser/tags/Html;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Lorg/htmlparser/d;)V

    .line 345
    return-object p0
.end method

.method public Nm()Lorg/htmlparser/e;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/e;

    return-object v0
.end method

.method public Nn()Lorg/htmlparser/c;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/c;

    return-object v0
.end method

.method public No()Lorg/htmlparser/d;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/htmlparser/d;)Lorg/htmlparser/d;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    return-object v0
.end method

.method public a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 502
    const/4 v1, 0x0

    .line 504
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 507
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_2

    .line 512
    :try_start_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 515
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    .line 518
    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Lorg/htmlparser/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :try_start_1
    invoke-interface {v0, p1}, Lorg/htmlparser/d;->a(Lorg/htmlparser/lexer/Page;)V

    .line 522
    invoke-interface {v0, p2}, Lorg/htmlparser/d;->setStartPosition(I)V

    .line 523
    invoke-interface {v0, p3}, Lorg/htmlparser/d;->fC(I)V

    .line 524
    invoke-interface {v0, p4}, Lorg/htmlparser/d;->a(Ljava/util/Vector;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 534
    :goto_0
    if-nez v0, :cond_1

    .line 538
    :try_start_2
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->No()Lorg/htmlparser/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/d;

    .line 539
    invoke-interface {v0, p1}, Lorg/htmlparser/d;->a(Lorg/htmlparser/lexer/Page;)V

    .line 540
    invoke-interface {v0, p2}, Lorg/htmlparser/d;->setStartPosition(I)V

    .line 541
    invoke-interface {v0, p3}, Lorg/htmlparser/d;->fC(I)V

    .line 542
    invoke-interface {v0, p4}, Lorg/htmlparser/d;->a(Ljava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 550
    :cond_1
    :goto_1
    return-object v0

    .line 544
    :catch_0
    move-exception v0

    .line 546
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    goto :goto_1

    .line 528
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/e;
    .locals 1

    .prologue
    .line 444
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->Nm()Lorg/htmlparser/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/e;

    .line 445
    invoke-interface {v0, p1}, Lorg/htmlparser/e;->a(Lorg/htmlparser/lexer/Page;)V

    .line 446
    invoke-interface {v0, p2}, Lorg/htmlparser/e;->setStartPosition(I)V

    .line 447
    invoke-interface {v0, p3}, Lorg/htmlparser/e;->fC(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-object v0

    .line 449
    :catch_0
    move-exception v0

    .line 451
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    goto :goto_0
.end method

.method public a(Lorg/htmlparser/d;)V
    .locals 4

    .prologue
    .line 278
    invoke-interface {p1}, Lorg/htmlparser/d;->Ns()[Ljava/lang/String;

    move-result-object v1

    .line 279
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 281
    return-void

    .line 280
    :cond_0
    aget-object v2, v1, v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/htmlparser/PrototypicalNodeFactory;->a(Ljava/lang/String;Lorg/htmlparser/d;)Lorg/htmlparser/d;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/c;
    .locals 1

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->Nn()Lorg/htmlparser/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/c;

    .line 471
    invoke-interface {v0, p1}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/Page;)V

    .line 472
    invoke-interface {v0, p2}, Lorg/htmlparser/c;->setStartPosition(I)V

    .line 473
    invoke-interface {v0, p3}, Lorg/htmlparser/c;->fC(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-object v0

    .line 475
    :catch_0
    move-exception v0

    .line 477
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    .line 255
    return-void
.end method

.class public Lorg/htmlparser/tags/CompositeTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "CompositeTag.java"


# static fields
.field protected static final btH:Lorg/htmlparser/scanners/CompositeTagScanner;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mEndTag:Lorg/htmlparser/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    sput-object v0, Lorg/htmlparser/tags/CompositeTag;->btH:Lorg/htmlparser/scanners/CompositeTagScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 71
    sget-object v0, Lorg/htmlparser/tags/CompositeTag;->btH:Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/CompositeTag;->a(Lorg/htmlparser/scanners/a;)V

    .line 72
    return-void
.end method


# virtual methods
.method public NP()Lorg/htmlparser/util/f;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->Oo()Lorg/htmlparser/util/f;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->Oo()Lorg/htmlparser/util/f;

    move-result-object v0

    goto :goto_0
.end method

.method public NQ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lorg/htmlparser/util/f;->Om()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 452
    :cond_0
    invoke-interface {v2}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/nodes/AbstractNode;

    .line 453
    invoke-virtual {v0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public Nd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/f;->Om()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {v1}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/a;->Nd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public Nv()Lorg/htmlparser/d;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/d;

    return-object v0
.end method

.method public a(ILjava/lang/StringBuffer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 610
    move v0, v1

    :goto_0
    if-lt v0, p1, :cond_1

    .line 612
    invoke-super {p0}, Lorg/htmlparser/nodes/TagNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Lorg/htmlparser/util/f;->Om()Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    if-eq p0, v0, :cond_0

    move v0, v1

    .line 632
    :goto_2
    if-le v0, p1, :cond_5

    .line 634
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    :cond_0
    return-void

    .line 611
    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    invoke-interface {v3}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v0

    .line 617
    instance-of v2, v0, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v2, :cond_3

    .line 618
    check-cast v0, Lorg/htmlparser/tags/CompositeTag;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, p2}, Lorg/htmlparser/tags/CompositeTag;->a(ILjava/lang/StringBuffer;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 621
    :goto_3
    if-le v2, p1, :cond_4

    .line 623
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 624
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 622
    :cond_4
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 633
    :cond_5
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected a(Ljava/lang/StringBuffer;Z)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/f;->Om()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    return-void

    .line 158
    :cond_1
    invoke-interface {v0}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v1

    .line 160
    if-eqz p2, :cond_2

    invoke-interface {v1}, Lorg/htmlparser/a;->getStartPosition()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/a;->Ne()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 161
    :cond_2
    invoke-interface {v1}, Lorg/htmlparser/a;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected b(Ljava/lang/StringBuffer;Z)V
    .locals 2

    .prologue
    .line 174
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/d;

    invoke-interface {v0}, Lorg/htmlparser/d;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/d;

    invoke-interface {v1}, Lorg/htmlparser/d;->Ne()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nv()Lorg/htmlparser/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/d;->toHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_1
    return-void
.end method

.method public b(Lorg/htmlparser/d;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/d;

    .line 527
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 581
    invoke-super {p0, v2}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    return-object v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    invoke-super {p0, p1}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->a(Ljava/lang/StringBuffer;Z)V

    .line 194
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->Nv()Lorg/htmlparser/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->b(Ljava/lang/StringBuffer;Z)V

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 568
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/tags/CompositeTag;->a(ILjava/lang/StringBuffer;)V

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

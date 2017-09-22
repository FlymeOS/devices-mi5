.class public Lorg/htmlparser/nodes/TagNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "TagNode.java"

# interfaces
.implements Lorg/htmlparser/d;


# static fields
.field private static final bts:[Ljava/lang/String;

.field protected static final btt:Lorg/htmlparser/scanners/a;

.field protected static final btu:Ljava/util/Hashtable;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mAttributes:Ljava/util/Vector;

.field private mScanner:Lorg/htmlparser/scanners/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->bts:[Ljava/lang/String;

    .line 71
    new-instance v0, Lorg/htmlparser/scanners/TagScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/TagScanner;-><init>()V

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->btt:Lorg/htmlparser/scanners/a;

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    .line 88
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "BLOCKQUOTE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "BODY"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "BR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "CENTER"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "DD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "DIR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "DIV"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "DL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "DT"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "FORM"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H1"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H2"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H3"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H4"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H5"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "H6"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "HEAD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "HR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "HTML"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "ISINDEX"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "LI"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "MENU"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "NOFRAMES"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "OL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "P"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "PRE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "TD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "TH"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "TITLE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btu:Ljava/util/Hashtable;

    const-string v1, "UL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 125
    const/4 v0, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/nodes/AbstractNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .line 140
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->btt:Lorg/htmlparser/scanners/a;

    iput-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/a;

    .line 141
    iput-object p4, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    .line 142
    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->Ns()[Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 148
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/TagNode;->fm(Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/TagNode;->fm(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public NI()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    return-object v0
.end method

.method public NJ()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 625
    const/4 v0, 0x2

    .line 626
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NI()Ljava/util/Vector;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    move v2, v1

    move v3, v0

    .line 628
    :goto_0
    if-lt v2, v5, :cond_0

    .line 633
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 634
    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    :goto_1
    if-lt v1, v5, :cond_1

    .line 640
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 630
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 631
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getLength()I

    move-result v0

    add-int/2addr v3, v0

    .line 628
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 638
    invoke-virtual {v0, v2}, Lorg/htmlparser/Attribute;->f(Ljava/lang/StringBuffer;)V

    .line 635
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    const-string v0, ""

    return-object v0
.end method

.method public Np()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NI()Ljava/util/Vector;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_0
    return-object v0
.end method

.method public Nq()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->Np()Ljava/lang/String;

    move-result-object v1

    .line 833
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Nr()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 720
    .line 722
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NI()Ljava/util/Vector;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 724
    if-lez v2, :cond_0

    .line 726
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 727
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 731
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 735
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 731
    goto :goto_0
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->bts:[Ljava/lang/String;

    return-object v0
.end method

.method public Nt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->bts:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->bts:[Ljava/lang/String;

    return-object v0
.end method

.method public Nv()Lorg/htmlparser/d;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return-object v0
.end method

.method public Nw()Lorg/htmlparser/scanners/a;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/a;

    return-object v0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    .line 525
    return-void
.end method

.method public a(Lorg/htmlparser/scanners/a;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/a;

    .line 906
    return-void
.end method

.method public b(Lorg/htmlparser/d;)V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public fl(Ljava/lang/String;)Lorg/htmlparser/Attribute;
    .locals 6

    .prologue
    .line 297
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NI()Ljava/util/Vector;

    move-result-object v4

    .line 300
    if-eqz v4, :cond_0

    .line 302
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 303
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 315
    :cond_0
    return-object v3

    .line 305
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 306
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    .line 307
    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v0

    move v0, v1

    .line 303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public fm(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 480
    new-instance v2, Lorg/htmlparser/Attribute;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0, v4}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 481
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NI()Ljava/util/Vector;

    move-result-object v0

    .line 482
    if-nez v0, :cond_2

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 485
    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/TagNode;->a(Ljava/util/Vector;)V

    move-object v1, v0

    .line 487
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 499
    :goto_1
    return-void

    .line 492
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 494
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->Nc()C

    move-result v0

    if-nez v0, :cond_1

    .line 495
    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TagNode;->fl(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->Np()Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_1

    .line 439
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_1
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    .line 510
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 512
    return-object v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 657
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getText()Ljava/lang/String;

    move-result-object v1

    .line 658
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 659
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->Nq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "End"

    .line 663
    :goto_0
    new-instance v3, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getStartPosition()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 664
    new-instance v4, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->Ne()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 665
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 668
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 670
    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    const/16 v0, 0x50

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 673
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4d

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :cond_0
    const-string v0, "Tag"

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

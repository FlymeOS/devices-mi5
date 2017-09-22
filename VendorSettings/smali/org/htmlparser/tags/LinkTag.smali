.class public Lorg/htmlparser/tags/LinkTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "LinkTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final btJ:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private javascriptLink:Z

.field protected mLink:Ljava/lang/String;

.field private mailLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->btF:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "P"

    aput-object v1, v0, v4

    const-string v1, "DIV"

    aput-object v1, v0, v5

    const-string v1, "TD"

    aput-object v1, v0, v6

    const-string v1, "TR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FORM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LI"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->btJ:[Ljava/lang/String;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "P"

    aput-object v1, v0, v3

    const-string v1, "DIV"

    aput-object v1, v0, v4

    const-string v1, "TD"

    aput-object v1, v0, v5

    const-string v1, "TR"

    aput-object v1, v0, v6

    const-string v1, "FORM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public NV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "ACCESSKEY"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/LinkTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NW()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 144
    iput-boolean v1, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    .line 145
    iput-boolean v1, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    .line 146
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v1, "mailto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 154
    iput-boolean v2, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 157
    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 160
    iput-boolean v2, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public NX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->Op()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public NY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    const-string v0, "HREF"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/LinkTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 316
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/htmlparser/util/e;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 317
    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/htmlparser/util/e;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->fk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    return-object v0
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->btJ:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Link to : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; titled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->Ne()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NV()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 277
    const-string v0, "null\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :goto_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->Nf()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NP()Lorg/htmlparser/util/f;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Lorg/htmlparser/util/f;->Om()Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->NV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {v3}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v4

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/htmlparser/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1
.end method

.class public Lorg/htmlparser/tags/MetaTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "MetaTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/MetaTag;->btF:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public NZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "HTTP-EQUIV"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ng()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->NZ()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Page;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    const-string v1, "CONTENT"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->fi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->setEncoding(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/tags/MetaTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

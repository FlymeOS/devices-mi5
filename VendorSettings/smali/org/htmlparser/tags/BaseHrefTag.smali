.class public Lorg/htmlparser/tags/BaseHrefTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "BaseHrefTag.java"


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

    const-string v2, "BASE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/BaseHrefTag;->btF:[Ljava/lang/String;

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
.method public Ng()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/htmlparser/tags/BaseHrefTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/htmlparser/tags/BaseHrefTag;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->fj(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/tags/BaseHrefTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-string v0, "HREF"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/BaseHrefTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 78
    :cond_1
    return-object v0
.end method

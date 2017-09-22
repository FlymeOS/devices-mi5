.class public Lorg/htmlparser/tags/FormTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "FormTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mFormLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/FormTag;->btF:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/FormTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public NR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->NS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    return-object v0
.end method

.method public NS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/FormTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-nez v0, :cond_1

    .line 237
    const-string v0, ""

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->fk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/htmlparser/tags/FormTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/htmlparser/tags/FormTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/htmlparser/tags/FormTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FORM TAG : Form at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->NR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->Ne()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

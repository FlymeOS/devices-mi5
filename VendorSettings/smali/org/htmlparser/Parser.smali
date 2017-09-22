.class public Lorg/htmlparser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/a/b;


# static fields
.field public static final bsS:Lorg/htmlparser/util/d;

.field public static final bsT:Lorg/htmlparser/util/d;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mFeedback:Lorg/htmlparser/util/d;

.field protected mLexer:Lorg/htmlparser/lexer/Lexer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 167
    new-instance v0, Lorg/htmlparser/util/DefaultParserFeedback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V

    .line 166
    sput-object v0, Lorg/htmlparser/Parser;->bsS:Lorg/htmlparser/util/d;

    .line 173
    new-instance v0, Lorg/htmlparser/util/DefaultParserFeedback;

    invoke-direct {v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>()V

    sput-object v0, Lorg/htmlparser/Parser;->bsT:Lorg/htmlparser/util/d;

    .line 177
    invoke-static {}, Lorg/htmlparser/a/a;->Nx()Ljava/util/Hashtable;

    move-result-object v0

    .line 178
    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTMLParser/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/htmlparser/Parser;->Nh()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    new-instance v1, Lorg/htmlparser/lexer/Page;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    sget-object v1, Lorg/htmlparser/Parser;->bsS:Lorg/htmlparser/util/d;

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/d;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/d;)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {p0, p2}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/util/d;)V

    .line 277
    invoke-virtual {p0, p1}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/lexer/Lexer;)V

    .line 278
    new-instance v0, Lorg/htmlparser/PrototypicalNodeFactory;

    invoke-direct {v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/b;)V

    .line 279
    return-void
.end method

.method public static Nh()D
    .locals 2

    .prologue
    .line 205
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method


# virtual methods
.method public Ni()Lorg/htmlparser/lexer/Lexer;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    return-object v0
.end method

.method public Nj()Lorg/htmlparser/util/d;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/d;

    return-object v0
.end method

.method public Nk()Lorg/htmlparser/util/b;
    .locals 3

    .prologue
    .line 660
    new-instance v0, Lorg/htmlparser/util/a;

    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Ni()Lorg/htmlparser/lexer/Lexer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Nj()Lorg/htmlparser/util/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/util/a;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/d;)V

    return-object v0
.end method

.method public a(Lorg/htmlparser/b;)V
    .locals 2

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Ni()Lorg/htmlparser/lexer/Lexer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/b;)V

    .line 560
    return-void
.end method

.method public a(Lorg/htmlparser/lexer/Lexer;)V
    .locals 3

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lexer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Ni()Lorg/htmlparser/lexer/Lexer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Ni()Lorg/htmlparser/lexer/Lexer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    .line 517
    :cond_1
    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {p1, v0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/b;)V

    .line 519
    :cond_2
    iput-object p1, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    .line 521
    iget-object v0, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Page;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_3

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 523
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->Nj()Lorg/htmlparser/util/d;

    move-result-object v0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    const-string v2, " does not contain text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-interface {v0, v1}, Lorg/htmlparser/util/d;->warning(Ljava/lang/String;)V

    .line 527
    :cond_3
    return-void
.end method

.method public a(Lorg/htmlparser/util/d;)V
    .locals 1

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    sget-object v0, Lorg/htmlparser/Parser;->bsS:Lorg/htmlparser/util/d;

    iput-object v0, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/d;

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/d;

    goto :goto_0
.end method

.method public fh(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "html cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    new-instance v1, Lorg/htmlparser/lexer/Page;

    invoke-direct {v1, p1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/lexer/Lexer;)V

    .line 751
    :cond_1
    return-void
.end method

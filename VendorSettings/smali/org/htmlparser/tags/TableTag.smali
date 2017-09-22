.class public Lorg/htmlparser/tags/TableTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TableTag.java"


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

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TABLE"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TableTag;->btF:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/TableTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/htmlparser/tags/TableTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/htmlparser/tags/TableTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableTag\n********\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableTag;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.class public Lorg/htmlparser/tags/TableColumn;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TableColumn.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final btJ:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TD"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TableColumn;->btF:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TD"

    aput-object v1, v0, v2

    const-string v1, "TR"

    aput-object v1, v0, v3

    const-string v1, "TBODY"

    aput-object v1, v0, v4

    const-string v1, "TFOOT"

    aput-object v1, v0, v5

    const-string v1, "THEAD"

    aput-object v1, v0, v6

    sput-object v0, Lorg/htmlparser/tags/TableColumn;->btJ:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TR"

    aput-object v1, v0, v2

    const-string v1, "TBODY"

    aput-object v1, v0, v3

    const-string v1, "TFOOT"

    aput-object v1, v0, v4

    const-string v1, "THEAD"

    aput-object v1, v0, v5

    const-string v1, "TABLE"

    aput-object v1, v0, v6

    sput-object v0, Lorg/htmlparser/tags/TableColumn;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/htmlparser/tags/TableColumn;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/TableColumn;->btJ:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/htmlparser/tags/TableColumn;->btG:[Ljava/lang/String;

    return-object v0
.end method

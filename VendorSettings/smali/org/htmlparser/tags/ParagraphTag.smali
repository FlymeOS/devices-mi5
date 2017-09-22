.class public Lorg/htmlparser/tags/ParagraphTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "ParagraphTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final btG:[Ljava/lang/String;

.field private static final btJ:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "P"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/ParagraphTag;->btF:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADDRESS"

    aput-object v1, v0, v3

    const-string v1, "BLOCKQUOTE"

    aput-object v1, v0, v4

    const-string v1, "CENTER"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "DD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DIR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DIV"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FIELDSET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FORM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "H1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "H3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "H4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "H5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "H6"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ISINDEX"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NOFRAMES"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "OL"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PARAM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PRE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/ParagraphTag;->btJ:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/ParagraphTag;->btG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/htmlparser/tags/ParagraphTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

.method public Nt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/htmlparser/tags/ParagraphTag;->btJ:[Ljava/lang/String;

    return-object v0
.end method

.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/htmlparser/tags/ParagraphTag;->btG:[Ljava/lang/String;

    return-object v0
.end method

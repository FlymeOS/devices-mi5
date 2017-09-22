.class public Lorg/htmlparser/tags/InputTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "InputTag.java"


# static fields
.field private static final btF:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INPUT"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/InputTag;->btF:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public Ns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/htmlparser/tags/InputTag;->btF:[Ljava/lang/String;

    return-object v0
.end method

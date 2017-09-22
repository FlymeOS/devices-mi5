.class public Lorg/htmlparser/util/EncodingChangeException;
.super Lorg/htmlparser/util/ParserException;
.source "EncodingChangeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mNewEncoding:Ljava/lang/String;

.field private mOldEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lorg/htmlparser/util/EncodingChangeException;->mOldEncoding:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/htmlparser/util/EncodingChangeException;->mNewEncoding:Ljava/lang/String;

    .line 75
    return-void
.end method

.class public Lorg/htmlparser/util/DefaultParserFeedback;
.super Ljava/lang/Object;
.source "DefaultParserFeedback.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/d;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal mode ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string v2, "), must be one of: QUIET, NORMAL, DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput p1, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    .line 93
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V
    .locals 3

    .prologue
    .line 130
    iget v0, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x2

    iget v1, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p2}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    .line 136
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

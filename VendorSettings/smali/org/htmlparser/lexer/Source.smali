.class public abstract Lorg/htmlparser/lexer/Source;
.super Ljava/io/Reader;
.source "Source.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract NA()I
.end method

.method public abstract Nz()V
.end method

.method public abstract a(Ljava/lang/StringBuffer;II)V
.end method

.method public abstract destroy()V
.end method

.method public abstract fE(I)C
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getString(II)Ljava/lang/String;
.end method

.method public abstract read()I
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.class public Lorg/htmlparser/scanners/TagScanner;
.super Ljava/lang/Object;
.source "TagScanner.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/scanners/a;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lorg/htmlparser/d;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/d;
    .locals 0

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/htmlparser/d;->Ng()V

    .line 75
    return-object p1
.end method

.class public abstract Lorg/htmlparser/nodes/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/a;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected children:Lorg/htmlparser/util/NodeList;

.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected nodeBegin:I

.field protected nodeEnd:I

.field protected parent:Lorg/htmlparser/a;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 86
    iput p2, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 87
    iput p3, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 88
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/a;

    .line 89
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 90
    return-void
.end method


# virtual methods
.method public NB()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public Ne()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    return v0
.end method

.method public Nf()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    return-object v0
.end method

.method public Ng()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public a(Lorg/htmlparser/lexer/Page;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 217
    return-void
.end method

.method public a(Lorg/htmlparser/util/NodeList;)V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 314
    invoke-virtual {p1}, Lorg/htmlparser/util/NodeList;->Oo()Lorg/htmlparser/util/f;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/f;->Om()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    return-void

    .line 315
    :cond_1
    invoke-interface {v0}, Lorg/htmlparser/util/f;->NE()Lorg/htmlparser/a;

    move-result-object v1

    .line 316
    if-eq p0, v1, :cond_0

    .line 317
    iget-object v2, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v2, v1}, Lorg/htmlparser/util/NodeList;->c(Lorg/htmlparser/a;)V

    goto :goto_0
.end method

.method public b(Lorg/htmlparser/a;)V
    .locals 0

    .prologue
    .line 283
    if-eq p0, p1, :cond_0

    .line 284
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/a;

    .line 286
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fC(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 253
    return-void
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public setStartPosition(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 235
    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toHtml(Z)Ljava/lang/String;
.end method

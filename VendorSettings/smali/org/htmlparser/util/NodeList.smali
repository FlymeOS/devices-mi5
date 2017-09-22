.class public Lorg/htmlparser/util/NodeList;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private capacity:I

.field private capacityIncrement:I

.field private nodeData:[Lorg/htmlparser/a;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeList;->removeAll()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/a;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/htmlparser/util/NodeList;->c(Lorg/htmlparser/a;)V

    .line 61
    return-void
.end method

.method private On()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    .line 96
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    .line 97
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    .line 98
    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    invoke-direct {p0, v1}, Lorg/htmlparser/util/NodeList;->fJ(I)[Lorg/htmlparser/a;

    move-result-object v1

    iput-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    .line 99
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-void
.end method

.method static synthetic b(Lorg/htmlparser/util/NodeList;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    return v0
.end method

.method static synthetic c(Lorg/htmlparser/util/NodeList;)[Lorg/htmlparser/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    return-object v0
.end method

.method private fJ(I)[Lorg/htmlparser/a;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lorg/htmlparser/a;

    return-object v0
.end method


# virtual methods
.method public Oo()Lorg/htmlparser/util/f;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lorg/htmlparser/util/c;

    invoke-direct {v0, p0}, Lorg/htmlparser/util/c;-><init>(Lorg/htmlparser/util/NodeList;)V

    return-object v0
.end method

.method public Op()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-lt v0, v2, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/htmlparser/a;->Nd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(Lorg/htmlparser/a;)V
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    iget v1, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    if-ne v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lorg/htmlparser/util/NodeList;->On()V

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    iget v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    aput-object p1, v0, v1

    .line 68
    return-void
.end method

.method public fK(I)Lorg/htmlparser/a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public fL(I)Lorg/htmlparser/a;
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    aget-object v0, v0, p1

    .line 198
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    iget v4, p0, Lorg/htmlparser/util/NodeList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v1, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 200
    iget v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/htmlparser/util/NodeList;->size:I

    .line 202
    return-object v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    .line 208
    const/16 v0, 0xa

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    .line 209
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    invoke-direct {p0, v0}, Lorg/htmlparser/util/NodeList;->fJ(I)[Lorg/htmlparser/a;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    .line 210
    iget v0, p0, Lorg/htmlparser/util/NodeList;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/util/NodeList;->capacityIncrement:I

    .line 211
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/htmlparser/util/NodeList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/htmlparser/util/NodeList;->size:I

    if-lt v0, v2, :cond_0

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/util/NodeList;->nodeData:[Lorg/htmlparser/a;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

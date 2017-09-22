.class public Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;
.super Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;
.source "XmPushTBinaryProtocol.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZ)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZI)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;

    iget-boolean v1, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->strictRead_:Z

    iget-boolean v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->strictWrite_:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;-><init>(Lorg/apache/thrift/transport/d;ZZ)V

    .line 42
    iget v1, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->readLength_:I

    if-eqz v1, :cond_0

    .line 43
    iget v1, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->readLength_:I

    invoke-virtual {v0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->fz(I)V

    .line 45
    :cond_0
    return-object v0
.end method

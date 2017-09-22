.class public Lorg/apache/thrift/f;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private bsm:Lorg/apache/thrift/protocol/d;

.field private final bso:Ljava/io/ByteArrayOutputStream;

.field private final bsp:Lorg/apache/thrift/transport/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/f;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/f;->bso:Ljava/io/ByteArrayOutputStream;

    .line 45
    new-instance v0, Lorg/apache/thrift/transport/a;

    iget-object v1, p0, Lorg/apache/thrift/f;->bso:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/thrift/transport/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/thrift/f;->bsp:Lorg/apache/thrift/transport/a;

    .line 66
    iget-object v0, p0, Lorg/apache/thrift/f;->bsp:Lorg/apache/thrift/transport/a;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/f;->bsm:Lorg/apache/thrift/protocol/d;

    .line 67
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/thrift/TBase;)[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/thrift/f;->bso:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 79
    iget-object v0, p0, Lorg/apache/thrift/f;->bsm:Lorg/apache/thrift/protocol/d;

    invoke-interface {p1, v0}, Lorg/apache/thrift/TBase;->b(Lorg/apache/thrift/protocol/d;)V

    .line 80
    iget-object v0, p0, Lorg/apache/thrift/f;->bso:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

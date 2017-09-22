.class public Lorg/apache/thrift/e;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final bsm:Lorg/apache/thrift/protocol/d;

.field private final bsn:Lorg/apache/thrift/transport/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/e;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/thrift/transport/c;

    invoke-direct {v0}, Lorg/apache/thrift/transport/c;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/e;->bsn:Lorg/apache/thrift/transport/c;

    .line 57
    iget-object v0, p0, Lorg/apache/thrift/e;->bsn:Lorg/apache/thrift/transport/c;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/e;->bsm:Lorg/apache/thrift/protocol/d;

    .line 58
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/thrift/TBase;[B)V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/e;->bsn:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0, p2}, Lorg/apache/thrift/transport/c;->reset([B)V

    .line 69
    iget-object v0, p0, Lorg/apache/thrift/e;->bsm:Lorg/apache/thrift/protocol/d;

    invoke-interface {p1, v0}, Lorg/apache/thrift/TBase;->a(Lorg/apache/thrift/protocol/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/apache/thrift/e;->bsm:Lorg/apache/thrift/protocol/d;

    invoke-virtual {v0}, Lorg/apache/thrift/protocol/d;->reset()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/thrift/e;->bsm:Lorg/apache/thrift/protocol/d;

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/d;->reset()V

    throw v0
.end method

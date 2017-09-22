.class public Lorg/apache/thrift/transport/a;
.super Lorg/apache/thrift/transport/d;
.source "TIOStreamTransport.java"


# instance fields
.field protected bsM:Ljava/io/InputStream;

.field protected bsN:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/thrift/transport/d;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/thrift/transport/a;->bsM:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lorg/apache/thrift/transport/a;->bsN:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/thrift/transport/d;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/thrift/transport/a;->bsM:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lorg/apache/thrift/transport/a;->bsN:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lorg/apache/thrift/transport/a;->bsN:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/thrift/transport/a;->bsM:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/apache/thrift/transport/TTransportException;

    const/4 v1, 0x1

    const-string v2, "Cannot read from null inputStream"

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/transport/a;->bsM:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    if-gez v0, :cond_1

    .line 127
    new-instance v0, Lorg/apache/thrift/transport/TTransportException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/thrift/transport/TTransportException;-><init>(I)V

    throw v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lorg/apache/thrift/transport/TTransportException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_1
    return v0
.end method

.method public write([BII)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/thrift/transport/a;->bsN:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/apache/thrift/transport/TTransportException;

    const/4 v1, 0x1

    const-string v2, "Cannot write to null outputStream"

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/transport/a;->bsN:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lorg/apache/thrift/transport/TTransportException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.class public Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;
.super Lorg/apache/thrift/protocol/TBinaryProtocol;
.source "XmPushTBinaryProtocol.java"


# static fields
.field private static bsH:I

.field private static bsI:I

.field private static bsJ:I

.field private static bsK:I

.field private static bsL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 50
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsH:I

    .line 51
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsI:I

    .line 52
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsJ:I

    .line 53
    const/high16 v0, 0xa00000

    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsK:I

    .line 54
    const/high16 v0, 0x6400000

    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsL:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/d;ZZ)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/thrift/protocol/TBinaryProtocol;-><init>(Lorg/apache/thrift/transport/d;ZZ)V

    .line 25
    return-void
.end method


# virtual methods
.method public MP()Lorg/apache/thrift/protocol/c;
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v0

    .line 59
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v1

    .line 60
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MW()I

    move-result v2

    .line 61
    sget v3, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsH:I

    if-le v2, v3, :cond_0

    .line 62
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift map size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    new-instance v3, Lorg/apache/thrift/protocol/c;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    return-object v3
.end method

.method public MR()Lorg/apache/thrift/protocol/b;
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v0

    .line 70
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MW()I

    move-result v1

    .line 71
    sget v2, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsI:I

    if-le v1, v2, :cond_0

    .line 72
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift list size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/b;

    invoke-direct {v2, v0, v1}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    return-object v2
.end method

.method public MT()Lorg/apache/thrift/protocol/f;
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v0

    .line 80
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MW()I

    move-result v1

    .line 81
    sget v2, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsJ:I

    if-le v1, v2, :cond_0

    .line 82
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift set size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/f;

    invoke-direct {v2, v0, v1}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    return-object v2
.end method

.method public MY()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MW()I

    move-result v1

    .line 110
    sget v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsL:I

    if-le v1, v0, :cond_0

    .line 111
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift binary size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->fA(I)V

    .line 115
    iget-object v0, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Na()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->MZ()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->fB(I)V

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_1
    new-array v0, v1, [B

    .line 122
    iget-object v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/thrift/transport/d;->i([BII)I

    .line 123
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MW()I

    move-result v1

    .line 90
    sget v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsK:I

    if-le v1, v0, :cond_0

    .line 91
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift string size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of range!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Na()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/d;->MZ()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 96
    iget-object v2, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->bsF:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->fB(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->fy(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

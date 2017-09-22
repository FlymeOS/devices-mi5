.class public abstract Lcom/google/protobuf/micro/c;
.super Ljava/lang/Object;
.source "MessageMicro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract EY()I
.end method

.method public abstract a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
.end method

.method public abstract a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
.end method

.method protected a(Lcom/google/protobuf/micro/b;I)Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/b;->skipField(I)Z

    move-result v0

    return v0
.end method

.method public e([BII)V
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/c;->a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 93
    invoke-virtual {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f([BII)Lcom/google/protobuf/micro/c;
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/b;->c([BII)Lcom/google/protobuf/micro/b;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/c;->a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/micro/b;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    return-object p0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    throw v0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSerializedSize()I
.end method

.method public q([B)Lcom/google/protobuf/micro/c;
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/micro/c;->f([BII)Lcom/google/protobuf/micro/c;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/micro/c;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 76
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/micro/c;->e([BII)V

    .line 77
    return-object v0
.end method

.class public Lorg/apache/thrift/protocol/e;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static bsG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7fffffff

    sput v0, Lorg/apache/thrift/protocol/e;->bsG:I

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/d;B)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lorg/apache/thrift/protocol/e;->bsG:I

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 61
    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/d;BI)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    if-gtz p2, :cond_0

    .line 74
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->readBool()Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->readByte()B

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MV()S

    goto :goto_0

    .line 94
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MW()I

    goto :goto_0

    .line 99
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MX()J

    goto :goto_0

    .line 104
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->readDouble()D

    goto :goto_0

    .line 109
    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MY()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 114
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 116
    :goto_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 117
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MM()V

    goto :goto_0

    .line 120
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_1

    .line 128
    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 129
    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_2

    .line 130
    iget-byte v2, v1, Lorg/apache/thrift/protocol/c;->bsD:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 131
    iget-byte v2, v1, Lorg/apache/thrift/protocol/c;->bsE:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    :cond_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto :goto_0

    .line 138
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MT()Lorg/apache/thrift/protocol/f;

    move-result-object v1

    .line 139
    :goto_3
    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    if-ge v0, v2, :cond_3

    .line 140
    iget-byte v2, v1, Lorg/apache/thrift/protocol/f;->bsC:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MU()V

    goto :goto_0

    .line 147
    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 148
    :goto_4
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_4

    .line 149
    iget-byte v2, v1, Lorg/apache/thrift/protocol/b;->bsC:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;BI)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 151
    :cond_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/d;->MS()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

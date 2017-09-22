.class public abstract Lorg/apache/thrift/protocol/d;
.super Ljava/lang/Object;
.source "TProtocol.java"


# instance fields
.field protected bsF:Lorg/apache/thrift/transport/d;


# direct methods
.method protected constructor <init>(Lorg/apache/thrift/transport/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/thrift/protocol/d;->bsF:Lorg/apache/thrift/transport/d;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract MG()V
.end method

.method public abstract MH()V
.end method

.method public abstract MI()V
.end method

.method public abstract MJ()V
.end method

.method public abstract MK()V
.end method

.method public abstract ML()Lorg/apache/thrift/protocol/g;
.end method

.method public abstract MM()V
.end method

.method public abstract MN()Lorg/apache/thrift/protocol/a;
.end method

.method public abstract MO()V
.end method

.method public abstract MP()Lorg/apache/thrift/protocol/c;
.end method

.method public abstract MQ()V
.end method

.method public abstract MR()Lorg/apache/thrift/protocol/b;
.end method

.method public abstract MS()V
.end method

.method public abstract MT()Lorg/apache/thrift/protocol/f;
.end method

.method public abstract MU()V
.end method

.method public abstract MV()S
.end method

.method public abstract MW()I
.end method

.method public abstract MX()J
.end method

.method public abstract MY()Ljava/nio/ByteBuffer;
.end method

.method public abstract O(J)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/a;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/b;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/c;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/g;)V
.end method

.method public abstract cW(Z)V
.end method

.method public abstract d(S)V
.end method

.method public abstract fx(I)V
.end method

.method public abstract i(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readBool()Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readDouble()D
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public abstract writeByte(B)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

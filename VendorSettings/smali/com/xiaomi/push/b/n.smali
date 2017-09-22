.class public final Lcom/xiaomi/push/b/n;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbH:Z

.field private bbI:Ljava/lang/String;

.field private bbd:I

.field private bcG:Z

.field private bcH:Ljava/lang/String;

.field private bcI:Z

.field private bcJ:J

.field private bcK:Z

.field private bcL:J

.field private bcM:Z

.field private bcN:Z

.field private bcO:Z

.field private bcP:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1950
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1955
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/n;->bcH:Ljava/lang/String;

    .line 1972
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/n;->bbI:Ljava/lang/String;

    .line 1989
    iput-wide v2, p0, Lcom/xiaomi/push/b/n;->bcJ:J

    .line 2006
    iput-wide v2, p0, Lcom/xiaomi/push/b/n;->bcL:J

    .line 2023
    iput-boolean v1, p0, Lcom/xiaomi/push/b/n;->bcN:Z

    .line 2040
    iput v1, p0, Lcom/xiaomi/push/b/n;->bcP:I

    .line 2092
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/n;->bbd:I

    .line 1950
    return-void
.end method

.method public static z([B)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 2178
    new-instance v0, Lcom/xiaomi/push/b/n;

    invoke-direct {v0}, Lcom/xiaomi/push/b/n;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/n;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/n;

    check-cast v0, Lcom/xiaomi/push/b/n;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 2095
    iget v0, p0, Lcom/xiaomi/push/b/n;->bbd:I

    if-gez v0, :cond_0

    .line 2097
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getSerializedSize()I

    .line 2099
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/n;->bbd:I

    return v0
.end method

.method public Hv()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bbH:Z

    return v0
.end method

.method public Ii()Z
    .locals 1

    .prologue
    .line 1957
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcG:Z

    return v0
.end method

.method public Ij()Z
    .locals 1

    .prologue
    .line 2024
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcN:Z

    return v0
.end method

.method public Ik()Z
    .locals 1

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcM:Z

    return v0
.end method

.method public Il()I
    .locals 1

    .prologue
    .line 2041
    iget v0, p0, Lcom/xiaomi/push/b/n;->bcP:I

    return v0
.end method

.method public Im()Z
    .locals 1

    .prologue
    .line 2042
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcO:Z

    return v0
.end method

.method public J(J)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcI:Z

    .line 1994
    iput-wide p1, p0, Lcom/xiaomi/push/b/n;->bcJ:J

    .line 1995
    return-object p0
.end method

.method public K(J)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 2010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcK:Z

    .line 2011
    iput-wide p1, p0, Lcom/xiaomi/push/b/n;->bcL:J

    .line 2012
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1947
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/n;->n(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4

    .prologue
    .line 2072
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ii()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Hv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2078
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2079
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getStart()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 2081
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2082
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getEnd()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 2084
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ik()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2085
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ij()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2087
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Im()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2088
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Il()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2090
    :cond_5
    return-void
.end method

.method public ch(Z)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 2027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcM:Z

    .line 2028
    iput-boolean p1, p0, Lcom/xiaomi/push/b/n;->bcN:Z

    .line 2029
    return-object p0
.end method

.method public dX(Ljava/lang/String;)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcG:Z

    .line 1960
    iput-object p1, p0, Lcom/xiaomi/push/b/n;->bcH:Ljava/lang/String;

    .line 1961
    return-object p0
.end method

.method public dY(Ljava/lang/String;)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bbH:Z

    .line 1977
    iput-object p1, p0, Lcom/xiaomi/push/b/n;->bbI:Ljava/lang/String;

    .line 1978
    return-object p0
.end method

.method public fc(I)Lcom/xiaomi/push/b/n;
    .locals 1

    .prologue
    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcO:Z

    .line 2045
    iput p1, p0, Lcom/xiaomi/push/b/n;->bcP:I

    .line 2046
    return-object p0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 2007
    iget-wide v0, p0, Lcom/xiaomi/push/b/n;->bcL:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2104
    const/4 v0, 0x0

    .line 2105
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2106
    const/4 v1, 0x1

    .line 2107
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Hv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2110
    const/4 v1, 0x2

    .line 2111
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2113
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2114
    const/4 v1, 0x3

    .line 2115
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getStart()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2117
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2118
    const/4 v1, 0x4

    .line 2119
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->getEnd()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2121
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ik()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2122
    const/4 v1, 0x5

    .line 2123
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Ij()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2125
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Im()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2126
    const/4 v1, 0x6

    .line 2127
    invoke-virtual {p0}, Lcom/xiaomi/push/b/n;->Il()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2129
    :cond_5
    iput v0, p0, Lcom/xiaomi/push/b/n;->bbd:I

    .line 2130
    return v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 1990
    iget-wide v0, p0, Lcom/xiaomi/push/b/n;->bcJ:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/xiaomi/push/b/n;->bbI:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/xiaomi/push/b/n;->bcH:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 2008
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcK:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 1991
    iget-boolean v0, p0, Lcom/xiaomi/push/b/n;->bcI:Z

    return v0
.end method

.method public n(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/n;
    .locals 2

    .prologue
    .line 2138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 2139
    sparse-switch v0, :sswitch_data_0

    .line 2143
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/n;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    :sswitch_0
    return-object p0

    .line 2149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/n;->dX(Ljava/lang/String;)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2153
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/n;->dY(Ljava/lang/String;)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2157
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readUInt64()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/b/n;->J(J)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2161
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readUInt64()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/b/n;->K(J)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2165
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/n;->ch(Z)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2169
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/n;->fc(I)Lcom/xiaomi/push/b/n;

    goto :goto_0

    .line 2139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

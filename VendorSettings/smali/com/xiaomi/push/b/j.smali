.class public final Lcom/xiaomi/push/b/j;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bcA:Z

.field private bcB:Ljava/lang/String;

.field private bcw:Z

.field private bcx:Ljava/lang/String;

.field private bcy:Z

.field private bcz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1800
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/j;->bcx:Ljava/lang/String;

    .line 1817
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/j;->bcz:Ljava/lang/String;

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/j;->bcB:Ljava/lang/String;

    .line 1874
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/j;->bbd:I

    .line 1795
    return-void
.end method

.method public static v([B)Lcom/xiaomi/push/b/j;
    .locals 1

    .prologue
    .line 1936
    new-instance v0, Lcom/xiaomi/push/b/j;

    invoke-direct {v0}, Lcom/xiaomi/push/b/j;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/j;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/j;

    check-cast v0, Lcom/xiaomi/push/b/j;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lcom/xiaomi/push/b/j;->bbd:I

    if-gez v0, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getSerializedSize()I

    .line 1881
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/j;->bbd:I

    return v0
.end method

.method public Ic()Z
    .locals 1

    .prologue
    .line 1819
    iget-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcy:Z

    return v0
.end method

.method public Id()Z
    .locals 1

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcA:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1792
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/j;->j(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1866
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->Ic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1867
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1869
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->Id()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1870
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1872
    :cond_2
    return-void
.end method

.method public dT(Ljava/lang/String;)Lcom/xiaomi/push/b/j;
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcw:Z

    .line 1805
    iput-object p1, p0, Lcom/xiaomi/push/b/j;->bcx:Ljava/lang/String;

    .line 1806
    return-object p0
.end method

.method public dU(Ljava/lang/String;)Lcom/xiaomi/push/b/j;
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcy:Z

    .line 1822
    iput-object p1, p0, Lcom/xiaomi/push/b/j;->bcz:Ljava/lang/String;

    .line 1823
    return-object p0
.end method

.method public dV(Ljava/lang/String;)Lcom/xiaomi/push/b/j;
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcA:Z

    .line 1839
    iput-object p1, p0, Lcom/xiaomi/push/b/j;->bcB:Ljava/lang/String;

    .line 1840
    return-object p0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/xiaomi/push/b/j;->bcB:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/xiaomi/push/b/j;->bcz:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1886
    const/4 v0, 0x0

    .line 1887
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    const/4 v1, 0x1

    .line 1889
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1891
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->Ic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1892
    const/4 v1, 0x2

    .line 1893
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1895
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->Id()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1896
    const/4 v1, 0x3

    .line 1897
    invoke-virtual {p0}, Lcom/xiaomi/push/b/j;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1899
    :cond_2
    iput v0, p0, Lcom/xiaomi/push/b/j;->bbd:I

    .line 1900
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/xiaomi/push/b/j;->bcx:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/xiaomi/push/b/j;->bcw:Z

    return v0
.end method

.method public j(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/j;
    .locals 1

    .prologue
    .line 1908
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1909
    sparse-switch v0, :sswitch_data_0

    .line 1913
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/j;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1914
    :sswitch_0
    return-object p0

    .line 1919
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/j;->dT(Ljava/lang/String;)Lcom/xiaomi/push/b/j;

    goto :goto_0

    .line 1923
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/j;->dU(Ljava/lang/String;)Lcom/xiaomi/push/b/j;

    goto :goto_0

    .line 1927
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/j;->dV(Ljava/lang/String;)Lcom/xiaomi/push/b/j;

    goto :goto_0

    .line 1909
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

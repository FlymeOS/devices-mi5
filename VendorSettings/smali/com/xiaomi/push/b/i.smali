.class public final Lcom/xiaomi/push/b/i;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bcm:Z

.field private bcn:Ljava/lang/String;

.field private bcq:Z

.field private bcr:Lcom/xiaomi/push/b/e;

.field private bcu:Z

.field private bcv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/i;->bcv:Ljava/lang/String;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/i;->bcn:Ljava/lang/String;

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/b/i;->bcr:Lcom/xiaomi/push/b/e;

    .line 1034
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/i;->bbd:I

    .line 952
    return-void
.end method

.method public static u([B)Lcom/xiaomi/push/b/i;
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Lcom/xiaomi/push/b/i;

    invoke-direct {v0}, Lcom/xiaomi/push/b/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/i;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/i;

    check-cast v0, Lcom/xiaomi/push/b/i;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/xiaomi/push/b/i;->bbd:I

    if-gez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->getSerializedSize()I

    .line 1041
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/i;->bbd:I

    return v0
.end method

.method public HV()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcm:Z

    return v0
.end method

.method public HX()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcq:Z

    return v0
.end method

.method public HY()Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/xiaomi/push/b/i;->bcr:Lcom/xiaomi/push/b/e;

    return-object v0
.end method

.method public Ib()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcu:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/i;->i(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->Ib()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/c;)V

    .line 1032
    :cond_2
    return-void
.end method

.method public b(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/i;
    .locals 1

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcq:Z

    .line 999
    iput-object p1, p0, Lcom/xiaomi/push/b/i;->bcr:Lcom/xiaomi/push/b/e;

    .line 1000
    return-object p0
.end method

.method public dR(Ljava/lang/String;)Lcom/xiaomi/push/b/i;
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcu:Z

    .line 962
    iput-object p1, p0, Lcom/xiaomi/push/b/i;->bcv:Ljava/lang/String;

    .line 963
    return-object p0
.end method

.method public dS(Ljava/lang/String;)Lcom/xiaomi/push/b/i;
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/i;->bcm:Z

    .line 979
    iput-object p1, p0, Lcom/xiaomi/push/b/i;->bcn:Ljava/lang/String;

    .line 980
    return-object p0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/xiaomi/push/b/i;->bcv:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/xiaomi/push/b/i;->bcn:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->Ib()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    const/4 v1, 0x1

    .line 1049
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HV()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    const/4 v1, 0x2

    .line 1053
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    const/4 v1, 0x3

    .line 1057
    invoke-virtual {p0}, Lcom/xiaomi/push/b/i;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1059
    :cond_2
    iput v0, p0, Lcom/xiaomi/push/b/i;->bbd:I

    .line 1060
    return v0
.end method

.method public i(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/i;
    .locals 1

    .prologue
    .line 1068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1069
    sparse-switch v0, :sswitch_data_0

    .line 1073
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/i;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    :sswitch_0
    return-object p0

    .line 1079
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/i;->dR(Ljava/lang/String;)Lcom/xiaomi/push/b/i;

    goto :goto_0

    .line 1083
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/i;->dS(Ljava/lang/String;)Lcom/xiaomi/push/b/i;

    goto :goto_0

    .line 1087
    :sswitch_3
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    .line 1088
    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    .line 1089
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/i;->b(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/i;

    goto :goto_0

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

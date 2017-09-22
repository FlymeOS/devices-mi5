.class public final Lcom/xiaomi/push/b/k;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bbv:Z

.field private bbw:I

.field private bbx:Z

.field private bby:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1117
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/b/k;->bbw:I

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/k;->bby:Ljava/lang/String;

    .line 1170
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/k;->bbd:I

    .line 1112
    return-void
.end method

.method public static w([B)Lcom/xiaomi/push/b/k;
    .locals 1

    .prologue
    .line 1224
    new-instance v0, Lcom/xiaomi/push/b/k;

    invoke-direct {v0}, Lcom/xiaomi/push/b/k;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/k;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/k;

    check-cast v0, Lcom/xiaomi/push/b/k;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/xiaomi/push/b/k;->bbd:I

    if-gez v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->getSerializedSize()I

    .line 1177
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/k;->bbd:I

    return v0
.end method

.method public Hj()I
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/xiaomi/push/b/k;->bbw:I

    return v0
.end method

.method public Hk()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/xiaomi/push/b/k;->bbv:Z

    return v0
.end method

.method public Hl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/xiaomi/push/b/k;->bby:Ljava/lang/String;

    return-object v0
.end method

.method public Hm()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/xiaomi/push/b/k;->bbx:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/k;->k(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hj()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_1
    return-void
.end method

.method public dW(Ljava/lang/String;)Lcom/xiaomi/push/b/k;
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/k;->bbx:Z

    .line 1139
    iput-object p1, p0, Lcom/xiaomi/push/b/k;->bby:Ljava/lang/String;

    .line 1140
    return-object p0
.end method

.method public fb(I)Lcom/xiaomi/push/b/k;
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/k;->bbv:Z

    .line 1122
    iput p1, p0, Lcom/xiaomi/push/b/k;->bbw:I

    .line 1123
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    const/4 v1, 0x1

    .line 1185
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hj()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1188
    const/4 v1, 0x2

    .line 1189
    invoke-virtual {p0}, Lcom/xiaomi/push/b/k;->Hl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1191
    :cond_1
    iput v0, p0, Lcom/xiaomi/push/b/k;->bbd:I

    .line 1192
    return v0
.end method

.method public k(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/k;
    .locals 1

    .prologue
    .line 1200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1201
    sparse-switch v0, :sswitch_data_0

    .line 1205
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/k;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    :sswitch_0
    return-object p0

    .line 1211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/k;->fb(I)Lcom/xiaomi/push/b/k;

    goto :goto_0

    .line 1215
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/k;->dW(Ljava/lang/String;)Lcom/xiaomi/push/b/k;

    goto :goto_0

    .line 1201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

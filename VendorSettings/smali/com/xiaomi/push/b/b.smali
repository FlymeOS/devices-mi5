.class public final Lcom/xiaomi/push/b/b;
.super Lcom/google/protobuf/micro/c;
.source "ChannelConfig.java"


# instance fields
.field private baU:Z

.field private baV:I

.field private baW:Z

.field private baX:Z

.field private baY:Z

.field private baZ:I

.field private bba:Z

.field private bbb:Z

.field private bbc:Ljava/util/List;

.field private bbd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 15
    iput v0, p0, Lcom/xiaomi/push/b/b;->baV:I

    .line 32
    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->baX:Z

    .line 49
    iput v0, p0, Lcom/xiaomi/push/b/b;->baZ:I

    .line 66
    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->bbb:Z

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/b;->bbd:I

    .line 10
    return-void
.end method

.method public static c(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/xiaomi/push/b/b;

    invoke-direct {v0}, Lcom/xiaomi/push/b/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/b;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static r([B)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/xiaomi/push/b/b;

    invoke-direct {v0}, Lcom/xiaomi/push/b/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/b;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/b;

    check-cast v0, Lcom/xiaomi/push/b/b;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/xiaomi/push/b/b;->bbd:I

    if-gez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->getSerializedSize()I

    .line 154
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/b;->bbd:I

    return v0
.end method

.method public GI()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/xiaomi/push/b/b;->baV:I

    return v0
.end method

.method public GJ()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->baU:Z

    return v0
.end method

.method public GK()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->baX:Z

    return v0
.end method

.method public GL()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->baW:Z

    return v0
.end method

.method public GM()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/push/b/b;->baZ:I

    return v0
.end method

.method public GN()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->baY:Z

    return v0
.end method

.method public GO()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->bbb:Z

    return v0
.end method

.method public GP()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->bba:Z

    return v0
.end method

.method public GQ()Ljava/util/List;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    return-object v0
.end method

.method public GR()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/b;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GI()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GK()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GM()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GO()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    return-void
.end method

.method public b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 195
    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :sswitch_0
    return-object p0

    .line 205
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readUInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/b;->eP(I)Lcom/xiaomi/push/b/b;

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/b;->cd(Z)Lcom/xiaomi/push/b/b;

    goto :goto_0

    .line 213
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/b;->eQ(I)Lcom/xiaomi/push/b/b;

    goto :goto_0

    .line 217
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/b;->ce(Z)Lcom/xiaomi/push/b/b;

    goto :goto_0

    .line 221
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/b;->dv(Ljava/lang/String;)Lcom/xiaomi/push/b/b;

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public cd(Z)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->baW:Z

    .line 37
    iput-boolean p1, p0, Lcom/xiaomi/push/b/b;->baX:Z

    .line 38
    return-object p0
.end method

.method public ce(Z)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->bba:Z

    .line 71
    iput-boolean p1, p0, Lcom/xiaomi/push/b/b;->bbb:Z

    .line 72
    return-object p0
.end method

.method public dv(Ljava/lang/String;)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->bbc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public eP(I)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->baU:Z

    .line 20
    iput p1, p0, Lcom/xiaomi/push/b/b;->baV:I

    .line 21
    return-object p0
.end method

.method public eQ(I)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->baY:Z

    .line 54
    iput p1, p0, Lcom/xiaomi/push/b/b;->baZ:I

    .line 55
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GJ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GI()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GK()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v2, 0x3

    .line 170
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GM()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GP()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    const/4 v2, 0x4

    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GO()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 181
    goto :goto_2

    .line 182
    :cond_2
    add-int v0, v2, v1

    .line 183
    invoke-virtual {p0}, Lcom/xiaomi/push/b/b;->GQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 185
    iput v0, p0, Lcom/xiaomi/push/b/b;->bbd:I

    .line 186
    return v0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

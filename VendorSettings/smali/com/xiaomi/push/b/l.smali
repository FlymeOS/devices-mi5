.class public final Lcom/xiaomi/push/b/l;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bcC:Z

.field private bcD:Lcom/google/protobuf/micro/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2192
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 2197
    sget-object v0, Lcom/google/protobuf/micro/a;->aWw:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/xiaomi/push/b/l;->bcD:Lcom/google/protobuf/micro/a;

    .line 2229
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/l;->bbd:I

    .line 2192
    return-void
.end method

.method public static x([B)Lcom/xiaomi/push/b/l;
    .locals 1

    .prologue
    .line 2275
    new-instance v0, Lcom/xiaomi/push/b/l;

    invoke-direct {v0}, Lcom/xiaomi/push/b/l;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/l;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/l;

    check-cast v0, Lcom/xiaomi/push/b/l;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/xiaomi/push/b/l;->bbd:I

    if-gez v0, :cond_0

    .line 2234
    invoke-virtual {p0}, Lcom/xiaomi/push/b/l;->getSerializedSize()I

    .line 2236
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/l;->bbd:I

    return v0
.end method

.method public Ie()Lcom/google/protobuf/micro/a;
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/xiaomi/push/b/l;->bcD:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public If()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/xiaomi/push/b/l;->bcC:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 2189
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/l;->l(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 2224
    invoke-virtual {p0}, Lcom/xiaomi/push/b/l;->If()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/l;->Ie()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    .line 2227
    :cond_0
    return-void
.end method

.method public c(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/l;
    .locals 1

    .prologue
    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/l;->bcC:Z

    .line 2202
    iput-object p1, p0, Lcom/xiaomi/push/b/l;->bcD:Lcom/google/protobuf/micro/a;

    .line 2203
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2241
    const/4 v0, 0x0

    .line 2242
    invoke-virtual {p0}, Lcom/xiaomi/push/b/l;->If()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    const/4 v1, 0x1

    .line 2244
    invoke-virtual {p0}, Lcom/xiaomi/push/b/l;->Ie()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_0
    iput v0, p0, Lcom/xiaomi/push/b/l;->bbd:I

    .line 2247
    return v0
.end method

.method public l(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/l;
    .locals 1

    .prologue
    .line 2255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 2256
    sparse-switch v0, :sswitch_data_0

    .line 2260
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/l;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2261
    :sswitch_0
    return-object p0

    .line 2266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->EN()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/l;->c(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/l;

    goto :goto_0

    .line 2256
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

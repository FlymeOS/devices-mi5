.class public Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
.super Ljava/lang/Object;
.source "XmPushActionNotification.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bgt:Lorg/apache/thrift/protocol/a;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmS:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final bmw:Lorg/apache/thrift/protocol/a;

.field private static final bnB:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final boX:Lorg/apache/thrift/protocol/a;

.field private static final boY:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public binaryExtra:Ljava/nio/ByteBuffer;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public extra:Ljava/util/Map;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public requireAck:Z

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionNotification"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgr:Lorg/apache/thrift/protocol/g;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bnx:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bny:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmu:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmv:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgt:Lorg/apache/thrift/protocol/a;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "requireAck"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->boX:Lorg/apache/thrift/protocol/a;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "payload"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmw:Lorg/apache/thrift/protocol/a;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "extra"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmS:Lorg/apache/thrift/protocol/a;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmA:Lorg/apache/thrift/protocol/a;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bnB:Lorg/apache/thrift/protocol/a;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "binaryExtra"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->boY:Lorg/apache/thrift/protocol/a;

    .line 157
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->boZ:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpa:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpb:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpc:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpd:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpe:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "requireAck"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpf:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "payload"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpg:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v10, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bph:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpi:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpj:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "binaryExtra"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgC:Ljava/util/Map;

    .line 183
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    .line 187
    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    .line 197
    iput-boolean p2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cQ(Z)V

    .line 199
    return-void
.end method


# virtual methods
.method public Jf()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KM()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KN()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KP()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KU()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LV()Z
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LW()[B
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/thrift/a;->h(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->e(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 525
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public LX()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lf()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lo()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lp()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ls()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    .line 969
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 972
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 973
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1073
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1076
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LV()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1077
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'requireAck\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 1069
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1071
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 978
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 979
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    goto :goto_1

    .line 981
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 985
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 986
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 987
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 989
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 993
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 994
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    goto :goto_1

    .line 996
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1000
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 1001
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1003
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1007
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 1008
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    goto :goto_1

    .line 1010
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1014
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1015
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 1016
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cQ(Z)V

    goto :goto_1

    .line 1018
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1022
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 1023
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    goto/16 :goto_1

    .line 1025
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1029
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    .line 1031
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 1032
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 1033
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_8

    .line 1037
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1041
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto/16 :goto_1

    .line 1044
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1048
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_a

    .line 1049
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1051
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1055
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_b

    .line 1056
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1058
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1062
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_c

    .line 1063
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MY()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 1065
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1079
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 1080
    return-void

    .line 976
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 732
    if-nez p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v1

    .line 736
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v2

    .line 737
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 738
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 740
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v1

    .line 745
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v2

    .line 746
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 747
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KM()Z

    move-result v1

    .line 754
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KM()Z

    move-result v2

    .line 755
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 756
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 758
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v1

    .line 763
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v2

    .line 764
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 765
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 767
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v1

    .line 772
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v2

    .line 773
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 774
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 776
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    :cond_b
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    if-ne v1, v2, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v1

    .line 790
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v2

    .line 791
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 792
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 794
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v1

    .line 799
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v2

    .line 800
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 801
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 803
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v1

    .line 808
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v2

    .line 809
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 810
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 812
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v1

    .line 817
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v2

    .line 818
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 819
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 821
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v1

    .line 826
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v2

    .line 827
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 828
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 830
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I
    .locals 2

    .prologue
    .line 843
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 851
    if-nez v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 856
    if-nez v0, :cond_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 861
    if-nez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 866
    if-nez v0, :cond_0

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 871
    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 875
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 876
    if-nez v0, :cond_0

    .line 880
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 881
    if-nez v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 886
    if-nez v0, :cond_0

    .line 890
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 891
    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 895
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 896
    if-nez v0, :cond_0

    .line 900
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LV()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LV()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 901
    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 905
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 906
    if-nez v0, :cond_0

    .line 910
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 911
    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 915
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 916
    if-nez v0, :cond_0

    .line 920
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 921
    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 925
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 930
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 931
    if-nez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 935
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 936
    if-nez v0, :cond_0

    .line 940
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 941
    if-nez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 945
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 946
    if-nez v0, :cond_0

    .line 950
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 951
    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 955
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 956
    if-nez v0, :cond_0

    .line 960
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1083
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 1085
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1086
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1089
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1096
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1097
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1101
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1102
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1106
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1108
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1113
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1114
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bgt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1115
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1119
    :cond_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->boX:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1120
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 1121
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1122
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1123
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1124
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmw:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1125
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1129
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 1130
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1131
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmS:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1133
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1134
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MJ()V

    .line 1141
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1144
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1145
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1146
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1147
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1151
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1152
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1153
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->bnB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1154
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1158
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 1159
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1160
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->boY:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1161
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->i(Ljava/nio/ByteBuffer;)V

    .line 1162
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1165
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1166
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1167
    return-void
.end method

.method public cP(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 1

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->cQ(Z)V

    .line 400
    return-object p0
.end method

.method public cQ(Z)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 414
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    .line 539
    return-object p0
.end method

.method public eK(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public eL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public eM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public eN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    .line 481
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 724
    if-nez p1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 726
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v1, :cond_0

    .line 727
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionNotification("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x1

    .line 1174
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1175
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1177
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lp()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1184
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_b

    .line 1187
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1196
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1205
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Jf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1212
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v0, "type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1215
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_4
    :goto_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const-string v0, "requireAck:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1226
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v0, "payload:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1229
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Lf()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1236
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const-string v0, "extra:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 1239
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->KU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1246
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1249
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ls()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1256
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1259
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->LX()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1266
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string v0, "binaryExtra:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_13

    .line 1269
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :cond_9
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1179
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1189
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1198
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1207
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1217
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1231
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1241
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1251
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1261
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1271
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lorg/apache/thrift/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_9

    :cond_14
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1282
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_0
    return-void
.end method

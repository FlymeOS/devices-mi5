.class public Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
.super Ljava/lang/Object;
.source "PushMetaInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmK:Lorg/apache/thrift/protocol/a;

.field private static final bmL:Lorg/apache/thrift/protocol/a;

.field private static final bmM:Lorg/apache/thrift/protocol/a;

.field private static final bmN:Lorg/apache/thrift/protocol/a;

.field private static final bmO:Lorg/apache/thrift/protocol/a;

.field private static final bmP:Lorg/apache/thrift/protocol/a;

.field private static final bmQ:Lorg/apache/thrift/protocol/a;

.field private static final bmR:Lorg/apache/thrift/protocol/a;

.field private static final bmS:Lorg/apache/thrift/protocol/a;

.field private static final bmT:Lorg/apache/thrift/protocol/a;

.field private static final bmU:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public description:Ljava/lang/String;

.field public extra:Ljava/util/Map;

.field public id:Ljava/lang/String;

.field public ignoreRegInfo:Z

.field public internal:Ljava/util/Map;

.field public messageTs:J

.field public notifyId:I

.field public notifyType:I

.field public passThrough:I

.field public title:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xd

    const/16 v6, 0x8

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "PushMetaInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    invoke-direct {v0, v1, v7, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmu:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "messageTs"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmK:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmL:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "title"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmM:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "description"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmN:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "notifyType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmO:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "url"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmP:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "passThrough"

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmQ:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "notifyId"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmR:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "extra"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmS:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "internal"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmT:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "ignoreRegInfo"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmU:Lorg/apache/thrift/protocol/a;

    .line 159
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmV:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmW:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "messageTs"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmX:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmY:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "title"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "description"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notifyType"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "url"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "passThrough"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notifyId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "internal"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bng:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "ignoreRegInfo"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bgC:Ljava/util/Map;

    .line 189
    const-class v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 4

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 211
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 212
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 213
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    .line 216
    :cond_0
    iget-wide v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    .line 217
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    .line 226
    :cond_3
    iget v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 227
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    .line 230
    :cond_4
    iget v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    .line 231
    iget v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    .line 232
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_5
    iput-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 247
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 260
    :cond_7
    iput-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    .line 262
    :cond_8
    iget-boolean v0, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 263
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KV()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    return-object v0
.end method

.method public KW()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    return-wide v0
.end method

.method public KX()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KY()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KZ()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public La()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lb()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lc()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ld()Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Le()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lf()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lg()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lh()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    return v0
.end method

.method public Li()Z
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v1, 0x0

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x1

    .line 1039
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 1042
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 1043
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v2, :cond_0

    .line 1165
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1168
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KX()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1169
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    iget-short v2, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v2, :pswitch_data_0

    .line 1161
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1163
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 1048
    :pswitch_0
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_1

    .line 1049
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    goto :goto_1

    .line 1051
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1055
    :pswitch_1
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1056
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    .line 1057
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->cA(Z)V

    goto :goto_1

    .line 1059
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1063
    :pswitch_2
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_3

    .line 1064
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    goto :goto_1

    .line 1066
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1070
    :pswitch_3
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_4

    .line 1071
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    goto :goto_1

    .line 1073
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1077
    :pswitch_4
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_5

    .line 1078
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    goto :goto_1

    .line 1080
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1084
    :pswitch_5
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v8, :cond_6

    .line 1085
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 1086
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->cB(Z)V

    goto :goto_1

    .line 1088
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1092
    :pswitch_6
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v7, :cond_7

    .line 1093
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 1095
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1099
    :pswitch_7
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v8, :cond_8

    .line 1100
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    .line 1101
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->cC(Z)V

    goto/16 :goto_1

    .line 1103
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1107
    :pswitch_8
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v8, :cond_9

    .line 1108
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    .line 1109
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->cD(Z)V

    goto/16 :goto_1

    .line 1111
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1115
    :pswitch_9
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v9, :cond_b

    .line 1117
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v2

    .line 1118
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    move v0, v1

    .line 1119
    :goto_2
    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v3, :cond_a

    .line 1123
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1125
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1127
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto/16 :goto_1

    .line 1130
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1134
    :pswitch_a
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v2, v9, :cond_d

    .line 1136
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v2

    .line 1137
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    move v0, v1

    .line 1138
    :goto_3
    iget v3, v2, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v3, :cond_c

    .line 1142
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1143
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1144
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1146
    :cond_c
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto/16 :goto_1

    .line 1149
    :cond_d
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1153
    :pswitch_b
    iget-byte v2, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1154
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 1155
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->cE(Z)V

    goto/16 :goto_1

    .line 1157
    :cond_e
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1171
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->validate()V

    .line 1172
    return-void

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 783
    if-nez p1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v0

    .line 786
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v1

    .line 787
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v2

    .line 788
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 789
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 791
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v1

    .line 805
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v2

    .line 806
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 807
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 809
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v1

    .line 814
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v2

    .line 815
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 816
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 818
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v1

    .line 823
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v2

    .line 824
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 825
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 827
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v1

    .line 832
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v2

    .line 833
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 834
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 836
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    if-ne v1, v2, :cond_0

    .line 840
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v1

    .line 841
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v2

    .line 842
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 843
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 845
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v1

    .line 850
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v2

    .line 851
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 852
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 854
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-ne v1, v2, :cond_0

    .line 858
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v1

    .line 859
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v2

    .line 860
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 861
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 863
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    if-ne v1, v2, :cond_0

    .line 867
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v1

    .line 868
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v2

    .line 869
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 870
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 872
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v1

    .line 877
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v2

    .line 878
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 879
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 881
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v1

    .line 886
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v2

    .line 887
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 888
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 890
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    if-ne v1, v2, :cond_0

    .line 894
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)I
    .locals 4

    .prologue
    .line 903
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
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

    .line 1030
    :cond_0
    :goto_0
    return v0

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 911
    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 916
    if-nez v0, :cond_0

    .line 920
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 921
    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 930
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 931
    if-nez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 935
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 936
    if-nez v0, :cond_0

    .line 940
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 941
    if-nez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 945
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 946
    if-nez v0, :cond_0

    .line 950
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 951
    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 955
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 956
    if-nez v0, :cond_0

    .line 960
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 961
    if-nez v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 965
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 966
    if-nez v0, :cond_0

    .line 970
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 971
    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 976
    if-nez v0, :cond_0

    .line 980
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 981
    if-nez v0, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 985
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 986
    if-nez v0, :cond_0

    .line 990
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 991
    if-nez v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 995
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 996
    if-nez v0, :cond_0

    .line 1000
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1001
    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1005
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1006
    if-nez v0, :cond_0

    .line 1010
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1011
    if-nez v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1015
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1016
    if-nez v0, :cond_0

    .line 1020
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1021
    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1025
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 1026
    if-nez v0, :cond_0

    .line 1030
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1175
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->validate()V

    .line 1177
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1178
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1179
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1180
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1183
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmK:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1184
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 1185
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1186
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1189
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1194
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmM:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1196
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1201
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmN:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1203
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1207
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmO:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1209
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 1210
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1213
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1214
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmP:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1215
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1219
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1220
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmQ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1221
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 1222
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1224
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1225
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmR:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1226
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 1227
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1229
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 1230
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1231
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmS:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1233
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1234
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MJ()V

    .line 1241
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1244
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 1245
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1246
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmT:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1248
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1254
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MJ()V

    .line 1256
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1259
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1260
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->bmU:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1261
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 1262
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1264
    :cond_c
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1265
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1266
    return-void
.end method

.method public cA(Z)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 335
    return-void
.end method

.method public cB(Z)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 430
    return-void
.end method

.method public cC(Z)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 477
    return-void
.end method

.method public cD(Z)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 500
    return-void
.end method

.method public cE(Z)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 593
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->b(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 775
    if-nez p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v1, :cond_0

    .line 778
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->a(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyId()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    return v0
.end method

.method public getPassThrough()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushMetaInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1273
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1275
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string v1, "messageTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v1, "topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1288
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->KZ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1295
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 1298
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->La()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1305
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1308
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1315
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const-string v1, "notifyType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1320
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lc()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1321
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 1324
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Ld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1331
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string v1, "passThrough:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1336
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Le()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1337
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    const-string v1, "notifyId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1342
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lf()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1343
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v1, "extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-nez v1, :cond_f

    .line 1346
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Lg()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1353
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v1, "internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-nez v1, :cond_10

    .line 1356
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->Li()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1363
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const-string v1, "ignoreRegInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1368
    :cond_9
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1277
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1290
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1300
    :cond_c
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1310
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1326
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1348
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1358
    :cond_10
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_0
    return-void
.end method

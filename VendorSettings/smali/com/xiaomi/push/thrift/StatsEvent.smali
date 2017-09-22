.class public Lcom/xiaomi/push/thrift/StatsEvent;
.super Ljava/lang/Object;
.source "StatsEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final bgA:Lorg/apache/thrift/protocol/a;

.field private static final bgB:Lorg/apache/thrift/protocol/a;

.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bgs:Lorg/apache/thrift/protocol/a;

.field private static final bgt:Lorg/apache/thrift/protocol/a;

.field private static final bgu:Lorg/apache/thrift/protocol/a;

.field private static final bgv:Lorg/apache/thrift/protocol/a;

.field private static final bgw:Lorg/apache/thrift/protocol/a;

.field private static final bgx:Lorg/apache/thrift/protocol/a;

.field private static final bgy:Lorg/apache/thrift/protocol/a;

.field private static final bgz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public annotation:Ljava/lang/String;

.field public chid:B

.field public clientIp:I

.field public connpt:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public subvalue:I

.field public time:I

.field public type:I

.field public user:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    const/16 v5, 0x8

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "StatsEvent"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgr:Lorg/apache/thrift/protocol/g;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "chid"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgs:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    invoke-direct {v0, v1, v5, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgt:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "value"

    invoke-direct {v0, v1, v5, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgu:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "connpt"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgv:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "host"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgw:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "subvalue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgx:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "annotation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgy:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "user"

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgz:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "time"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgA:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "clientIp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgB:Lorg/apache/thrift/protocol/a;

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgD:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "chid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgE:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgF:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "value"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgG:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "connpt"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgH:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "host"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgI:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "subvalue"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgJ:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "annotation"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgK:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "user"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgL:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "time"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent$_Fields;->bgM:Lcom/xiaomi/push/thrift/StatsEvent$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "clientIp"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgC:Ljava/util/Map;

    .line 169
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvent;

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvent;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/thrift/StatsEvent;)V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    .line 195
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 196
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 197
    iget-byte v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iput-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 198
    iget v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 199
    iget v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 200
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    .line 206
    :cond_1
    iget v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 207
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    .line 213
    :cond_3
    iget v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 214
    iget v0, p1, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    .line 215
    return-void
.end method


# virtual methods
.method public Je()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Jf()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Jg()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Jh()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ji()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Jj()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Jk()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Jl()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Jm()Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Jn()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 855
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 858
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 859
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 944
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 947
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Je()Z

    move-result v0

    if-nez v0, :cond_b

    .line 948
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'chid\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 940
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 942
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 864
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 865
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 866
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->cl(Z)V

    goto :goto_1

    .line 868
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 872
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 873
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 874
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->cm(Z)V

    goto :goto_1

    .line 876
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 880
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_3

    .line 881
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 882
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->cn(Z)V

    goto :goto_1

    .line 884
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 888
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 889
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    goto :goto_1

    .line 891
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 895
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 896
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    goto :goto_1

    .line 898
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 902
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_6

    .line 903
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 904
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->co(Z)V

    goto :goto_1

    .line 906
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 910
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 911
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    goto/16 :goto_1

    .line 913
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 917
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_8

    .line 918
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 920
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 924
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_9

    .line 925
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 926
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->cp(Z)V

    goto/16 :goto_1

    .line 928
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 932
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_a

    .line 933
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    .line 934
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->cq(Z)V

    goto/16 :goto_1

    .line 936
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 950
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jf()Z

    move-result v0

    if-nez v0, :cond_c

    .line 951
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jg()Z

    move-result v0

    if-nez v0, :cond_d

    .line 954
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'value\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 957
    return-void

    .line 862
    nop

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
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/push/thrift/StatsEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 637
    if-nez p1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    iget-byte v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iget-byte v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    if-ne v1, v2, :cond_0

    .line 654
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    if-ne v1, v2, :cond_0

    .line 663
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    if-ne v1, v2, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v1

    .line 668
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v2

    .line 669
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 670
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 672
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v1

    .line 677
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v2

    .line 678
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 679
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v1

    .line 686
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v2

    .line 687
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 688
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 690
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    if-ne v1, v2, :cond_0

    .line 694
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v1

    .line 695
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v2

    .line 696
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 697
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 699
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v1

    .line 704
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v2

    .line 705
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 706
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 708
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v1

    .line 713
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v2

    .line 714
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 715
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 717
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    if-ne v1, v2, :cond_0

    .line 721
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v1

    .line 722
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v2

    .line 723
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 724
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 726
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    iget v2, p1, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    if-ne v1, v2, :cond_0

    .line 730
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/push/thrift/StatsEvent;)I
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
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

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Je()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Je()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 747
    if-nez v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Je()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iget-byte v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(BB)I

    move-result v0

    .line 752
    if-nez v0, :cond_0

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 757
    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 761
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 762
    if-nez v0, :cond_0

    .line 766
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 767
    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 772
    if-nez v0, :cond_0

    .line 776
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 777
    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 782
    if-nez v0, :cond_0

    .line 786
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 787
    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 791
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 792
    if-nez v0, :cond_0

    .line 796
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 797
    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 801
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 802
    if-nez v0, :cond_0

    .line 806
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 807
    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 811
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 812
    if-nez v0, :cond_0

    .line 816
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 817
    if-nez v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 822
    if-nez v0, :cond_0

    .line 826
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 827
    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 831
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 832
    if-nez v0, :cond_0

    .line 836
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 837
    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 841
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    iget v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 842
    if-nez v0, :cond_0

    .line 846
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 962
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 963
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgs:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 964
    iget-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeByte(B)V

    .line 965
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 966
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 967
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 968
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 969
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 970
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 971
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 972
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 974
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgw:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 980
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 985
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 986
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 987
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 991
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgy:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 992
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 998
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 999
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1003
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1004
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1005
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 1006
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1008
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1009
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->bgB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1010
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 1011
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1013
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1014
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1015
    return-void
.end method

.method public c(B)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 246
    iput-byte p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->cl(Z)V

    .line 248
    return-object p0
.end method

.method public cl(Z)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 262
    return-void
.end method

.method public cm(Z)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 285
    return-void
.end method

.method public cn(Z)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 308
    return-void
.end method

.method public co(Z)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 379
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->b(Lcom/xiaomi/push/thrift/StatsEvent;)I

    move-result v0

    return v0
.end method

.method public cp(Z)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 450
    return-void
.end method

.method public cq(Z)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 473
    return-void
.end method

.method public ek(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public en(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 629
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 631
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 632
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->a(Lcom/xiaomi/push/thrift/StatsEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public fk(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 269
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->cm(Z)V

    .line 271
    return-object p0
.end method

.method public fl(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 292
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->cn(Z)V

    .line 294
    return-object p0
.end method

.method public fm(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 363
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->co(Z)V

    .line 365
    return-object p0
.end method

.method public fn(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 434
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->cp(Z)V

    .line 436
    return-object p0
.end method

.method public fo(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1

    .prologue
    .line 457
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->cq(Z)V

    .line 459
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    const-string v1, "chid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-byte v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1033
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v1, "connpt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1036
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Ji()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    const-string v1, "host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1045
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jj()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v1, "subvalue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1058
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v1, "annotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1061
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1071
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1078
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1083
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->Jn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1084
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v1, "clientIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    :cond_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1047
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1063
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1073
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1099
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'connpt\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_0
    return-void
.end method

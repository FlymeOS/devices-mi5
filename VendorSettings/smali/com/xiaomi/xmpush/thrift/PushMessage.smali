.class public Lcom/xiaomi/xmpush/thrift/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmt:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final bmw:Lorg/apache/thrift/protocol/a;

.field private static final bmx:Lorg/apache/thrift/protocol/a;

.field private static final bmy:Lorg/apache/thrift/protocol/a;

.field private static final bmz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public collapseKey:Ljava/lang/String;

.field public createAt:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public to:Lcom/xiaomi/xmpush/thrift/Target;

.field public ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "PushMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "to"

    invoke-direct {v0, v1, v10, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmt:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmu:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmv:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "payload"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmw:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "createAt"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmx:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "ttl"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmy:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "collapseKey"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmz:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmA:Lorg/apache/thrift/protocol/a;

    .line 136
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 137
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmB:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "to"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v10, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmC:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmD:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmE:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "payload"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmF:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "createAt"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmG:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "ttl"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmH:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "collapseKey"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;->bmI:Lcom/xiaomi/xmpush/thrift/PushMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bgC:Ljava/util/Map;

    .line 154
    const-class v0, Lcom/xiaomi/xmpush/thrift/PushMessage;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 158
    return-void
.end method


# virtual methods
.method public KL()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 256
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

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
    .line 280
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public KP()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KQ()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    return-wide v0
.end method

.method public KR()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KS()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KT()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

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
    .line 398
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

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
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 723
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 726
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 727
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 795
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 798
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->validate()V

    .line 799
    return-void

    .line 730
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 791
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 793
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 732
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 733
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    .line 734
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 736
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 740
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_2

    .line 741
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 743
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 747
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 748
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 750
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 754
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 755
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    goto :goto_1

    .line 757
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 761
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 762
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    .line 763
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/PushMessage;->cy(Z)V

    goto :goto_1

    .line 765
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 769
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_6

    .line 770
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    .line 771
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/PushMessage;->cz(Z)V

    goto :goto_1

    .line 773
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 777
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 778
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 780
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 784
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_8

    .line 785
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 787
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 730
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
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v1

    .line 547
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v2

    .line 548
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 549
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KM()Z

    move-result v1

    .line 556
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KM()Z

    move-result v2

    .line 557
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 558
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 560
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KN()Z

    move-result v1

    .line 565
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KN()Z

    move-result v2

    .line 566
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 567
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 569
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KP()Z

    move-result v1

    .line 574
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KP()Z

    move-result v2

    .line 575
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 576
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 578
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v1

    .line 583
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v2

    .line 584
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 585
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 587
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 591
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v1

    .line 592
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v2

    .line 593
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 594
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 596
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 600
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v1

    .line 601
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v2

    .line 602
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 603
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 605
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v1

    .line 610
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v2

    .line 611
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 612
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 614
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/PushMessage;)I
    .locals 4

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
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

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 635
    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 640
    if-nez v0, :cond_0

    .line 644
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 645
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 650
    if-nez v0, :cond_0

    .line 654
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 655
    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 659
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 660
    if-nez v0, :cond_0

    .line 664
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KP()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KP()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 665
    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 669
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 670
    if-nez v0, :cond_0

    .line 674
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 675
    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 679
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 680
    if-nez v0, :cond_0

    .line 684
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 685
    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 689
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 690
    if-nez v0, :cond_0

    .line 694
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 695
    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 699
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 700
    if-nez v0, :cond_0

    .line 704
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 705
    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 710
    if-nez v0, :cond_0

    .line 714
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->validate()V

    .line 804
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 805
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 808
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 809
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 813
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 814
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 818
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 819
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 823
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmw:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 824
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 827
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 829
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 830
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 832
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmy:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 834
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 835
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 837
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 838
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 839
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 840
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 844
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 846
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 847
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 851
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 852
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 853
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->b(Lcom/xiaomi/xmpush/thrift/PushMessage;)I

    move-result v0

    return v0
.end method

.method public cy(Z)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 334
    return-void
.end method

.method public cz(Z)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 357
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 535
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v1, :cond_0

    .line 538
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->a(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PushMessage("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x1

    .line 860
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    const-string v0, "to:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_6

    .line 863
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :goto_0
    const/4 v0, 0x0

    .line 869
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :cond_1
    const-string v0, "id:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 872
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :goto_1
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v0, "appId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 880
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :goto_2
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v0, "payload:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 888
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string v0, "createAt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 899
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 900
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v0, "ttl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 905
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 906
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v0, "collapseKey:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 909
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 916
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v0, "packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 919
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_5
    :goto_5
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 874
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 882
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 890
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 911
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 921
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 935
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 938
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'payload\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_2
    return-void
.end method

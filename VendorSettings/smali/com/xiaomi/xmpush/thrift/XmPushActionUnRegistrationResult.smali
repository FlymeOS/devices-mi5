.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
.super Ljava/lang/Object;
.source "XmPushActionUnRegistrationResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final bnA:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bom:Lorg/apache/thrift/protocol/a;

.field private static final bon:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionUnRegistrationResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bnx:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bny:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmu:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmv:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bnA:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "errorCode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bom:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "reason"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bon:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmA:Lorg/apache/thrift/protocol/a;

    .line 135
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 136
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brt:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->bru:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brv:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brw:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brx:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->bry:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "errorCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brz:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "reason"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;->brA:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bgC:Ljava/util/Map;

    .line 153
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 157
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

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
    .line 305
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

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
    .line 400
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LD()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LE()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

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
    .line 233
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

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
    .line 257
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lr()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 725
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 728
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 729
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 797
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 800
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LD()Z

    move-result v0

    if-nez v0, :cond_9

    .line 801
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 793
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 795
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 734
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 735
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 737
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 741
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 742
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 743
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 745
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 749
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 750
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 752
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 756
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 757
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 759
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 763
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_5

    .line 764
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 765
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 767
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 771
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 772
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->cJ(Z)V

    goto :goto_1

    .line 775
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 779
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 780
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 782
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 786
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_8

    .line 787
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 789
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 803
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->validate()V

    .line 804
    return-void

    .line 732
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

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 545
    if-nez p1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v1

    .line 549
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v2

    .line 550
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 551
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 553
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v1

    .line 558
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v2

    .line 559
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 560
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KM()Z

    move-result v1

    .line 567
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KM()Z

    move-result v2

    .line 568
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 569
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 571
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KN()Z

    move-result v1

    .line 576
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KN()Z

    move-result v2

    .line 577
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 578
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 580
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v1

    .line 585
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v2

    .line 586
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 587
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 589
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    :cond_b
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v1

    .line 603
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v2

    .line 604
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 605
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 607
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v1

    .line 612
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v2

    .line 613
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 614
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 616
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)I
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
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

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 637
    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 642
    if-nez v0, :cond_0

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 647
    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 652
    if-nez v0, :cond_0

    .line 656
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 657
    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 662
    if-nez v0, :cond_0

    .line 666
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 667
    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 672
    if-nez v0, :cond_0

    .line 676
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 677
    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 682
    if-nez v0, :cond_0

    .line 686
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 687
    if-nez v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LD()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 691
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 692
    if-nez v0, :cond_0

    .line 696
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 697
    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 702
    if-nez v0, :cond_0

    .line 706
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 707
    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 712
    if-nez v0, :cond_0

    .line 716
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->validate()V

    .line 809
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 810
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 813
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 820
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 821
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 825
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 826
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 830
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 831
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    if-eqz v0, :cond_4

    .line 835
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bnA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 837
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->b(Lorg/apache/thrift/protocol/d;)V

    .line 838
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 841
    :cond_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bom:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 842
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 843
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 844
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 846
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bon:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 847
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 851
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 852
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 853
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 854
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 858
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 859
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 860
    return-void
.end method

.method public cJ(Z)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 359
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 537
    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    if-eqz v1, :cond_0

    .line 540
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionUnRegistrationResult("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x1

    .line 867
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 870
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lp()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 877
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_7

    .line 880
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 889
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 897
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    if-nez v0, :cond_a

    .line 906
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_3
    :goto_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v0, "errorCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 920
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 927
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 930
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :cond_5
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 872
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 882
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 891
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 899
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 908
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 922
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 932
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 943
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 946
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_1
    return-void
.end method

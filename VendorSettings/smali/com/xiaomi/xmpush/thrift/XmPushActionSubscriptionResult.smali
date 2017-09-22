.class public Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;
.super Ljava/lang/Object;
.source "XmPushActionSubscriptionResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmL:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final bnA:Lorg/apache/thrift/protocol/a;

.field private static final bnB:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bom:Lorg/apache/thrift/protocol/a;

.field private static final bon:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionSubscriptionResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bgr:Lorg/apache/thrift/protocol/g;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnx:Lorg/apache/thrift/protocol/a;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bny:Lorg/apache/thrift/protocol/a;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmu:Lorg/apache/thrift/protocol/a;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmv:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnA:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "errorCode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bom:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "reason"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bon:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmL:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmA:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v6, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnB:Lorg/apache/thrift/protocol/a;

    .line 142
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 143
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->bqX:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->bqY:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->bqZ:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->bra:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->brb:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->brc:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "errorCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->brd:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "reason"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->bre:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->brf:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;->brg:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bgC:Ljava/util/Map;

    .line 164
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 168
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

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
    .line 319
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

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
    .line 438
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KY()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

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
    .line 368
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LE()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

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
    .line 247
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

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
    .line 271
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 343
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

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
    .line 462
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

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

    .line 851
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 854
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 855
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 937
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 940
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->validate()V

    .line 941
    return-void

    .line 858
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 933
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 935
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 860
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 861
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 863
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 867
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 868
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 869
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 871
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 875
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 876
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 878
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 882
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 883
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 885
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 889
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_5

    .line 890
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 891
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 893
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 897
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 898
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    .line 899
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->cJ(Z)V

    goto :goto_1

    .line 901
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 905
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 906
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 908
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 912
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_8

    .line 913
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    goto/16 :goto_1

    .line 915
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 919
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_9

    .line 920
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 922
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 926
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_a

    .line 927
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 929
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 858
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

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v1

    .line 637
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v2

    .line 638
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 639
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 641
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v1

    .line 646
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v2

    .line 647
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 648
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 650
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KM()Z

    move-result v1

    .line 655
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KM()Z

    move-result v2

    .line 656
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 657
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 659
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v1

    .line 664
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v2

    .line 665
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 666
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 668
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v1

    .line 673
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v2

    .line 674
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 675
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 677
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v1

    .line 682
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v2

    .line 683
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 684
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 686
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 690
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v1

    .line 691
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v2

    .line 692
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 693
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 695
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v1

    .line 700
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v2

    .line 701
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 702
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 704
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v1

    .line 709
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v2

    .line 710
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 711
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 713
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v1

    .line 718
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v2

    .line 719
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 720
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 722
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;)I
    .locals 4

    .prologue
    .line 735
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
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

    .line 842
    :cond_0
    :goto_0
    return v0

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 743
    if-nez v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 748
    if-nez v0, :cond_0

    .line 752
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 753
    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 758
    if-nez v0, :cond_0

    .line 762
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 763
    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 767
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 768
    if-nez v0, :cond_0

    .line 772
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 773
    if-nez v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 778
    if-nez v0, :cond_0

    .line 782
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 783
    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 787
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 788
    if-nez v0, :cond_0

    .line 792
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 793
    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 798
    if-nez v0, :cond_0

    .line 802
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 803
    if-nez v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 808
    if-nez v0, :cond_0

    .line 812
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 813
    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 817
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 818
    if-nez v0, :cond_0

    .line 822
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 823
    if-nez v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 827
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 828
    if-nez v0, :cond_0

    .line 832
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 833
    if-nez v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 837
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 838
    if-nez v0, :cond_0

    .line 842
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->validate()V

    .line 946
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 947
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 950
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 957
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 958
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 962
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 963
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 967
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 969
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    if-eqz v0, :cond_4

    .line 974
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 975
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 976
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->b(Lorg/apache/thrift/protocol/d;)V

    .line 977
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 980
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bom:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 982
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 983
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 986
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 987
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bon:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 988
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 992
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 993
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 994
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 995
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 999
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1000
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1001
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1002
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1006
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1007
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1008
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->bnB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1009
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1013
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1014
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1015
    return-void
.end method

.method public cJ(Z)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 373
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 625
    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 627
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    if-eqz v1, :cond_0

    .line 628
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionSubscriptionResult("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x1

    .line 1022
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1025
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lp()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1032
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_b

    .line 1035
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1044
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1053
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    if-nez v0, :cond_e

    .line 1063
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LD()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1070
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const-string v0, "errorCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1075
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1076
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1079
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KY()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1086
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1089
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1096
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1099
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1106
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1109
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_9
    :goto_8
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1037
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1046
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1055
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1065
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1081
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1091
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->topic:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1101
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1111
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_0
    return-void
.end method

.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
.super Ljava/lang/Object;
.source "XmPushActionUnRegistration.java"

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

.field private static final bnD:Lorg/apache/thrift/protocol/a;

.field private static final bnI:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bnz:Lorg/apache/thrift/protocol/a;

.field private static final bpl:Lorg/apache/thrift/protocol/a;

.field private static final bpm:Lorg/apache/thrift/protocol/a;


# instance fields
.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionUnRegistration"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnx:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bny:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmu:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmv:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "regId"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnD:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appVersion"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bpl:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmA:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "token"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bpm:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceId"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnI:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnz:Lorg/apache/thrift/protocol/a;

    .line 143
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 144
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->bri:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brj:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brk:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brl:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brm:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "regId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brn:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appVersion"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->bro:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brp:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "token"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brq:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;->brr:Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bgC:Ljava/util/Map;

    .line 165
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

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
    .line 321
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

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
    .line 393
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LY()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LZ()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

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
    .line 249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

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
    .line 273
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lq()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lu()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lz()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 854
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 857
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 858
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 938
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 941
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->validate()V

    .line 942
    return-void

    .line 861
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 934
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 936
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 863
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 864
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    goto :goto_1

    .line 866
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 870
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 871
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 872
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 874
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 878
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 879
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    goto :goto_1

    .line 881
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 885
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 886
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    goto :goto_1

    .line 888
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 892
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_5

    .line 893
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    goto :goto_1

    .line 895
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 899
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_6

    .line 900
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    goto :goto_1

    .line 902
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 906
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 907
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 909
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 913
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_8

    .line 914
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    goto/16 :goto_1

    .line 916
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 920
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_9

    .line 921
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 927
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_a

    .line 928
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 930
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 861
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

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->validate()V

    .line 947
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 948
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 951
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 958
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 959
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 963
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 964
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 968
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 969
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 973
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnD:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 975
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 979
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 980
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bpl:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 982
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 986
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 987
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 988
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 989
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 993
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 994
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 995
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bpm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 996
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1000
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1001
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1002
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnI:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1003
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1007
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1008
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1009
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->bnz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1010
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1014
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1015
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1016
    return-void
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 636
    if-nez p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v1

    .line 640
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v2

    .line 641
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 642
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 644
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v1

    .line 649
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v2

    .line 650
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 651
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 653
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KM()Z

    move-result v1

    .line 658
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KM()Z

    move-result v2

    .line 659
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 660
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 662
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KN()Z

    move-result v1

    .line 667
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KN()Z

    move-result v2

    .line 668
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 669
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 671
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v1

    .line 676
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v2

    .line 677
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 678
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 680
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v1

    .line 685
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v2

    .line 686
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 687
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 689
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v1

    .line 694
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v2

    .line 695
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 696
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 698
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v1

    .line 703
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v2

    .line 704
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 705
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 707
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v1

    .line 712
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v2

    .line 713
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 714
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 716
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v1

    .line 721
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v2

    .line 722
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 723
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 725
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)I
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
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

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 746
    if-nez v0, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 751
    if-nez v0, :cond_0

    .line 755
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 756
    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 761
    if-nez v0, :cond_0

    .line 765
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 766
    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 771
    if-nez v0, :cond_0

    .line 775
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 776
    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 781
    if-nez v0, :cond_0

    .line 785
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 791
    if-nez v0, :cond_0

    .line 795
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 796
    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 800
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 805
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 806
    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 810
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 815
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 816
    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 820
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 825
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 830
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 835
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 840
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 841
    if-nez v0, :cond_0

    .line 845
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->c(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)I

    move-result v0

    return v0
.end method

.method public eU(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public eV(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public eW(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    .line 336
    return-object p0
.end method

.method public eX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    .line 384
    return-object p0
.end method

.method public eY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    .line 408
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 628
    if-nez p1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    if-eqz v1, :cond_0

    .line 631
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionUnRegistration("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x1

    .line 1023
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1026
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lp()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1033
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_a

    .line 1036
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1045
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1053
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v0, "regId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1062
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v0, "appVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1072
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1079
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1082
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->LZ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1089
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v0, "token:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1092
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1099
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1102
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1109
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1112
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_8
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1028
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1038
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1047
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1055
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1064
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1074
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1084
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1094
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1104
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1114
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_13
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1128
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_1
    return-void
.end method

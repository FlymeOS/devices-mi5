.class public Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
.super Ljava/lang/Object;
.source "XmPushActionAckMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field public static final bgC:Ljava/util/Map;

.field private static final bgr:Lorg/apache/thrift/protocol/g;

.field private static final bmA:Lorg/apache/thrift/protocol/a;

.field private static final bmK:Lorg/apache/thrift/protocol/a;

.field private static final bmL:Lorg/apache/thrift/protocol/a;

.field private static final bmu:Lorg/apache/thrift/protocol/a;

.field private static final bmv:Lorg/apache/thrift/protocol/a;

.field private static final bnA:Lorg/apache/thrift/protocol/a;

.field private static final bnB:Lorg/apache/thrift/protocol/a;

.field private static final bnC:Lorg/apache/thrift/protocol/a;

.field private static final bnD:Lorg/apache/thrift/protocol/a;

.field private static final bnE:Lorg/apache/thrift/protocol/a;

.field private static final bnF:Lorg/apache/thrift/protocol/a;

.field private static final bnG:Lorg/apache/thrift/protocol/a;

.field private static final bnH:Lorg/apache/thrift/protocol/a;

.field private static final bnI:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bnz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public callbackUrl:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceStatus:S

.field public id:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public isOnline:Z

.field public messageTs:J

.field public packageName:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionAckMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bgr:Lorg/apache/thrift/protocol/g;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnx:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bny:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmu:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmv:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "messageTs"

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmK:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    invoke-direct {v0, v1, v6, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmL:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnz:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnA:Lorg/apache/thrift/protocol/a;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmA:Lorg/apache/thrift/protocol/a;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnB:Lorg/apache/thrift/protocol/a;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "isOnline"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnC:Lorg/apache/thrift/protocol/a;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "regId"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnD:Lorg/apache/thrift/protocol/a;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "callbackUrl"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnE:Lorg/apache/thrift/protocol/a;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "userAccount"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnF:Lorg/apache/thrift/protocol/a;

    .line 50
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceStatus"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnG:Lorg/apache/thrift/protocol/a;

    .line 51
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "imeiMd5"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnH:Lorg/apache/thrift/protocol/a;

    .line 52
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceId"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnI:Lorg/apache/thrift/protocol/a;

    .line 186
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 187
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnJ:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnK:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnL:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnM:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnN:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "messageTs"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnO:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnP:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnQ:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnR:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnS:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnT:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "isOnline"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnU:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "regId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnV:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "callbackUrl"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnW:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userAccount"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnX:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceStatus"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnY:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "imeiMd5"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->bnZ:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bgC:Ljava/util/Map;

    .line 222
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 223
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 228
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

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
    .line 410
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

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
    .line 529
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public KX()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public KY()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

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
    .line 338
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

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
    .line 362
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 481
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

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
    .line 505
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

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
    .line 553
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lt()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Lu()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lv()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lw()Z
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Lx()Z
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Ly()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

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
    .line 719
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 424
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cA(Z)V

    .line 426
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 1332
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 1335
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 1336
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1469
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1472
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KX()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1473
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 1465
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1467
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 1341
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 1342
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1344
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1348
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_2

    .line 1349
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1350
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 1352
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1356
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 1357
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 1359
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1363
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 1364
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1366
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1370
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 1371
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 1372
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cA(Z)V

    goto :goto_1

    .line 1374
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1378
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_6

    .line 1379
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 1381
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1385
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 1386
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 1388
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1392
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_8

    .line 1393
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 1394
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 1396
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1400
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_9

    .line 1401
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1403
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1407
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_a

    .line 1408
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1410
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1414
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1415
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 1416
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cH(Z)V

    goto/16 :goto_1

    .line 1418
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1422
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_c

    .line 1423
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1425
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1429
    :pswitch_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_d

    .line 1430
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1432
    :cond_d
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1436
    :pswitch_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_e

    .line 1437
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 1439
    :cond_e
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1443
    :pswitch_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_f

    .line 1444
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MV()S

    move-result v0

    iput-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 1445
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cI(Z)V

    goto/16 :goto_1

    .line 1447
    :cond_f
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1451
    :pswitch_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_10

    .line 1452
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1454
    :cond_10
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1458
    :pswitch_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_11

    .line 1459
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1461
    :cond_11
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1475
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1476
    return-void

    .line 1339
    nop

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 981
    if-nez p1, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return v0

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v1

    .line 985
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v2

    .line 986
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 987
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 989
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v1

    .line 994
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v2

    .line 995
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 996
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 998
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KM()Z

    move-result v1

    .line 1003
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KM()Z

    move-result v2

    .line 1004
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1005
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KN()Z

    move-result v1

    .line 1012
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KN()Z

    move-result v2

    .line 1013
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 1014
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    :cond_9
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v1

    .line 1030
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v2

    .line 1031
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 1032
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v1

    .line 1039
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v2

    .line 1040
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 1041
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v1

    .line 1048
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v2

    .line 1049
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 1050
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v1

    .line 1057
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v2

    .line 1058
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 1059
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v1

    .line 1066
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v2

    .line 1067
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 1068
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v1

    .line 1075
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v2

    .line 1076
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 1077
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1079
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    if-ne v1, v2, :cond_0

    .line 1083
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v1

    .line 1084
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v2

    .line 1085
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 1086
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v1

    .line 1093
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v2

    .line 1094
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 1095
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v1

    .line 1102
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v2

    .line 1103
    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    .line 1104
    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v1

    .line 1111
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v2

    .line 1112
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 1113
    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1115
    iget-short v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    iget-short v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    if-ne v1, v2, :cond_0

    .line 1119
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v1

    .line 1120
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v2

    .line 1121
    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    .line 1122
    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v1

    .line 1129
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v2

    .line 1130
    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    .line 1131
    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I
    .locals 4

    .prologue
    .line 1146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1147
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

    .line 1323
    :cond_0
    :goto_0
    return v0

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1154
    if-nez v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1159
    if-nez v0, :cond_0

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1164
    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1169
    if-nez v0, :cond_0

    .line 1173
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1174
    if-nez v0, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1179
    if-nez v0, :cond_0

    .line 1183
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1184
    if-nez v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1188
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1189
    if-nez v0, :cond_0

    .line 1193
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1194
    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KX()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1198
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 1199
    if-nez v0, :cond_0

    .line 1203
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1204
    if-nez v0, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1208
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1209
    if-nez v0, :cond_0

    .line 1213
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1214
    if-nez v0, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1218
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1219
    if-nez v0, :cond_0

    .line 1223
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1224
    if-nez v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1228
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1229
    if-nez v0, :cond_0

    .line 1233
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1234
    if-nez v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1238
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1239
    if-nez v0, :cond_0

    .line 1243
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1244
    if-nez v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1248
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1249
    if-nez v0, :cond_0

    .line 1253
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1254
    if-nez v0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1258
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 1259
    if-nez v0, :cond_0

    .line 1263
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1264
    if-nez v0, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1268
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1269
    if-nez v0, :cond_0

    .line 1273
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1274
    if-nez v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1278
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1279
    if-nez v0, :cond_0

    .line 1283
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1284
    if-nez v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1288
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1289
    if-nez v0, :cond_0

    .line 1293
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1294
    if-nez v0, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1298
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    iget-short v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(SS)I

    move-result v0

    .line 1299
    if-nez v0, :cond_0

    .line 1303
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1304
    if-nez v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1308
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1309
    if-nez v0, :cond_0

    .line 1313
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1314
    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1318
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1319
    if-nez v0, :cond_0

    .line 1323
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1481
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1482
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1485
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1490
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1492
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1493
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1497
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1498
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1502
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1503
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1506
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmK:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1507
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 1508
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1509
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1510
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1511
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1512
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1516
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1517
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1518
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1519
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1523
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v0, :cond_6

    .line 1524
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1525
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1526
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1527
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1530
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1531
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1532
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1533
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1537
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1538
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1539
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1540
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1544
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1545
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnC:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1546
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 1547
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1549
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1550
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1551
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnD:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1552
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1556
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1557
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1558
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1559
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1563
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1564
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1565
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnF:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1566
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1570
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1571
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnG:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1572
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->d(S)V

    .line 1573
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1575
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1576
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1577
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnH:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1578
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1582
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1583
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1584
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bnI:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1585
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1589
    :cond_f
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1590
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1591
    return-void
.end method

.method public c(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 662
    iput-short p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 663
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->cI(Z)V

    .line 664
    return-object p0
.end method

.method public cA(Z)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 440
    return-void
.end method

.method public cH(Z)V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 583
    return-void
.end method

.method public cI(Z)V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 678
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I

    move-result v0

    return v0
.end method

.method public eA(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public eB(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 973
    if-nez p1, :cond_1

    .line 977
    :cond_0
    :goto_0
    return v0

    .line 975
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    if-eqz v1, :cond_0

    .line 976
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public ey(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public ez(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionAckMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    const/4 v0, 0x1

    .line 1598
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1599
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1601
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1607
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lp()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1608
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_10

    .line 1611
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1620
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1628
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const-string v0, "messageTs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1638
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 1641
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1648
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1651
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lr()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1658
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-nez v0, :cond_15

    .line 1661
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1668
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1671
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1678
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1681
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1688
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    const-string v0, "isOnline:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1693
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lu()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1694
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    const-string v0, "regId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 1697
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lv()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1704
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    const-string v0, "callbackUrl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1707
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1714
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const-string v0, "userAccount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1717
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lx()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1724
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    const-string v0, "deviceStatus:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    iget-short v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1729
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ly()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1730
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    const-string v0, "imeiMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1733
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    :cond_d
    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Lz()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1740
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 1743
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    :cond_e
    :goto_d
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1603
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1613
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1622
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1630
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1643
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1653
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1663
    :cond_15
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1673
    :cond_16
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1683
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1699
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1709
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1719
    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1735
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1745
    :cond_1c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1d
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1756
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1759
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :cond_1
    return-void
.end method

.class public Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
.super Ljava/lang/Object;
.source "XmPushActionRegistration.java"

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

.field private static final bnH:Lorg/apache/thrift/protocol/a;

.field private static final bnI:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bnz:Lorg/apache/thrift/protocol/a;

.field private static final bon:Lorg/apache/thrift/protocol/a;

.field private static final bpl:Lorg/apache/thrift/protocol/a;

.field private static final bpm:Lorg/apache/thrift/protocol/a;

.field private static final bpn:Lorg/apache/thrift/protocol/a;

.field private static final bpo:Lorg/apache/thrift/protocol/a;

.field private static final bpp:Lorg/apache/thrift/protocol/a;

.field private static final bpq:Lorg/apache/thrift/protocol/a;

.field private static final bpr:Lorg/apache/thrift/protocol/a;

.field private static final bps:Lorg/apache/thrift/protocol/a;

.field private static final bpt:Lorg/apache/thrift/protocol/a;

.field private static final bpu:Lorg/apache/thrift/protocol/a;

.field private static final bpv:Lorg/apache/thrift/protocol/a;

.field private static final bpw:Lorg/apache/thrift/protocol/a;

.field private static final bpx:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public androidId:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public appVersionCode:I

.field public cleanOldRegInfo:Z

.field public connectionAttrs:Ljava/util/Map;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public oldRegId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pushSdkVersionCode:I

.field public pushSdkVersionName:Ljava/lang/String;

.field public reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

.field public regId:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public spaceId:I

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/16 v8, 0xb

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bgr:Lorg/apache/thrift/protocol/g;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnx:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v10, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bny:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmu:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmv:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appVersion"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpl:Lorg/apache/thrift/protocol/a;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmA:Lorg/apache/thrift/protocol/a;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "token"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpm:Lorg/apache/thrift/protocol/a;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v8, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnI:Lorg/apache/thrift/protocol/a;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnz:Lorg/apache/thrift/protocol/a;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "sdkVersion"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpn:Lorg/apache/thrift/protocol/a;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "regId"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnD:Lorg/apache/thrift/protocol/a;

    .line 50
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "pushSdkVersionName"

    invoke-direct {v0, v1, v8, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpo:Lorg/apache/thrift/protocol/a;

    .line 51
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "pushSdkVersionCode"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpp:Lorg/apache/thrift/protocol/a;

    .line 52
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appVersionCode"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpq:Lorg/apache/thrift/protocol/a;

    .line 53
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "androidId"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpr:Lorg/apache/thrift/protocol/a;

    .line 54
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "imei"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bps:Lorg/apache/thrift/protocol/a;

    .line 55
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "serial"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpt:Lorg/apache/thrift/protocol/a;

    .line 56
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "imeiMd5"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnH:Lorg/apache/thrift/protocol/a;

    .line 57
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "spaceId"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpu:Lorg/apache/thrift/protocol/a;

    .line 58
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "reason"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bon:Lorg/apache/thrift/protocol/a;

    .line 59
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "connectionAttrs"

    const/16 v2, 0xd

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpv:Lorg/apache/thrift/protocol/a;

    .line 60
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "cleanOldRegInfo"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpw:Lorg/apache/thrift/protocol/a;

    .line 61
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "oldRegId"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpx:Lorg/apache/thrift/protocol/a;

    .line 228
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 229
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpy:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpz:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v10, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpA:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpB:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpC:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appVersion"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpD:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpE:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "token"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpF:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpG:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpH:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "sdkVersion"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpI:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "regId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpJ:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "pushSdkVersionName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpK:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "pushSdkVersionCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpL:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appVersionCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpM:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "androidId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpN:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "imei"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpO:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "serial"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpP:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "imeiMd5"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpQ:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "spaceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpR:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "reason"

    new-instance v4, Lorg/apache/thrift/meta_data/EnumMetaData;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/EnumMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpS:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "connectionAttrs"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    const/16 v5, 0xd

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v7, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v7, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpT:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "cleanOldRegInfo"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->bpU:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "oldRegId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bgC:Ljava/util/Map;

    .line 278
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    .line 284
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

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
    .line 500
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

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
    .line 548
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LE()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

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
    .line 524
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

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
    .line 572
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

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
    .line 428
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

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
    .line 452
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 620
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

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
    .line 668
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ly()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

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
    .line 596
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ma()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mb()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mc()Z
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Md()Z
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Me()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mf()Z
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mg()Z
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mh()Z
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Mi()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mj()Z
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Mk()Z
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/RegistrationReason;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .line 880
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 1776
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 1779
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 1780
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1967
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1970
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 1971
    return-void

    .line 1783
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    sparse-switch v1, :sswitch_data_0

    .line 1963
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1965
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 1785
    :sswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 1786
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1788
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1792
    :sswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 1793
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1794
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 1796
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1800
    :sswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 1801
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    goto :goto_1

    .line 1803
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1807
    :sswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 1808
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1810
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1814
    :sswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 1815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    goto :goto_1

    .line 1817
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1821
    :sswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_6

    .line 1822
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 1824
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1828
    :sswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 1829
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    goto :goto_1

    .line 1831
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1835
    :sswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_8

    .line 1836
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1838
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1842
    :sswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_9

    .line 1843
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1845
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1849
    :sswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_a

    .line 1850
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 1852
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1856
    :sswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_b

    .line 1857
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1859
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1863
    :sswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_c

    .line 1864
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1866
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1870
    :sswitch_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_d

    .line 1871
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    .line 1872
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cR(Z)V

    goto/16 :goto_1

    .line 1874
    :cond_d
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1878
    :sswitch_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_e

    .line 1879
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    .line 1880
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cS(Z)V

    goto/16 :goto_1

    .line 1882
    :cond_e
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1886
    :sswitch_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_f

    .line 1887
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1889
    :cond_f
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1893
    :sswitch_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_10

    .line 1894
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    goto/16 :goto_1

    .line 1896
    :cond_10
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1900
    :sswitch_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_11

    .line 1901
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    goto/16 :goto_1

    .line 1903
    :cond_11
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1907
    :sswitch_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_12

    .line 1908
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1910
    :cond_12
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1914
    :sswitch_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_13

    .line 1915
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    .line 1916
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cT(Z)V

    goto/16 :goto_1

    .line 1918
    :cond_13
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1922
    :sswitch_13
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v7, :cond_14

    .line 1923
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MW()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->fw(I)Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    goto/16 :goto_1

    .line 1925
    :cond_14
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1929
    :sswitch_14
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_16

    .line 1931
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 1932
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    .line 1933
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_15

    .line 1937
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1938
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1939
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1941
    :cond_15
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto/16 :goto_1

    .line 1944
    :cond_16
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1948
    :sswitch_15
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 1949
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    .line 1950
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cU(Z)V

    goto/16 :goto_1

    .line 1952
    :cond_17
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1956
    :sswitch_16
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_18

    .line 1957
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1959
    :cond_18
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1783
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x64 -> :sswitch_14
        0x65 -> :sswitch_15
        0x66 -> :sswitch_16
    .end sparse-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1311
    if-nez p1, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return v0

    .line 1314
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v1

    .line 1315
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v2

    .line 1316
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1317
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v1

    .line 1324
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v2

    .line 1325
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 1326
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KM()Z

    move-result v1

    .line 1333
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KM()Z

    move-result v2

    .line 1334
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1335
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KN()Z

    move-result v1

    .line 1342
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KN()Z

    move-result v2

    .line 1343
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 1344
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v1

    .line 1351
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v2

    .line 1352
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 1353
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1359
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v1

    .line 1360
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v2

    .line 1361
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 1362
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LZ()Z

    move-result v1

    .line 1369
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LZ()Z

    move-result v2

    .line 1370
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 1371
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v1

    .line 1378
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v2

    .line 1379
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 1380
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1386
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v1

    .line 1387
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v2

    .line 1388
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 1389
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v1

    .line 1396
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v2

    .line 1397
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 1398
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v1

    .line 1405
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v2

    .line 1406
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 1407
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v1

    .line 1414
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v2

    .line 1415
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 1416
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v1

    .line 1423
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v2

    .line 1424
    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    .line 1425
    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1427
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    if-ne v1, v2, :cond_0

    .line 1431
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v1

    .line 1432
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v2

    .line 1433
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 1434
    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1436
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    if-ne v1, v2, :cond_0

    .line 1440
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v1

    .line 1441
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v2

    .line 1442
    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    .line 1443
    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v1

    .line 1450
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v2

    .line 1451
    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    .line 1452
    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1458
    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v1

    .line 1459
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v2

    .line 1460
    if-nez v1, :cond_22

    if-eqz v2, :cond_23

    .line 1461
    :cond_22
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v1

    .line 1468
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v2

    .line 1469
    if-nez v1, :cond_24

    if-eqz v2, :cond_25

    .line 1470
    :cond_24
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    :cond_25
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v1

    .line 1477
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v2

    .line 1478
    if-nez v1, :cond_26

    if-eqz v2, :cond_27

    .line 1479
    :cond_26
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1481
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    if-ne v1, v2, :cond_0

    .line 1485
    :cond_27
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v1

    .line 1486
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v2

    .line 1487
    if-nez v1, :cond_28

    if-eqz v2, :cond_29

    .line 1488
    :cond_28
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    :cond_29
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v1

    .line 1495
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v2

    .line 1496
    if-nez v1, :cond_2a

    if-eqz v2, :cond_2b

    .line 1497
    :cond_2a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    :cond_2b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v1

    .line 1504
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v2

    .line 1505
    if-nez v1, :cond_2c

    if-eqz v2, :cond_2d

    .line 1506
    :cond_2c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1508
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    if-ne v1, v2, :cond_0

    .line 1512
    :cond_2d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v1

    .line 1513
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v2

    .line 1514
    if-nez v1, :cond_2e

    if-eqz v2, :cond_2f

    .line 1515
    :cond_2e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    :cond_2f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I
    .locals 2

    .prologue
    .line 1530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1531
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

    .line 1767
    :cond_0
    :goto_0
    return v0

    .line 1537
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1538
    if-nez v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1543
    if-nez v0, :cond_0

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1548
    if-nez v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1552
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1553
    if-nez v0, :cond_0

    .line 1557
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1558
    if-nez v0, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1562
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1563
    if-nez v0, :cond_0

    .line 1567
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1568
    if-nez v0, :cond_0

    .line 1571
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1572
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1573
    if-nez v0, :cond_0

    .line 1577
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1578
    if-nez v0, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1582
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1583
    if-nez v0, :cond_0

    .line 1587
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1588
    if-nez v0, :cond_0

    .line 1591
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1592
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1593
    if-nez v0, :cond_0

    .line 1597
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1598
    if-nez v0, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LZ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1602
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1603
    if-nez v0, :cond_0

    .line 1607
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1608
    if-nez v0, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1612
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1613
    if-nez v0, :cond_0

    .line 1617
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1618
    if-nez v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1622
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1623
    if-nez v0, :cond_0

    .line 1627
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1628
    if-nez v0, :cond_0

    .line 1631
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1632
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1633
    if-nez v0, :cond_0

    .line 1637
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1638
    if-nez v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1642
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1643
    if-nez v0, :cond_0

    .line 1647
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1648
    if-nez v0, :cond_0

    .line 1651
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1652
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1653
    if-nez v0, :cond_0

    .line 1657
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1658
    if-nez v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1662
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 1663
    if-nez v0, :cond_0

    .line 1667
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1668
    if-nez v0, :cond_0

    .line 1671
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1672
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 1673
    if-nez v0, :cond_0

    .line 1677
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1678
    if-nez v0, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1682
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1683
    if-nez v0, :cond_0

    .line 1687
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1688
    if-nez v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1692
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1693
    if-nez v0, :cond_0

    .line 1697
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1698
    if-nez v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1702
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1703
    if-nez v0, :cond_0

    .line 1707
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1708
    if-nez v0, :cond_0

    .line 1711
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1712
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1713
    if-nez v0, :cond_0

    .line 1717
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1718
    if-nez v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1722
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 1723
    if-nez v0, :cond_0

    .line 1727
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1728
    if-nez v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1732
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1733
    if-nez v0, :cond_0

    .line 1737
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1738
    if-nez v0, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1742
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1743
    if-nez v0, :cond_0

    .line 1747
    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1748
    if-nez v0, :cond_0

    .line 1751
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1752
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 1753
    if-nez v0, :cond_0

    .line 1757
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1758
    if-nez v0, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1762
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1763
    if-nez v0, :cond_0

    .line 1767
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1974
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 1976
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1977
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1980
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1985
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1987
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1988
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1991
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1992
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1993
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1996
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1997
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1998
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2001
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2002
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2003
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpl:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2004
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2008
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2009
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2010
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2011
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2015
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2016
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2017
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2020
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2021
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2022
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnI:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2023
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2027
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2028
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2029
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2030
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2034
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2035
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2036
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpn:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2037
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2041
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2042
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2043
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnD:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2044
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2048
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2049
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2050
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpo:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2051
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2055
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2056
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpp:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2057
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 2058
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2060
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2061
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2062
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 2063
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2065
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2066
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2067
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpr:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2068
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2072
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 2073
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2074
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bps:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2075
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2079
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2080
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2081
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2082
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2086
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 2087
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2088
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bnH:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2089
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2093
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2094
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2095
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 2096
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2098
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    if-eqz v0, :cond_13

    .line 2099
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2100
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bon:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2101
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->fx(I)V

    .line 2102
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2105
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 2106
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2107
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2109
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 2110
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2115
    :cond_14
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MJ()V

    .line 2117
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2120
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2121
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpw:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2122
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 2123
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2125
    :cond_16
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 2126
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2127
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->bpx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 2128
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 2132
    :cond_17
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 2133
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 2134
    return-void
.end method

.method public cR(Z)V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 722
    return-void
.end method

.method public cS(Z)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 745
    return-void
.end method

.method public cT(Z)V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 864
    return-void
.end method

.method public cU(Z)V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 954
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I

    move-result v0

    return v0
.end method

.method public eO(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public eP(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    .line 491
    return-object p0
.end method

.method public eQ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    .line 515
    return-object p0
.end method

.method public eR(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    .line 539
    return-object p0
.end method

.method public eS(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    .line 563
    return-object p0
.end method

.method public eT(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    .line 587
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1303
    if-nez p1, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return v0

    .line 1305
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    if-eqz v1, :cond_0

    .line 1306
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionRegistration("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2139
    const/4 v0, 0x1

    .line 2141
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2142
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 2144
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 2150
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lp()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2151
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_16

    .line 2154
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 2163
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 2171
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2177
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    const-string v0, "appVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 2180
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->KU()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2187
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 2190
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :cond_4
    :goto_5
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    const-string v0, "token:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 2199
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lz()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2205
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 2208
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2215
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 2218
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ma()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2225
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    const-string v0, "sdkVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 2228
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    :cond_7
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Lu()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2235
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    const-string v0, "regId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 2238
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    :cond_8
    :goto_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mb()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2245
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    const-string v0, "pushSdkVersionName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 2248
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_9
    :goto_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mc()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2255
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string v0, "pushSdkVersionCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2260
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Md()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2261
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    const-string v0, "appVersionCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2266
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Me()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2267
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    const-string v0, "androidId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 2270
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mf()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2277
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    const-string v0, "imei:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 2280
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mg()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2287
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    const-string v0, "serial:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 2290
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ly()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2297
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    const-string v0, "imeiMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 2300
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mh()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2307
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    const-string v0, "spaceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2312
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->LE()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2313
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    if-nez v0, :cond_25

    .line 2316
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    :cond_11
    :goto_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mi()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2323
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    const-string v0, "connectionAttrs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-nez v0, :cond_26

    .line 2326
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    :cond_12
    :goto_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mj()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2333
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    const-string v0, "cleanOldRegInfo:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2338
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Mk()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2339
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    const-string v0, "oldRegId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 2342
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    :cond_14
    :goto_12
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2146
    :cond_15
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2156
    :cond_16
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2165
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2173
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2182
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2192
    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 2201
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 2210
    :cond_1c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 2220
    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 2230
    :cond_1e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2240
    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2250
    :cond_20
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 2272
    :cond_21
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2282
    :cond_22
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2292
    :cond_23
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 2302
    :cond_24
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 2318
    :cond_25
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 2328
    :cond_26
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 2344
    :cond_27
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :cond_28
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2358
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2361
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2363
    :cond_2
    return-void
.end method

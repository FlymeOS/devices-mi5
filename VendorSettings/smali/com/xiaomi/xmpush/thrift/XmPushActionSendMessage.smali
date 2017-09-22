.class public Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
.super Ljava/lang/Object;
.source "XmPushActionSendMessage.java"

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

.field private static final bnB:Lorg/apache/thrift/protocol/a;

.field private static final bnF:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bnz:Lorg/apache/thrift/protocol/a;

.field private static final bqA:Lorg/apache/thrift/protocol/a;

.field private static final bqB:Lorg/apache/thrift/protocol/a;

.field private static final bqz:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public message:Lcom/xiaomi/xmpush/thrift/PushMessage;

.field public needAck:Z

.field public packageName:Ljava/lang/String;

.field public params:Ljava/util/Map;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x1

    const/16 v6, 0xc

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionSendMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnx:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bny:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmu:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmv:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmA:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmL:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnz:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "message"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqz:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "needAck"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqA:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "params"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqB:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnB:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "userAccount"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnF:Lorg/apache/thrift/protocol/a;

    .line 155
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 156
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqC:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqD:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqE:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqF:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqG:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqH:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqI:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqJ:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "message"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqK:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "needAck"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqL:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "params"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v10, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqM:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqN:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userAccount"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bgC:Ljava/util/Map;

    .line 183
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bgC:Ljava/util/Map;

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

    .line 151
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 187
    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    .line 189
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

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
    .line 362
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

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
    .line 386
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

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
    .line 410
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

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
    .line 290
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

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
    .line 314
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 434
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

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
    .line 540
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

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
    .line 564
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mn()Lcom/xiaomi/xmpush/thrift/PushMessage;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    return-object v0
.end method

.method public Mo()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mp()Z
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Mq()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 1017
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 1020
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 1021
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1129
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1132
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->validate()V

    .line 1133
    return-void

    .line 1024
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 1125
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1127
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 1026
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 1027
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1029
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1033
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_2

    .line 1034
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1035
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 1037
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1041
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 1042
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 1044
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1048
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 1049
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1051
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1055
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 1056
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 1058
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1062
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_6

    .line 1063
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 1065
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1069
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 1070
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 1072
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1076
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_8

    .line 1077
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/PushMessage;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    .line 1078
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 1080
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1084
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 1085
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    .line 1086
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->cV(Z)V

    goto/16 :goto_1

    .line 1088
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1092
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 1094
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MP()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 1095
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    .line 1096
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_a

    .line 1100
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1104
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MQ()V

    goto/16 :goto_1

    .line 1107
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1111
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_c

    .line 1112
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1114
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1118
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_d

    .line 1119
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 1121
    :cond_d
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1024
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

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    if-nez p1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v1

    .line 765
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v2

    .line 766
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 767
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 769
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v1

    .line 774
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v2

    .line 775
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 776
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 778
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KM()Z

    move-result v1

    .line 783
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KM()Z

    move-result v2

    .line 784
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 785
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 787
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KN()Z

    move-result v1

    .line 792
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KN()Z

    move-result v2

    .line 793
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 794
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 796
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v1

    .line 801
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v2

    .line 802
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 803
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 805
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v1

    .line 810
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v2

    .line 811
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 812
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 814
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v1

    .line 819
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v2

    .line 820
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 821
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 823
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v1

    .line 828
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v2

    .line 829
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 830
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 832
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/PushMessage;->a(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v1

    .line 837
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v2

    .line 838
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 839
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 841
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    if-ne v1, v2, :cond_0

    .line 845
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v1

    .line 846
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v2

    .line 847
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 848
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 850
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v1

    .line 855
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v2

    .line 856
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 857
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 859
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v1

    .line 864
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v2

    .line 865
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 866
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 868
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)I
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 882
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

    .line 1008
    :cond_0
    :goto_0
    return v0

    .line 888
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 889
    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 894
    if-nez v0, :cond_0

    .line 898
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 899
    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 904
    if-nez v0, :cond_0

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 909
    if-nez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 914
    if-nez v0, :cond_0

    .line 918
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 919
    if-nez v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 923
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 924
    if-nez v0, :cond_0

    .line 928
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 929
    if-nez v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 934
    if-nez v0, :cond_0

    .line 938
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 939
    if-nez v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 943
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 944
    if-nez v0, :cond_0

    .line 948
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 949
    if-nez v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 953
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 954
    if-nez v0, :cond_0

    .line 958
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 959
    if-nez v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 963
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 964
    if-nez v0, :cond_0

    .line 968
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 969
    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 973
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->f(ZZ)I

    move-result v0

    .line 974
    if-nez v0, :cond_0

    .line 978
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 979
    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 983
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 984
    if-nez v0, :cond_0

    .line 988
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 989
    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 993
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 994
    if-nez v0, :cond_0

    .line 998
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 999
    if-nez v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1003
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1004
    if-nez v0, :cond_0

    .line 1008
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1136
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->validate()V

    .line 1138
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1139
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1142
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1149
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1150
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1154
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1155
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1159
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1160
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1164
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1166
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1170
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1171
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1172
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bmL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1173
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1177
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1178
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1179
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1180
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1184
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v0, :cond_7

    .line 1185
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1186
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqz:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1187
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1188
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1191
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1192
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1193
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cW(Z)V

    .line 1194
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1196
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 1197
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1198
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bqB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1200
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1201
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MJ()V

    .line 1208
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1211
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1212
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1213
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1214
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1218
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1219
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1220
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->bnF:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1221
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1225
    :cond_c
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1226
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1227
    return-void
.end method

.method public cV(Z)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 488
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 753
    if-nez p1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v1, :cond_0

    .line 756
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionSendMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    const/4 v0, 0x1

    .line 1234
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1235
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1237
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lp()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1244
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_c

    .line 1247
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1256
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1264
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1270
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1273
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->KY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1280
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1283
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lq()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1290
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1293
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1300
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const-string v0, "message:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-nez v0, :cond_12

    .line 1303
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1310
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const-string v0, "needAck:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1315
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Mq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1316
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const-string v0, "params:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 1319
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Ls()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1326
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1329
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->Lw()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1336
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string v0, "userAccount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1339
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_a
    :goto_a
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1249
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1258
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1266
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1275
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1285
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1295
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1305
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1321
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1331
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1341
    :cond_15
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_16
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1355
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_1
    return-void
.end method

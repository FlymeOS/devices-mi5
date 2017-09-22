.class public Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
.super Ljava/lang/Object;
.source "XmPushActionCommandResult.java"

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

.field private static final bnB:Lorg/apache/thrift/protocol/a;

.field private static final bnx:Lorg/apache/thrift/protocol/a;

.field private static final bny:Lorg/apache/thrift/protocol/a;

.field private static final bob:Lorg/apache/thrift/protocol/a;

.field private static final boc:Lorg/apache/thrift/protocol/a;

.field private static final bom:Lorg/apache/thrift/protocol/a;

.field private static final bon:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public cmdArgs:Ljava/util/List;

.field public cmdName:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0xc

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionCommandResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bgr:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnx:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bny:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmu:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmv:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "cmdName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bob:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnA:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "errorCode"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bom:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "reason"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bon:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmA:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "cmdArgs"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->boc:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnB:Lorg/apache/thrift/protocol/a;

    .line 150
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 151
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->boo:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bop:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->boq:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bor:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bos:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "cmdName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bot:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bou:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "errorCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bov:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "reason"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->bow:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->box:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "cmdArgs"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    const/16 v5, 0xf

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;->boy:Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bgC:Ljava/util/Map;

    .line 175
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bgC:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 179
    return-void
.end method


# virtual methods
.method public KM()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

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
    .line 345
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

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
    .line 464
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LA()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LB()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    return-object v0
.end method

.method public LD()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public LE()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public LF()Ljava/util/List;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    return-object v0
.end method

.method public Lo()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

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
    .line 297
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 393
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

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
    .line 527
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

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
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 948
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ML()Lorg/apache/thrift/protocol/g;

    .line 951
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MN()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 952
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 1051
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MM()V

    .line 1054
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LD()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1055
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->bsB:S

    packed-switch v1, :pswitch_data_0

    .line 1047
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 1049
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MO()V

    goto :goto_0

    .line 957
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 958
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 960
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 964
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_2

    .line 965
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 966
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 968
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 972
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_3

    .line 973
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 975
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 979
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_4

    .line 980
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 982
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 986
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_5

    .line 987
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    goto :goto_1

    .line 989
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 993
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_6

    .line 994
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 995
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 997
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 1001
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    .line 1002
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    .line 1003
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cJ(Z)V

    goto/16 :goto_1

    .line 1005
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1009
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_8

    .line 1010
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 1012
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1016
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_9

    .line 1017
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1019
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1023
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_b

    .line 1025
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MR()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    .line 1027
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/b;->size:I

    if-ge v0, v2, :cond_a

    .line 1030
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1033
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MS()V

    goto/16 :goto_1

    .line 1036
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1040
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_c

    .line 1041
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1043
    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 1057
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->validate()V

    .line 1058
    return-void

    .line 955
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
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 711
    if-nez p1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v1

    .line 715
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v2

    .line 716
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 717
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 719
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v1

    .line 724
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v2

    .line 725
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 726
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 728
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KM()Z

    move-result v1

    .line 733
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KM()Z

    move-result v2

    .line 734
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 735
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 737
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KN()Z

    move-result v1

    .line 742
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KN()Z

    move-result v2

    .line 743
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 744
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 746
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LA()Z

    move-result v1

    .line 751
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LA()Z

    move-result v2

    .line 752
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 753
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 755
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v1

    .line 760
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v2

    .line 761
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 762
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 764
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    :cond_d
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v1

    .line 778
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v2

    .line 779
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 780
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 782
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v1

    .line 787
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v2

    .line 788
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 789
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 791
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v1

    .line 796
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v2

    .line 797
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 798
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 800
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v1

    .line 805
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v2

    .line 806
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 807
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 809
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)I
    .locals 4

    .prologue
    .line 822
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
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

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 829
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 830
    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 835
    if-nez v0, :cond_0

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 840
    if-nez v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 844
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 845
    if-nez v0, :cond_0

    .line 849
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KM()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KM()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 850
    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 855
    if-nez v0, :cond_0

    .line 859
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KN()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KN()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 860
    if-nez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 864
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 865
    if-nez v0, :cond_0

    .line 869
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LA()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LA()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 870
    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 874
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 875
    if-nez v0, :cond_0

    .line 879
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 880
    if-nez v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 884
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 885
    if-nez v0, :cond_0

    .line 889
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LD()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 890
    if-nez v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LD()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 894
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/a;->g(JJ)I

    move-result v0

    .line 895
    if-nez v0, :cond_0

    .line 899
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 900
    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 905
    if-nez v0, :cond_0

    .line 909
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 910
    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 914
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 915
    if-nez v0, :cond_0

    .line 919
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 920
    if-nez v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 924
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 925
    if-nez v0, :cond_0

    .line 929
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 930
    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 934
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 935
    if-nez v0, :cond_0

    .line 939
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->validate()V

    .line 1063
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bgr:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 1064
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnx:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1067
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bny:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1074
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1075
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1079
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1080
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1084
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmv:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1085
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1088
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1089
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bob:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1090
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    if-eqz v0, :cond_5

    .line 1094
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1095
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1096
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1097
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1100
    :cond_5
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bom:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1101
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->O(J)V

    .line 1102
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1103
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1104
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1105
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bon:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1106
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1110
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1111
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1112
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bmA:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1113
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1117
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1118
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1119
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->boc:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1121
    new-instance v0, Lorg/apache/thrift/protocol/b;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/b;)V

    .line 1122
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1124
    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MK()V

    .line 1128
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1131
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1132
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1133
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->bnB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1134
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MH()V

    .line 1138
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MI()V

    .line 1139
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->MG()V

    .line 1140
    return-void
.end method

.method public cJ(Z)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 423
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 703
    if-nez p1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    if-eqz v1, :cond_0

    .line 706
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionCommandResult("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1145
    const/4 v0, 0x1

    .line 1147
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1150
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lp()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1157
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_9

    .line 1160
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1169
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1177
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    const-string v0, "cmdName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1185
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Lr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    if-nez v0, :cond_d

    .line 1194
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_3
    :goto_5
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const-string v0, "errorCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1205
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1208
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->KU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1218
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->LB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1225
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v0, "cmdArgs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1228
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->Ls()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1235
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1238
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_7
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1152
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1162
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1171
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1179
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1187
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1196
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1210
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1220
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1230
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1240
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1257
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'cmdName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_2
    return-void
.end method

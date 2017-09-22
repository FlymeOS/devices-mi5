.class public final enum Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;
.super Ljava/lang/Enum;
.source "OnlineConfigItem.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bml:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmm:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmn:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmo:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmp:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmq:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field public static final enum bmr:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

.field private static final synthetic bms:[Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "KEY"

    const/4 v2, 0x0

    const-string v3, "key"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bml:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "TYPE"

    const-string v2, "type"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmm:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "CLEAR"

    const-string v2, "clear"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmn:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "INT_VALUE"

    const-string v2, "intValue"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmo:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "LONG_VALUE"

    const-string v2, "longValue"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmp:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 54
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "STRING_VALUE"

    const/4 v2, 0x6

    const-string v3, "stringValue"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmq:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 55
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const-string v1, "BOOL_VALUE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "boolValue"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmr:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bml:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmm:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmn:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmo:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmp:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmq:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bmr:Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bms:[Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bgN:Ljava/util/Map;

    .line 60
    const-class v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    .line 61
    sget-object v2, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->_thriftId:S

    .line 111
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->_fieldName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->bms:[Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

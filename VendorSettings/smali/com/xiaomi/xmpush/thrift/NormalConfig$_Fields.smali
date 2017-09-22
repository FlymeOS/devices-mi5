.class public final enum Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;
.super Ljava/lang/Enum;
.source "NormalConfig.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum blA:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

.field public static final enum blB:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

.field public static final enum blC:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

.field private static final synthetic blD:[Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blA:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    const-string v1, "CONFIG_ITEMS"

    const-string v2, "configItems"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blB:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    .line 58
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    const-string v1, "TYPE"

    const-string v2, "type"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blC:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    .line 51
    new-array v0, v6, [Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blA:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blB:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blC:Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blD:[Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->bgN:Ljava/util/Map;

    .line 63
    const-class v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    .line 64
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->_thriftId:S

    .line 106
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->_fieldName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->blD:[Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionNormalConfig.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum boT:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

.field public static final enum boU:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

.field public static final enum boV:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

.field private static final synthetic boW:[Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 47
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    const-string v1, "NORMAL_CONFIGS"

    const-string v2, "normalConfigs"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boT:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    .line 48
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    const-string v1, "APP_ID"

    const/4 v2, 0x4

    const-string v3, "appId"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boU:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x5

    const-string v3, "packageName"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boV:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boT:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boU:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boV:Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boW:[Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->bgN:Ljava/util/Map;

    .line 54
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    .line 55
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->_thriftId:S

    .line 97
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->_fieldName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->boW:[Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

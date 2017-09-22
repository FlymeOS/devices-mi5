.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionCustomConfig.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum boQ:Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

.field private static final synthetic boR:[Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    const-string v1, "CUSTOM_CONFIGS"

    const-string v2, "customConfigs"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->boQ:Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    .line 40
    new-array v0, v4, [Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->boQ:Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->boR:[Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->bgN:Ljava/util/Map;

    .line 46
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    .line 47
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->_thriftId:S

    .line 85
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->_fieldName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->boR:[Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

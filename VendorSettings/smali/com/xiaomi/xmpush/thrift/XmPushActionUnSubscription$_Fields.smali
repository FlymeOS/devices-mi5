.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionUnSubscription.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum brC:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brD:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brE:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brF:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brG:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brH:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field public static final enum brI:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

.field private static final synthetic brJ:[Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;


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

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brC:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brD:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brE:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brF:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 54
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "TOPIC"

    const-string v2, "topic"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brG:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 55
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x6

    const-string v3, "packageName"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brH:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 56
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const-string v1, "CATEGORY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "category"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brI:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brC:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brD:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brE:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brF:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brG:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brH:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brI:Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brJ:[Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->bgN:Ljava/util/Map;

    .line 61
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    .line 62
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->_thriftId:S

    .line 112
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->_fieldName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->brJ:[Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionSendFeedback.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bqj:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field public static final enum bqk:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field public static final enum bql:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field public static final enum bqm:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field public static final enum bqn:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field public static final enum bqo:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

.field private static final synthetic bqp:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 48
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqj:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqk:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bql:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqm:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "FEEDBACKS"

    const-string v2, "feedbacks"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqn:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const-string v1, "CATEGORY"

    const/4 v2, 0x6

    const-string v3, "category"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqo:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqj:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqk:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bql:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqm:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqn:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqo:Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqp:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bgN:Ljava/util/Map;

    .line 58
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    .line 59
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->_thriftId:S

    .line 107
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->_fieldName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->bqp:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedback$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

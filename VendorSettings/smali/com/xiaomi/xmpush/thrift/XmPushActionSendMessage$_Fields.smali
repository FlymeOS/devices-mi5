.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionSendMessage.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bqC:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqD:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqE:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqF:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqG:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqH:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqI:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqJ:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqK:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqL:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqM:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field public static final enum bqN:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

.field private static final synthetic bqO:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;


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

    .line 60
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqC:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 61
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqD:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 62
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqE:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 63
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqF:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 64
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "packageName"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqG:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "TOPIC"

    const/4 v2, 0x6

    const-string v3, "topic"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqH:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 66
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "ALIAS_NAME"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "aliasName"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqI:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "MESSAGE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "message"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqJ:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "NEED_ACK"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "needAck"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqK:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "PARAMS"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "params"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqL:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "CATEGORY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "category"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqM:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 71
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const-string v1, "USER_ACCOUNT"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "userAccount"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqN:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqC:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqD:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqE:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqF:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqG:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqH:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqI:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqJ:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqK:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqL:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqM:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqN:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqO:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bgN:Ljava/util/Map;

    .line 76
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    .line 77
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->_thriftId:S

    .line 137
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->_fieldName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->bqO:[Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

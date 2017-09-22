.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionContainer.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum boG:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boH:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boI:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boK:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boL:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boM:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field public static final enum boN:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

.field private static final synthetic boO:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;


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

    .line 66
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "ACTION"

    const/4 v2, 0x0

    const-string v3, "action"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boG:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "ENCRYPT_ACTION"

    const-string v2, "encryptAction"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boH:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "IS_REQUEST"

    const-string v2, "isRequest"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boI:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "PUSH_ACTION"

    const-string v2, "pushAction"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "APPID"

    const-string v2, "appid"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boK:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 71
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x6

    const-string v3, "packageName"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boL:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 72
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "TARGET"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "target"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boM:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 73
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const-string v1, "META_INFO"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "metaInfo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boN:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boG:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boH:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boI:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boJ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boK:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boL:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boM:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boN:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boO:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->bgN:Ljava/util/Map;

    .line 78
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    .line 79
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_thriftId:S

    .line 131
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_fieldName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->boO:[Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

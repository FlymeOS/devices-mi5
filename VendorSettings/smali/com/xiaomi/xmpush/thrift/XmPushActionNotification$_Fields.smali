.class public final enum Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;
.super Ljava/lang/Enum;
.source "XmPushActionNotification.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum boZ:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpa:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpb:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpc:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpd:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpe:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpf:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpg:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bph:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpi:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field public static final enum bpj:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

.field private static final synthetic bpk:[Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;


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

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->boZ:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 66
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpa:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpb:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpc:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "TYPE"

    const-string v2, "type"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpd:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "REQUIRE_ACK"

    const/4 v2, 0x6

    const-string v3, "requireAck"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpe:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 71
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "PAYLOAD"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "payload"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpf:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 72
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "EXTRA"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "extra"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpg:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 73
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "PACKAGE_NAME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "packageName"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bph:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 74
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "CATEGORY"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "category"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpi:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 75
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const-string v1, "BINARY_EXTRA"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const-string v4, "binaryExtra"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpj:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 64
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->boZ:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpa:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpb:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpc:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpd:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpe:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpf:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpg:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bph:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpi:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpj:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpk:[Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bgN:Ljava/util/Map;

    .line 80
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    .line 81
    sget-object v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->_thriftId:S

    .line 139
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->_fieldName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->bpk:[Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

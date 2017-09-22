.class public final enum Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;
.super Ljava/lang/Enum;
.source "PushMetaInfo.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bmV:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bmW:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bmX:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bmY:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bmZ:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bna:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bnb:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bnc:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bnd:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bne:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bnf:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field public static final enum bng:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

.field private static final synthetic bnh:[Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;


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
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmV:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 61
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "MESSAGE_TS"

    const-string v2, "messageTs"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmW:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 62
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "TOPIC"

    const-string v2, "topic"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmX:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 63
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "TITLE"

    const-string v2, "title"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmY:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 64
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "DESCRIPTION"

    const-string v2, "description"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "NOTIFY_TYPE"

    const/4 v2, 0x6

    const-string v3, "notifyType"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 66
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "URL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "url"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "PASS_THROUGH"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "passThrough"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "NOTIFY_ID"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "notifyId"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "EXTRA"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "extra"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "INTERNAL"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "internal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 71
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const-string v1, "IGNORE_REG_INFO"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "ignoreRegInfo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bng:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmV:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmW:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmX:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmY:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bmZ:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bna:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnb:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnc:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnd:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bne:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnf:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bng:Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnh:[Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bgN:Ljava/util/Map;

    .line 76
    const-class v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    .line 77
    sget-object v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->getFieldName()Ljava/lang/String;

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
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->_thriftId:S

    .line 137
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->_fieldName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->bnh:[Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

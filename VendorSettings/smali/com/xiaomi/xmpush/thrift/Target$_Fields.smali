.class public final enum Lcom/xiaomi/xmpush/thrift/Target$_Fields;
.super Ljava/lang/Enum;
.source "Target.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bnr:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

.field public static final enum bns:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

.field public static final enum bnt:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

.field public static final enum bnu:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

.field public static final enum bnv:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

.field private static final synthetic bnw:[Lcom/xiaomi/xmpush/thrift/Target$_Fields;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 48
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    const-string v1, "CHANNEL_ID"

    const-string v2, "channelId"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnr:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    const-string v1, "USER_ID"

    const-string v2, "userId"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bns:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    const-string v1, "SERVER"

    const-string v2, "server"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnt:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    const-string v1, "RESOURCE"

    const-string v2, "resource"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnu:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    const-string v1, "IS_PREVIEW"

    const/4 v2, 0x5

    const-string v3, "isPreview"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnv:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnr:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bns:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnt:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnu:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnv:Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnw:[Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bgN:Ljava/util/Map;

    .line 57
    const-class v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

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

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    .line 58
    sget-object v2, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->_thriftId:S

    .line 104
    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->_fieldName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Target$_Fields;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/Target$_Fields;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->bnw:[Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/Target$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/Target$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

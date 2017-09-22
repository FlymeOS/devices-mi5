.class public final enum Lcom/xiaomi/push/thrift/StatsEvents$_Fields;
.super Ljava/lang/Enum;
.source "StatsEvents.java"


# static fields
.field private static final bgN:Ljava/util/Map;

.field public static final enum bgS:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

.field public static final enum bgT:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

.field public static final enum bgU:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

.field private static final synthetic bgV:[Lcom/xiaomi/push/thrift/StatsEvents$_Fields;


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

    .line 39
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    const-string v1, "UUID"

    const-string v2, "uuid"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgS:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    .line 40
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    const-string v1, "OPERATOR"

    const-string v2, "operator"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgT:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    .line 41
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgU:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    .line 38
    new-array v0, v6, [Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgS:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgT:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgU:Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgV:[Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgN:Ljava/util/Map;

    .line 46
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

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

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    .line 47
    sget-object v2, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgN:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->getFieldName()Ljava/lang/String;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-short p3, p0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->_thriftId:S

    .line 89
    iput-object p4, p0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->_fieldName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents$_Fields;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/thrift/StatsEvents$_Fields;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->bgV:[Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/thrift/StatsEvents$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

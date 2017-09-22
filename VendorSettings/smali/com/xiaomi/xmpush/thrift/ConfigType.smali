.class public final enum Lcom/xiaomi/xmpush/thrift/ConfigType;
.super Ljava/lang/Enum;
.source "ConfigType.java"


# static fields
.field public static final enum blt:Lcom/xiaomi/xmpush/thrift/ConfigType;

.field public static final enum blu:Lcom/xiaomi/xmpush/thrift/ConfigType;

.field public static final enum blv:Lcom/xiaomi/xmpush/thrift/ConfigType;

.field public static final enum blw:Lcom/xiaomi/xmpush/thrift/ConfigType;

.field private static final synthetic blx:[Lcom/xiaomi/xmpush/thrift/ConfigType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/xmpush/thrift/ConfigType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blt:Lcom/xiaomi/xmpush/thrift/ConfigType;

    .line 13
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ConfigType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blu:Lcom/xiaomi/xmpush/thrift/ConfigType;

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/xmpush/thrift/ConfigType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blv:Lcom/xiaomi/xmpush/thrift/ConfigType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v4, v6}, Lcom/xiaomi/xmpush/thrift/ConfigType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blw:Lcom/xiaomi/xmpush/thrift/ConfigType;

    .line 11
    new-array v0, v6, [Lcom/xiaomi/xmpush/thrift/ConfigType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigType;->blt:Lcom/xiaomi/xmpush/thrift/ConfigType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigType;->blu:Lcom/xiaomi/xmpush/thrift/ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigType;->blv:Lcom/xiaomi/xmpush/thrift/ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigType;->blw:Lcom/xiaomi/xmpush/thrift/ConfigType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blx:[Lcom/xiaomi/xmpush/thrift/ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/ConfigType;->value:I

    .line 21
    return-void
.end method

.method public static fv(I)Lcom/xiaomi/xmpush/thrift/ConfigType;
    .locals 1

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blt:Lcom/xiaomi/xmpush/thrift/ConfigType;

    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blu:Lcom/xiaomi/xmpush/thrift/ConfigType;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blv:Lcom/xiaomi/xmpush/thrift/ConfigType;

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blw:Lcom/xiaomi/xmpush/thrift/ConfigType;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ConfigType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ConfigType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigType;->blx:[Lcom/xiaomi/xmpush/thrift/ConfigType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ConfigType;

    return-object v0
.end method

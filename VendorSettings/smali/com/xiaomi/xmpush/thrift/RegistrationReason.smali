.class public final enum Lcom/xiaomi/xmpush/thrift/RegistrationReason;
.super Ljava/lang/Enum;
.source "RegistrationReason.java"


# static fields
.field public static final enum bni:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

.field public static final enum bnj:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

.field public static final enum bnk:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

.field private static final synthetic bnl:[Lcom/xiaomi/xmpush/thrift/RegistrationReason;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    const-string v1, "RegIdExpired"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bni:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    const-string v1, "PackageUnregistered"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnj:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    const-string v1, "Init"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnk:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bni:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnj:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnk:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnl:[Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->value:I

    .line 28
    return-void
.end method

.method public static fw(I)Lcom/xiaomi/xmpush/thrift/RegistrationReason;
    .locals 1

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bni:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnj:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnk:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/RegistrationReason;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/RegistrationReason;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->bnl:[Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/RegistrationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->value:I

    return v0
.end method

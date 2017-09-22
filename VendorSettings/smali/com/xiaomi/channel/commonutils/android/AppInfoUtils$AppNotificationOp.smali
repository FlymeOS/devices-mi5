.class public final enum Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
.super Ljava/lang/Enum;
.source "AppInfoUtils.java"


# static fields
.field public static final enum aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field public static final enum aXl:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field public static final enum aXm:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field private static final synthetic aXn:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXl:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXm:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXk:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXl:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXm:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXn:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->aXn:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    invoke-virtual {v0}, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->value:I

    return v0
.end method

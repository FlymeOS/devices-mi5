.class public final enum Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
.super Ljava/lang/Enum;
.source "NotifyAdsManager.java"


# static fields
.field public static final enum aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

.field public static final enum aZo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

.field public static final enum aZp:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

.field public static final enum aZq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

.field public static final enum aZr:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

.field private static final synthetic aZs:[Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 100
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 101
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    const-string v1, "MN2G"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZp:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 102
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    const-string v1, "MN3G"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 103
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    const-string v1, "MN4G"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZr:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZp:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZr:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZs:[Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aZs:[Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    invoke-virtual {v0}, [Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    return-object v0
.end method

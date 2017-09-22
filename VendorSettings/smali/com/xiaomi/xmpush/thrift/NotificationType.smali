.class public final enum Lcom/xiaomi/xmpush/thrift/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# static fields
.field public static final enum blE:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blF:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blG:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blH:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blI:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blJ:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blK:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blL:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blM:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blN:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blO:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blP:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blQ:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blR:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blS:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blT:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blU:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blV:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blW:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blX:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blY:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum blZ:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum bma:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum bmb:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum bmc:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static bmd:Ljava/util/Map;

.field private static final synthetic bme:[Lcom/xiaomi/xmpush/thrift/NotificationType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "Invalid"

    const-string v2, "INVALID"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blE:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 8
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "BarClick"

    const-string v2, "bar:click"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blF:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "BarCancel"

    const-string v2, "bar:cancel"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blG:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 10
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AppOpen"

    const-string v2, "app:open"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blH:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 11
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PackageUninstall"

    const-string v2, "package uninstalled"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blI:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 12
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AppUninstall"

    const/4 v2, 0x5

    const-string v3, "app_uninstalled"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blJ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 13
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientInfoUpdate"

    const/4 v2, 0x6

    const-string v3, "client_info_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blK:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientInfoUpdateOk"

    const/4 v2, 0x7

    const-string v3, "client_info_update_ok"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blL:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PullOfflineMessage"

    const/16 v2, 0x8

    const-string v3, "pull"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blM:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 16
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "IosSleep"

    const/16 v2, 0x9

    const-string v3, "ios_sleep"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blN:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "IosWakeUp"

    const/16 v2, 0xa

    const-string v3, "ios_wakeup"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blO:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AwakeApp"

    const/16 v2, 0xb

    const-string v3, "awake_app"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "NormalClientConfigUpdate"

    const/16 v2, 0xc

    const-string v3, "normal_client_config_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blQ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "CustomClientConfigUpdate"

    const/16 v2, 0xd

    const-string v3, "custom_client_config_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blR:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DailyCheckClientConfig"

    const/16 v2, 0xe

    const-string v3, "daily_check_client_config"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blS:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DataCollection"

    const/16 v2, 0xf

    const-string v3, "data_collection"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blT:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 23
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "RegIdExpired"

    const/16 v2, 0x10

    const-string v3, "registration id expired"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blU:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 24
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ConnectionDisabled"

    const/16 v2, 0x11

    const-string v3, "!!!MILINK CONNECTION DISABLED!!!"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blV:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 25
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PackageUnregistered"

    const/16 v2, 0x12

    const-string v3, "package_unregistered"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blW:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 26
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DecryptMessageFail"

    const/16 v2, 0x13

    const-string v3, "decrypt_msg_fail"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blX:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 27
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "SyncInfo"

    const/16 v2, 0x14

    const-string v3, "sync_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blY:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 28
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "SyncInfoResult"

    const/16 v2, 0x15

    const-string v3, "sync_info_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->blZ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 29
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ForceSync"

    const/16 v2, 0x16

    const-string v3, "force_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bma:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 30
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "UploadClientLog"

    const/16 v2, 0x17

    const-string v3, "upload_client_log"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bmb:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 31
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "NotificationBarInfo"

    const/16 v2, 0x18

    const-string v3, "notification_bar_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bmc:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 6
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/NotificationType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->blE:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->blF:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->blG:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->blH:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->blI:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blJ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blK:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blL:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blM:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blN:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blO:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blQ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blR:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blS:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blT:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blU:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blV:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blW:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blX:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blY:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blZ:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->bma:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->bmb:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->bmc:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bme:[Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bmd:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/NotificationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->bme:[Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/NotificationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    return-object v0
.end method

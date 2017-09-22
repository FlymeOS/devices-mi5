.class public final enum Lcom/android/settings/cloud/network/Connection$NetworkError;
.super Ljava/lang/Enum;
.source "Connection.java"


# static fields
.field public static final enum TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TU:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TV:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TW:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TX:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TY:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum TZ:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum Ua:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field public static final enum Ub:Lcom/android/settings/cloud/network/Connection$NetworkError;

.field private static final synthetic Uc:[Lcom/android/settings/cloud/network/Connection$NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 35
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "URL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TU:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 36
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TV:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 37
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "ACCOUNT_CHANGED_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TW:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 38
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TX:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 39
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "CLIENT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TY:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 40
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->TZ:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 41
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->Ua:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 42
    new-instance v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->Ub:Lcom/android/settings/cloud/network/Connection$NetworkError;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/settings/cloud/network/Connection$NetworkError;

    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TT:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TU:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TV:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TW:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/cloud/network/Connection$NetworkError;->TX:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->TY:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->TZ:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->Ua:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/cloud/network/Connection$NetworkError;->Ub:Lcom/android/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->Uc:[Lcom/android/settings/cloud/network/Connection$NetworkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cloud/network/Connection$NetworkError;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/cloud/network/Connection$NetworkError;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/cloud/network/Connection$NetworkError;->Uc:[Lcom/android/settings/cloud/network/Connection$NetworkError;

    invoke-virtual {v0}, [Lcom/android/settings/cloud/network/Connection$NetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/cloud/network/Connection$NetworkError;

    return-object v0
.end method

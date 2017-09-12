.class public abstract Lmiui/telephony/MiuiTelephonyBase;
.super Lmiui/telephony/IMiuiTelephony$Stub;
.source "MiuiTelephonyBase.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "MiuiTelephonyBase"

    sput-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lmiui/telephony/IMiuiTelephony$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getCellLocation method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public isImsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

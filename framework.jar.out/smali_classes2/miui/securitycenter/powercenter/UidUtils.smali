.class Lmiui/securitycenter/powercenter/UidUtils;
.super Ljava/lang/Object;
.source "UidUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRealUid(I)I
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 9
    invoke-static {p0}, Lmiui/securitycenter/powercenter/UidUtils;->isSharedGid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 13
    .end local p0    # "uid":I
    :cond_0
    return p0
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 17
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

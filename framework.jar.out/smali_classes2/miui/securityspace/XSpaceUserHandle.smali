.class public Lmiui/securityspace/XSpaceUserHandle;
.super Ljava/lang/Object;
.source "XSpaceUserHandle.java"


# static fields
.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final OWNER_SHARED_USER_GID:I

.field public static final USER_XSPACE:I = 0x3e7

.field public static final XSPACE_ICON_MASK_ID:I = 0x11020055

.field public static final XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    .line 41
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetXSpaceUserId(II)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .prologue
    .line 44
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/16 v0, 0x3e7

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 49
    goto :goto_0
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 95
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "uid"    # I

    .prologue
    .line 85
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 86
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 89
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->getProfileIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "xspace_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :try_start_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isSelfXSpaceUser()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isUidBelongtoXSpace(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 73
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUser(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "userinfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUser(Landroid/os/UserHandle;)Z
    .locals 1
    .param p0, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUserCalling()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUserFlag(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/high16 v1, 0x800000

    .line 77
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUserId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 53
    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lmiui/securityspace/CrossUserUtils;
.super Ljava/lang/Object;
.source "CrossUserUtils.java"


# static fields
.field public static final ACTION_XSPACE_RESOLVER_ACTIVITY:Ljava/lang/String; = "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

.field public static final AIRLOCK_USER_ID:I = 0x63

.field public static final EXTRA_PICKED_USER_ID:Ljava/lang/String; = "android.intent.extra.picked_user_id"

.field public static final EXTRA_XSPACE_RESOLVER_ACTIVITY_AIM_PACKAGE:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_aim_package"

.field public static final EXTRA_XSPACE_RESOLVER_ACTIVITY_ORIGINAL_INTENT:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_original_intent"

.field private static noCheckContentProviderPermissionPkg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sISecurityManager:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    .line 127
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    const-string v1, "com.android.incallui"

    const-string v2, "contacts;com.android.contacts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    .line 63
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-static {p0, p1, p2, p3}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static checkCrossPermission(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "callingPkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 146
    if-eqz p0, :cond_0

    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getComponentStringWithUserId(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserId()I
    .locals 2

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "security"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    sput-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 104
    :cond_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getCurrentUserId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 106
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static isAirLockUser(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 153
    const/16 v0, 0x63

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needCheckUser(Landroid/content/pm/ProviderInfo;Ljava/lang/String;IZ)Z
    .locals 3
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "checkUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p2, :cond_1

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v2

    if-eqz v2, :cond_1

    move p3, v1

    .line 142
    .end local p3    # "checkUser":Z
    :cond_0
    :goto_0
    return p3

    .line 136
    .restart local p3    # "checkUser":Z
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 137
    sget-object v2, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p3, v1

    .line 139
    goto :goto_0
.end method

.class Lmiui/securityspace/CrossUserUtilsCompat;
.super Ljava/lang/Object;
.source "CrossUserUtilsCompat.java"


# static fields
.field public static final AIRLOCK_USER_ID:I = 0x63

.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final OWNER_SHARED_USER_GID:I

.field public static final XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    .line 37
    const/16 v0, 0x3e7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    .line 50
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 57
    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "userId":I
    if-eq v0, v2, :cond_0

    .line 59
    invoke-static {p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    .line 63
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 74
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 76
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 77
    .local v1, "callingPackageUid":I
    const/16 v5, 0x3e8

    if-gt v1, v5, :cond_0

    .line 78
    const/4 v4, 0x1

    .line 88
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "callingPackageUid":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 133
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, p1, v4, v5, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v3, v0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProfileIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 98
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 100
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 103
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public static startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 125
    return-void
.end method

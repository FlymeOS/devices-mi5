.class public Lcom/miui/server/SecSpaceManagerService;
.super Ljava/lang/Object;
.source "SecSpaceManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SecSpaceManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static disableGraphiteApps(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v4, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, "packageName":Ljava/lang/String;
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 47
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 48
    const-string v4, "SecSpaceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disable graphite package : [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SecSpaceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disable graphite package : [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed , package not install"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static hasSecondSpace(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 59
    .local v2, "mUserManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 61
    .local v1, "info":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v5, 0x63

    if-eq v4, v5, :cond_0

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const/4 v4, 0x1

    .line 68
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v2, "SecSpaceManagerService"

    const-string v3, "init SecSpaceManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->disableGraphiteApps(Landroid/content/Context;)V

    .line 40
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.securitycore"

    const-string v4, "com.miui.securityspace.service.SpaceService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "SecSpaceManagerService"

    const-string v3, "Can not start SpaceService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

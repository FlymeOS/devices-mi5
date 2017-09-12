.class public Lcom/android/server/pm/ExtraPackageManagerService;
.super Ljava/lang/Object;
.source "ExtraPackageManagerService.java"


# static fields
.field static final RESTORECON_FLAG_FILE:Ljava/lang/String; = "restorecon_flag"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ExtraPackageManagerService"

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExtraRestoreconFlag(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, -0x2710

    .line 64
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Check extra restorecon flag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "second_user_id"

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 67
    .local v1, "userId":I
    if-ne v1, v5, :cond_0

    .line 68
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v3, "There\'s no second space, delete the flag file"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "flagFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    .end local v0    # "flagFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static getExtraRestoreconFlagFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 42
    const-string v0, "/data/system/restorecon_flag"

    .line 43
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static restoreconData(I)V
    .locals 11
    .param p0, "userId"    # I

    .prologue
    .line 19
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restorecon for user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v3

    .line 21
    .local v3, "flagFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 22
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v7, "There\'s no restorecon flag file"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    .line 26
    .local v5, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, p0}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 27
    .local v1, "applicationInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 29
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 30
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/pm/Installer;->restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RestoreconData: {package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", volumeUuid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 35
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restorecon done, delete flag file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method static setExtraRestoreconFlag()V
    .locals 5

    .prologue
    .line 47
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Set extra restorecon flag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->getExtraRestoreconFlagFile()Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, "flagFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 52
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create flag file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

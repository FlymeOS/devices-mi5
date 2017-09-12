.class Lcom/android/server/pm/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerProxy$1;,
        Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;,
        Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/pm/PackageManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    const/4 v1, 0x0

    .line 147
    .local v1, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_start_0
    const-string v5, "packageFlagsToInstallFlags"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {p0, v5, v8, v9}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 148
    .local v3, "flags":I
    const-class v5, Lcom/android/server/pm/PackageManagerService;

    const-string v8, "getAppDexInstructionSets"

    const-class v9, [Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v5, v8, v9, v10}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 149
    .local v2, "dexInstructionSets":[Ljava/lang/String;
    const-string v5, "createInstallArgsForExisting"

    const-class v8, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object v2, v9, v10

    invoke-static {p0, v5, v8, v9}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    if-nez v1, :cond_0

    move v5, v6

    .line 165
    .end local v2    # "dexInstructionSets":[Ljava/lang/String;
    .end local v3    # "flags":I
    :goto_0
    return v5

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move v5, v6

    .line 157
    goto :goto_0

    .line 162
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "dexInstructionSets":[Ljava/lang/String;
    .restart local v3    # "flags":I
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 163
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    .line 164
    monitor-exit v6

    move v5, v7

    .line 165
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 14
    .param p0, "origin"    # Ljava/io/File;
    .param p1, "codeFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 176
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 177
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "instructionSet":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".apk"

    const-string v13, ".odex"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v7, "srcOdexFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 181
    new-instance v10, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerProxy;->createIfNonexist(Ljava/io/File;)V

    .line 182
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v2, "dstOdexFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    invoke-static {v7, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v10

    if-eqz v10, :cond_2

    move v6, v8

    .line 189
    .local v6, "ret":Z
    :goto_1
    sget-object v10, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copy odex file from: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v6, :cond_1

    .line 192
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 176
    .end local v2    # "dstOdexFile":Ljava/io/File;
    .end local v6    # "ret":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .restart local v2    # "dstOdexFile":Ljava/io/File;
    :cond_2
    move v6, v9

    .line 187
    goto :goto_1

    .line 196
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "dstOdexFile":Ljava/io/File;
    .end local v4    # "instructionSet":Ljava/lang/String;
    .end local v7    # "srcOdexFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 201
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 202
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 203
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 205
    :cond_0
    return-void
.end method

.method static deleteApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "keepData"    # Z

    .prologue
    .line 93
    const/4 v1, 0x2

    .line 94
    .local v1, "flags":I
    if-eqz p2, :cond_0

    .line 95
    or-int/lit8 v1, v1, 0x1

    .line 97
    :cond_0
    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$1;)V

    .line 99
    .local v2, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 100
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :goto_0
    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 103
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    goto :goto_0

    .line 107
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :goto_1
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    return v3

    .line 107
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .locals 6
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "originName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I

    .prologue
    .line 208
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base.apk"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v1, "baseApk":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v0, "afterApk":Ljava/io/File;
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTALL_FROM_BOOTING: Rename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "afterApk":Ljava/io/File;
    .end local v1    # "baseApk":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v0    # "afterApk":Ljava/io/File;
    .restart local v1    # "baseApk":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/system/ErrnoException;
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string v4, "Failed to rename "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 67
    new-instance v9, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;

    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$1;)V

    .line 69
    .local v9, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
    :try_start_0
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 72
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    const/16 v4, 0x42

    .line 73
    .local v4, "flags":I
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v4, v1

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "system"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 75
    monitor-enter v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v1, v9, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 78
    const-wide/32 v2, 0x493e0

    :try_start_2
    invoke-virtual {v9, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 79
    iget-boolean v1, v9, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    if-nez v1, :cond_0

    .line 80
    sget-object v1, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0

    .line 85
    :cond_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v0    # "verificationParams":Landroid/content/pm/VerificationParams;
    .end local v4    # "flags":I
    :goto_1
    iget v1, v9, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return v1

    .line 85
    .restart local v0    # "verificationParams":Landroid/content/pm/VerificationParams;
    .restart local v4    # "flags":I
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 86
    .end local v0    # "verificationParams":Landroid/content/pm/VerificationParams;
    .end local v4    # "flags":I
    :catch_1
    move-exception v8

    .line 87
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 118
    const/4 v1, 0x4

    .line 119
    .local v1, "parseFlags":I
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    .line 120
    .local v3, "pp":Landroid/content/pm/PackageParser;
    invoke-virtual {v3, p0, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 121
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "pp":Landroid/content/pm/PackageParser;
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 127
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 133
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method

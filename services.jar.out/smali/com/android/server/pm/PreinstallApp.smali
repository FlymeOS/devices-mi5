.class public Lcom/android/server/pm/PreinstallApp;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreinstallApp$Item;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final DEBUG:Z = true

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final MIUI_APP_PATH_L_LENGTH:I = 0x7

.field private static final NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final RECOMMENDED_APP_DIR:Ljava/io/File;

.field private static final RETRY_INSTALL_CNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sIgnorePreinstallApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNewUpdatedSystemPreinstallApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreinstallApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/android/server/pm/PreinstallApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    .line 91
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 94
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 97
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/recommended"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    .line 111
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    .line 112
    const-string v0, "ota-miui-MiTagApp.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 114
    :cond_0
    const-string v0, "support_ir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "partner-XMRemoteController.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 117
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V
    .locals 8
    .param p1, "appDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "preinstallAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "filterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 426
    .local v2, "apps":[Ljava/io/File;
    if-eqz v2, :cond_5

    .line 428
    move-object v3, v2

    .local v3, "arr$":[Ljava/io/File;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v1, v3, v4

    .line 429
    .local v1, "app":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 431
    move-object v0, v1

    .line 432
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "apk":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 438
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 439
    .restart local v0    # "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 450
    :cond_2
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    .end local v0    # "apk":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .line 445
    .restart local v0    # "apk":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 457
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    return-void
.end method

.method private static addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelDir"    # Ljava/io/File;
    .param p2, "channelListFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 953
    .local p0, "preinstallChannelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 955
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 956
    .local v0, "channelName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    .end local v0    # "channelName":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs while read preinstalled channels + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 960
    .restart local v0    # "channelName":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 371
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    goto :goto_0
.end method

.method private static copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    const/4 v1, 0x0

    .line 339
    .local v1, "dstCodePath":Ljava/io/File;
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 342
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 344
    :cond_2
    if-nez v1, :cond_3

    .line 345
    iget v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 346
    new-instance v1, Ljava/io/File;

    .end local v1    # "dstCodePath":Ljava/io/File;
    const-string v4, "/data/app/"

    iget-object v5, p1, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .restart local v1    # "dstCodePath":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 354
    :cond_4
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->createIfNonexist(Ljava/io/File;)V

    .line 355
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v0, "dstApkFile":Ljava/io/File;
    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v4, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 358
    .local v2, "ret":Z
    :cond_5
    if-eqz v2, :cond_0

    .line 360
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 348
    .end local v0    # "dstApkFile":Ljava/io/File;
    .end local v2    # "ret":Z
    :cond_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "dstCodePath":Ljava/io/File;
    const-string v4, "/data/app/"

    iget-object v5, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "dstCodePath":Ljava/io/File;
    goto :goto_1
.end method

.method public static copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 722
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, "Detected encryption in progress - can\'t copy preinstall apps now!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->parseAndDeleteDuplicatePreinstallApps()V

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    goto :goto_0

    .line 731
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    goto :goto_0
.end method

.method private static copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    const/4 v9, 0x0

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 623
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 631
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v11, "copy preinstall apps start"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 633
    .local v4, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 638
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v7

    .line 640
    .local v7, "recorded":Z
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 641
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/pm/PreinstallApp;->systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 643
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip copying new system updated preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", update it after system ready"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 646
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 647
    :cond_1
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_2
    iput-object v5, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 651
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 655
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-nez v6, :cond_6

    .line 659
    if-nez v7, :cond_5

    .line 661
    invoke-static {p0, v4}, Lcom/android/server/pm/PreinstallApp;->copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 662
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 664
    :cond_4
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    :cond_5
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User had uninstalled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", skip coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 672
    :cond_6
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v10, v10, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget v11, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-gt v10, v11, :cond_7

    .line 673
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not newer than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", skip coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 682
    :cond_7
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 683
    .restart local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_8

    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v10, :cond_9

    .line 684
    :cond_8
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 689
    :cond_9
    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v11, v11, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v10

    if-nez v10, :cond_a

    const/4 v8, 0x1

    .line 691
    .local v8, "sameSignatures":Z
    :goto_1
    if-nez v8, :cond_b

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 692
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mismatch signature with system app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", skip coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .end local v8    # "sameSignatures":Z
    :cond_a
    move v8, v9

    .line 689
    goto :goto_1

    .line 698
    .restart local v8    # "sameSignatures":Z
    :cond_b
    if-nez v8, :cond_c

    .line 699
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mismatch signature with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", delete it\'s resources and data before coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/server/pm/PackageManagerService;->deleteDataPackage(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_c

    .line 703
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete mismatch signature app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed, skip coping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    :cond_c
    invoke-static {p0, v4, v6}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 710
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_0

    .line 713
    :cond_d
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    .end local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "recorded":Z
    .end local v8    # "sameSignatures":Z
    :cond_e
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 718
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy preinstall apps end, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method private static copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 569
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->existHistory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 574
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v10, "Exist preinstall history, skip copying preinstall apps for first boot!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 577
    :cond_0
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v10, "Copy preinstall apps start for first boot"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v6, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 584
    .local v4, "item":Lcom/android/server/pm/PreinstallApp$Item;
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    .line 585
    .local v7, "pl":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v9, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 586
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static {v8}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 591
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip copying new system updated preinstall app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", update it after system ready"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v9, v4, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 594
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    .line 595
    iput-object v5, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 596
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 598
    :cond_1
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    invoke-static {p0, v4, v8}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 603
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v9, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    if-eqz v9, :cond_3

    iget-object v9, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 606
    iget-object v9, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_3
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_1

    .line 610
    :cond_4
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 613
    .end local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v7    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 616
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 618
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copy preinstall apps end for first boot, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "dstCodePath":Ljava/io/File;
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 313
    :cond_1
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 316
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 320
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 323
    :cond_2
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 325
    .local v1, "ret":Z
    :cond_3
    if-eqz v1, :cond_0

    .line 327
    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 318
    .end local v1    # "ret":Z
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0    # "dstCodePath":Ljava/io/File;
    const-string v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "dstCodePath":Ljava/io/File;
    goto :goto_1
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 288
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 289
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 290
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 292
    :cond_0
    return-void
.end method

.method private static dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static dealed(Ljava/util/Map;Ljava/io/File;)Z
    .locals 4
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/data-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 9
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 263
    .local v2, "files":[Ljava/io/File;
    const/4 v5, 0x1

    .line 264
    .local v5, "success":Z
    if-eqz v2, :cond_2

    .line 265
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 266
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 269
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v5, 0x0

    .line 265
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 283
    return-void
.end method

.method private static existHistory()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app/preinstall_history"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/preinstall_history"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAllPreinstallApplist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getApkFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "app"    # Ljava/io/File;

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 302
    .end local p0    # "app":Ljava/io/File;
    :cond_0
    return-object p0
.end method

.method private static getBaseApkFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 421
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCustomizePreinstallAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 139
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPeinstalledChannelList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v2, "preinstalledChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    .line 931
    .local v0, "custVariantDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, "custVariantPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 936
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ota_customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 939
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 942
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ota_recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 946
    .end local v1    # "custVariantPath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getPreinstallApplist(Z)Ljava/util/ArrayList;
    .locals 6
    .param p0, "onlyCust"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v2, "preinstallAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v1, "customizedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 464
    .local v3, "recommendedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    .line 465
    .local v0, "custVariantDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 467
    new-instance v4, Ljava/io/File;

    const-string v5, "customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 469
    new-instance v4, Ljava/io/File;

    const-string v5, "ota_customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 471
    new-instance v4, Ljava/io/File;

    const-string v5, "recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 473
    new-instance v4, Ljava/io/File;

    const-string v5, "ota_recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 478
    :cond_0
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v1}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 480
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 482
    if-nez p0, :cond_1

    .line 483
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 485
    :cond_1
    return-object v2
.end method

.method static ignorePreinstallApks(Ljava/lang/String;)V
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/io/File;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    aput-object v7, v5, v6

    .line 126
    .local v5, "preinstallDirs":[Ljava/io/File;
    move-object v1, v5

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 127
    .local v2, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "apkFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v0    # "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static installCustApps()V
    .locals 16

    .prologue
    .line 799
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 800
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v4

    .line 801
    .local v4, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 802
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v12, " No cust app need to install"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 807
    .local v2, "currentTime":J
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v12, "Install cust apps start"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 809
    .local v5, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 812
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 816
    .local v1, "app":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 817
    .local v0, "apkFile":Ljava/io/File;
    invoke-static {v5, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 821
    const/4 v11, 0x2

    invoke-static {v9, v0, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    .line 822
    .local v10, "result":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 823
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] mtime["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 826
    .local v8, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_2

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 827
    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_2
    invoke-static {v5, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_1

    .line 832
    .end local v8    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_3
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] fail, result["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 836
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    .end local v10    # "result":I
    :cond_4
    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 839
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 841
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install cust apps end, consume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static installNewUpdatedSystemPreinstallApps()V
    .locals 14

    .prologue
    .line 755
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 756
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 757
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v11, "No updated system preinstall apps need to install"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_0
    return-void

    .line 761
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 762
    .local v0, "currentTime":J
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v11, "Install updated system preinstall apps start"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 764
    .local v3, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 765
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreinstallApp$Item;

    .line 766
    .local v5, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v3, v5}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 770
    iget-object v7, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 771
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v6, 0x0

    .line 773
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v11, 0x40

    const/4 v12, 0x0

    invoke-interface {v8, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 778
    if-eqz v6, :cond_2

    iget v10, v7, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v10, v11, :cond_2

    .line 779
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not newer than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 774
    :catch_0
    move-exception v2

    .line 775
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 782
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v10, v5, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    const/4 v11, 0x2

    invoke-static {v8, v10, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v9

    .line 783
    .local v9, "result":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 784
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {v3, v5}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    .line 789
    :goto_2
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 787
    :cond_3
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed, result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 791
    .end local v5    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "result":I
    :cond_4
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install updated system preinstall apps end, consume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static installVanwardCustApps()V
    .locals 16

    .prologue
    .line 849
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 850
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v4

    .line 851
    .local v4, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 852
    .local v11, "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "vanward_applist"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12, v11}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 856
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 857
    :cond_0
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v13, "No vanward cust app need to install"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 862
    .local v2, "currentTime":J
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v13, "Install vanward cust apps start"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 864
    .local v5, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 867
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 871
    .local v1, "app":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 872
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 876
    const/4 v12, 0x2

    invoke-static {v9, v0, v12}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    .line 877
    .local v10, "result":I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    .line 878
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] mtime["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 881
    .local v8, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v8, :cond_3

    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 882
    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_3
    invoke-static {v5, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_1

    .line 887
    .end local v8    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_4
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail, result["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 891
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "app":Ljava/io/File;
    .end local v10    # "result":I
    :cond_5
    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 894
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/ArrayList;)V

    .line 896
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Install vanward cust apps end, consume "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static final isApkFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSamePackage(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p0, "appFileA"    # Ljava/io/File;
    .param p1, "appFileB"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 975
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 976
    .local v0, "plA":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 978
    .local v1, "plB":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 979
    :cond_0
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    return v2

    .line 983
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 984
    :cond_2
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_3
    iget-object v3, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 989
    const/4 v2, 0x1

    goto :goto_0

    .line 991
    :cond_4
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "isSamePackage return false."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 505
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 497
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 5
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "curLocale"    # Ljava/util/Locale;

    .prologue
    .line 900
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "locales":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 902
    aget-object v2, v1, v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    :cond_0
    const/4 v2, 0x1

    .line 908
    :goto_1
    return v2

    .line 901
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static parseAndDeleteDuplicatePreinstallApps()V
    .locals 14

    .prologue
    .line 531
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getAllPreinstallApplist()Ljava/util/List;

    move-result-object v8

    .line 532
    .local v8, "preinstallAppFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 533
    .local v0, "currentTime":J
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 534
    .local v5, "pa":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v7

    .line 535
    .local v7, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v7, :cond_0

    iget-object v10, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 536
    :cond_0
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed, skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_1
    iget-object v6, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 541
    .local v6, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PreinstallApp$Item;

    const/4 v10, 0x0

    invoke-direct {v3, v6, v5, v7, v10}, Lcom/android/server/pm/PreinstallApp$Item;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V

    .line 542
    .local v3, "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 543
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 545
    :cond_2
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 546
    .local v4, "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp$Item;->betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 547
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v10, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_1
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is better than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ignore "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " !!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 551
    :cond_3
    move-object v9, v3

    .line 552
    .local v9, "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    move-object v3, v4

    .line 553
    move-object v4, v9

    goto :goto_1

    .line 564
    .end local v3    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v4    # "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "pa":Ljava/io/File;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v9    # "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    :cond_4
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse preinstall apps, consume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method private static readHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 21
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v9, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 203
    .end local v9    # "installHistoryFile":Ljava/io/File;
    :goto_0
    return-void

    .line 150
    .restart local v9    # "installHistoryFile":Ljava/io/File;
    :cond_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 151
    .local v8, "fileReader":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v5, "bufferReader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 153
    .local v10, "line":Ljava/lang/String;
    const/16 v16, 0x0

    .line 155
    .local v16, "possibleNewPath":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 156
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, "ss":[Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 161
    const-wide/16 v12, 0x0

    .line 163
    .local v12, "mtime":J
    const/16 v18, 0x1

    :try_start_1
    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    .line 167
    const/16 v18, 0x0

    :try_start_2
    aget-object v18, v17, v18

    sget-object v19, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 171
    const/16 v18, 0x0

    aget-object v18, v17, v18

    sget-object v19, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 172
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v18, 0x0

    aget-object v18, v17, v18

    sget-object v19, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 174
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v9    # "installHistoryFile":Ljava/io/File;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "mtime":J
    .end local v16    # "possibleNewPath":Ljava/lang/String;
    .end local v17    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 164
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "installHistoryFile":Ljava/io/File;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "mtime":J
    .restart local v16    # "possibleNewPath":Ljava/lang/String;
    .restart local v17    # "ss":[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 165
    .local v6, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 176
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 178
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "paths":[Ljava/lang/String;
    if-eqz v15, :cond_3

    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 180
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v7, v15, v18

    .line 181
    .local v7, "fileName":Ljava/lang/String;
    const-string v18, ".apk"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "apkName":Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 188
    new-instance v14, Ljava/io/File;

    const/16 v18, 0x0

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v14, "oldAppFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v11, "newAppFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v14, v11}, Lcom/android/server/pm/PreinstallApp;->isSamePackage(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 192
    const/16 v18, 0x0

    aput-object v16, v17, v18

    .line 196
    .end local v4    # "apkName":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v11    # "newAppFile":Ljava/io/File;
    .end local v14    # "oldAppFile":Ljava/io/File;
    .end local v15    # "paths":[Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 199
    .end local v12    # "mtime":J
    .end local v17    # "ss":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 200
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static readHistory(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "/data/system/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    const-string v0, "/data/app/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method private static readLineToSet(Ljava/io/File;Ljava/util/Set;)V
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .local v2, "buffer":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vanward_applist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 389
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 390
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v3, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 391
    .local v3, "curLocale":Ljava/util/Locale;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 392
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "ss":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7, v3}, Lcom/android/server/pm/PreinstallApp;->isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 402
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "curLocale":Ljava/util/Locale;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 403
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-eqz v1, :cond_1

    .line 411
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 418
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 398
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 399
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 404
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 405
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 410
    if-eqz v1, :cond_1

    .line 411
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 413
    :catch_2
    move-exception v4

    .line 414
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 410
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_1

    .line 411
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 413
    :catch_3
    move-exception v4

    .line 414
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 413
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .line 414
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 407
    .local v4, "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 410
    if-eqz v1, :cond_1

    .line 411
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 413
    :catch_6
    move-exception v4

    .line 414
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 409
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 410
    :goto_6
    if-eqz v1, :cond_4

    .line 411
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 415
    :cond_4
    :goto_7
    throw v7

    .line 413
    :catch_7
    move-exception v4

    .line 414
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 409
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    goto :goto_6

    .line 406
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v1, v2

    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    goto :goto_5

    .line 404
    :catch_9
    move-exception v4

    goto :goto_4

    .line 402
    :catch_a
    move-exception v4

    goto :goto_1
.end method

.method private static recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    .line 249
    return-void
.end method

.method private static recordToHistory(Ljava/util/Map;Ljava/io/File;)V
    .locals 4
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private static recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static recorded(Ljava/util/Map;Ljava/io/File;)Z
    .locals 1
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "retryCnt"    # I

    .prologue
    .line 736
    const/4 v0, 0x0

    .local v0, "n":I
    move v1, v0

    .line 739
    .end local v0    # "n":I
    .local v1, "n":I
    :goto_0
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retry time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I

    move-result v2

    .line 741
    .local v2, "result":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 751
    .end local v1    # "n":I
    .restart local v0    # "n":I
    :cond_1
    return v2

    .line 746
    .end local v0    # "n":I
    .restart local v1    # "n":I
    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-ge v1, p2, :cond_1

    move v1, v0

    .end local v0    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 747
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static underData(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 218
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 219
    .local v1, "fileWriter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 221
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 222
    .local v4, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Ljava/io/File;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 226
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installHistoryFile":Ljava/io/File;
    .end local v4    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_0
    move-exception v5

    .line 233
    :goto_1
    return-void

    .line 229
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "installHistoryFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 230
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static writeHistory(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "old":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 240
    :cond_0
    const-string v1, "/data/app/preinstall_history"

    invoke-static {v1, p0}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method private static writePreinstallPackage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v6, "Write preinstalled package name into /data/system/preinstall.list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const/4 v0, 0x0

    .line 918
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/data/system/preinstall.list"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 919
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 920
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 923
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 924
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v6, "Error occurs when to write preinstalled package name."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 925
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 923
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.class public Landroid/content/pm/PackageHideManager;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageHideManager$AppHideItem;,
        Landroid/content/pm/PackageHideManager$AppHideConfig;
    }
.end annotation


# static fields
.field private static final APP_HIDE_SWITCH_FILE:Ljava/lang/String; = "/data/system/app_hide_switch.xml"

.field private static final APP_HIDE_SWITCH_FILE_VERSION:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

.field private static mFile:Ljava/io/File;

.field private static volatile sInstance:Landroid/content/pm/PackageHideManager;


# instance fields
.field private mShouldHideApks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageHideManager$AppHideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Landroid/content/pm/PackageHideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isFirstBoot"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    .line 88
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->init(Z)V

    .line 89
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 325
    .local v1, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    invoke-direct {p0, p1, v1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    goto :goto_0

    .line 327
    .end local v1    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_0
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Landroid/content/pm/PackageHideManager$AppHideItem;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 332
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 334
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v7, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 335
    iget-object v1, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 336
    .local v6, "path":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 339
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 349
    :cond_1
    return-void
.end method

.method public static getInstance(Z)Landroid/content/pm/PackageHideManager;
    .locals 2
    .param p0, "isFirstBoot"    # Z

    .prologue
    .line 77
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Landroid/content/pm/PackageHideManager;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/pm/PackageHideManager;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageHideManager;-><init>(Z)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init(Z)V
    .locals 5
    .param p1, "isFirstBoot"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 92
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_hide_switch.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    .line 96
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->readAppHideConfig()V

    .line 97
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v0}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 99
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 100
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 101
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 103
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 105
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 106
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 107
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_0

    .line 108
    :cond_3
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    if-eq v0, v2, :cond_0

    .line 111
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 112
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 113
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_0
.end method

.method private initHideApks()V
    .locals 9

    .prologue
    .line 269
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 270
    const-string/jumbo v4, "hidden_app_packagename_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "pkgNameList":[Ljava/lang/String;
    const-string/jumbo v4, "hidden_app_path_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "appPathList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 274
    aget-object v4, v0, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "paths":[Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    aget-object v5, v3, v1

    new-instance v6, Landroid/content/pm/PackageHideManager$AppHideItem;

    aget-object v7, v3, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v2}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isSystemServer()Z
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 378
    const-string/jumbo v1, "support_app_hiding"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 258
    :cond_2
    if-ne v0, v3, :cond_0

    move v1, v2

    .line 261
    goto :goto_0
.end method

.method private readAppHideConfig()V
    .locals 13

    .prologue
    .line 183
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v10

    .line 184
    const/4 v6, 0x0

    .line 186
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 187
    new-instance v7, Ljava/io/FileInputStream;

    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "stream":Ljava/io/InputStream;
    .local v7, "stream":Ljava/io/InputStream;
    move-object v6, v7

    .line 195
    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 196
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v4}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 198
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "app-hide"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 200
    new-instance v9, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v9}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 201
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string/jumbo v12, "isFunctionOpen"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 203
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 205
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string/jumbo v12, "isHide"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 208
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 209
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 210
    const-string/jumbo v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    const/4 v9, 0x0

    const-string/jumbo v11, "package"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v11, "path"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "path":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v11, "isHide"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 215
    .local v2, "isHide":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 216
    iget-object v9, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    new-instance v11, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v12, ";"

    invoke-static {v5, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v3, v2, v12}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v9, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 222
    .end local v2    # "isHide":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :goto_3
    return-void

    .line 189
    :cond_3
    :try_start_4
    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/miui/Shell;->readByteArray(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 190
    .local v0, "bytes":[B
    if-nez v0, :cond_5

    .line 239
    if-eqz v6, :cond_4

    .line 240
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    :cond_4
    :goto_4
    :try_start_6
    monitor-exit v10

    goto :goto_3

    .line 245
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 193
    .restart local v0    # "bytes":[B
    :cond_5
    :try_start_7
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 239
    .end local v0    # "bytes":[B
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_2

    .line 240
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 242
    :catch_1
    move-exception v9

    goto :goto_2

    .line 224
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_9
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 242
    :catch_3
    move-exception v9

    goto :goto_2

    .line 226
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_b
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 242
    :catch_5
    move-exception v9

    goto :goto_2

    .line 228
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v1

    .line 229
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 242
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .line 230
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_f
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 242
    :catch_9
    move-exception v9

    goto/16 :goto_2

    .line 232
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_11
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 242
    :catch_b
    move-exception v9

    goto/16 :goto_2

    .line 234
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_c
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    :try_start_13
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 239
    if-eqz v6, :cond_2

    .line 240
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 242
    :catch_d
    move-exception v9

    goto/16 :goto_2

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    .line 239
    if-eqz v6, :cond_7

    .line 240
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 243
    :cond_7
    :goto_5
    :try_start_16
    throw v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 242
    .restart local v0    # "bytes":[B
    :catch_e
    move-exception v9

    goto/16 :goto_4

    .end local v0    # "bytes":[B
    .local v1, "e":Ljava/lang/IllegalStateException;
    :catch_f
    move-exception v9

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v11

    goto :goto_5
.end method

.method private writeAppHideConfig()Z
    .locals 14

    .prologue
    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, "stream":Ljava/io/OutputStream;
    const/4 v6, 0x1

    .line 120
    .local v6, "result":Z
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "tmpPath":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 124
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v7    # "stream":Ljava/io/OutputStream;
    .local v8, "stream":Ljava/io/OutputStream;
    move-object v7, v8

    .line 129
    .end local v8    # "stream":Ljava/io/OutputStream;
    .restart local v7    # "stream":Ljava/io/OutputStream;
    :goto_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 130
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "utf-8"

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 131
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    const/4 v10, 0x0

    const-string v11, "app-hide"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const/4 v10, 0x0

    const-string/jumbo v11, "isFunctionOpen"

    sget-object v12, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v12, v12, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v10, 0x0

    const-string/jumbo v11, "version"

    sget-object v12, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v12, v12, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const/4 v10, 0x0

    const-string/jumbo v11, "isHide"

    sget-object v12, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v12, v12, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v10, :cond_5

    .line 139
    iget-object v10, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 140
    .local v4, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-object v10, v4, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 144
    const/4 v10, 0x0

    const-string/jumbo v11, "item"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    iget-object v12, v4, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const/4 v10, 0x0

    const-string/jumbo v11, "path"

    invoke-virtual {v4}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const/4 v10, 0x0

    const-string/jumbo v11, "isHide"

    iget-boolean v12, v4, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/4 v10, 0x0

    const-string/jumbo v11, "item"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 157
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v10, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string v11, "Failed to write state, restoring backup."

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v6, 0x0

    .line 161
    if-eqz v7, :cond_1

    .line 163
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-nez v10, :cond_2

    .line 171
    :try_start_3
    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 172
    :try_start_4
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 173
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    :cond_2
    :goto_4
    return v6

    .line 120
    .end local v9    # "tmpPath":Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_.bak"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 126
    .restart local v9    # "tmpPath":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .end local v7    # "stream":Ljava/io/OutputStream;
    .restart local v8    # "stream":Ljava/io/OutputStream;
    move-object v7, v8

    .end local v8    # "stream":Ljava/io/OutputStream;
    .restart local v7    # "stream":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 151
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v10, 0x0

    const-string v11, "app-hide"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 153
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v10

    if-nez v10, :cond_6

    .line 154
    const/4 v11, 0x0

    move-object v0, v7

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v11, v10}, Landroid/miui/Shell;->writeByteArray(Ljava/lang/String;Z[B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    .line 161
    :cond_6
    if-eqz v7, :cond_1

    .line 163
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 166
    goto :goto_3

    .line 164
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v2

    .line 165
    const/4 v6, 0x0

    .line 166
    goto :goto_3

    .line 161
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_7

    .line 163
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 166
    :cond_7
    :goto_5
    throw v10

    .line 164
    :catch_3
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_5

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 174
    :catch_4
    move-exception v2

    .line 175
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 176
    const/4 v6, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getIgnoreApkPathList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v6, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 309
    iget-object v7, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 310
    .local v3, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-boolean v7, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 311
    iget-object v0, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 312
    .local v5, "path":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public isAppHide()Z
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppHide(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 371
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v2, :cond_0

    .line 372
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFunctionOpen()Z
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHideApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hide"    # Z

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 295
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 296
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eq v2, p3, :cond_0

    .line 297
    iput-boolean p3, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 298
    if-nez p3, :cond_2

    .line 299
    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    .line 301
    :cond_2
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v1

    goto :goto_0
.end method

.method public setHideApp(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hide"    # Z

    .prologue
    .line 281
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-ne v0, p2, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 284
    :cond_1
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 285
    if-nez p2, :cond_2

    .line 286
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;)V

    .line 288
    :cond_2
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v0

    goto :goto_0
.end method

.class public Lmiui/theme/ThemePermissionUtils;
.super Ljava/lang/Object;
.source "ThemePermissionUtils.java"


# static fields
.field private static final THEME_FILE_CONTEXT:Ljava/lang/String; = "u:object_r:theme_data_file:s0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v1}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isSystemServer"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v6

    .line 26
    :cond_1
    const/4 v4, 0x0

    .line 27
    .local v4, "themeRoot":Ljava/io/File;
    const/4 v2, -0x1

    .line 28
    .local v2, "mode":I
    const-string v7, "/data/system/theme/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 29
    new-instance v4, Ljava/io/File;

    .end local v4    # "themeRoot":Ljava/io/File;
    const-string v7, "/data/system/theme/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .restart local v4    # "themeRoot":Ljava/io/File;
    const/16 v2, 0x1ed

    .line 35
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "destFile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 40
    const/4 v3, 0x0

    .line 42
    .local v3, "ret":Z
    if-eqz p1, :cond_5

    .line 46
    :try_start_0
    const-string v7, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v7}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    move v3, v5

    .line 47
    :goto_2
    const-string v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "system user update theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v6, v3

    .line 57
    goto :goto_0

    .line 31
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "ret":Z
    :cond_3
    sget-object v7, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 32
    new-instance v4, Ljava/io/File;

    .end local v4    # "themeRoot":Ljava/io/File;
    sget-object v7, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .restart local v4    # "themeRoot":Ljava/io/File;
    const/16 v2, 0x1fd

    goto :goto_1

    .restart local v0    # "destFile":Ljava/io/File;
    .restart local v3    # "ret":Z
    :cond_4
    move v3, v6

    .line 46
    goto :goto_2

    .line 49
    :cond_5
    const/16 v7, 0x2649

    const/16 v8, 0x2649

    :try_start_1
    invoke-static {p0, v7, v8}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    move-result v3

    .line 50
    invoke-static {p0, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    move v3, v5

    .line 51
    :goto_4
    const-string v7, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v7}, Landroid/miui/Shell;->setfilecon(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v3, :cond_7

    move v3, v5

    :goto_5
    goto :goto_3

    :cond_6
    move v3, v6

    .line 50
    goto :goto_4

    :cond_7
    move v3, v6

    .line 51
    goto :goto_5

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "occur exception when updating theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

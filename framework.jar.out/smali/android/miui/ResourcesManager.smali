.class public Landroid/miui/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

.field private static final MIUI_FRAMEWORK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.system-1.apk"

.field private static final MIUI_FRAMEWORK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.system-2.apk"

.field private static final MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

.field private static final MIUI_SDK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.core-1.apk"

.field private static final MIUI_SDK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.core-2.apk"

.field private static final MIUI_SDK_RES_PATH:Ljava/lang/String;

.field private static final VERSION_ABOVE_5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    .line 16
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_1

    const-string v0, "/system/app/miui/miui.apk"

    :goto_1
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    .line 22
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_2

    const-string v0, "/system/app/miuisystem/miuisystem.apk"

    :goto_2
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    .line 28
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_3

    const-string v0, "/system/framework/framework-ext-res/framework-ext-res.apk"

    :goto_3
    sput-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "/system/app/miui.apk"

    goto :goto_1

    .line 22
    :cond_2
    const-string v0, "/system/app/miuisystem.apk"

    goto :goto_2

    .line 28
    :cond_3
    const-string v0, "/system/framework/framework-ext-res.apk"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSystemAssets(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.core-1.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 44
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.system-1.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 52
    :goto_1
    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 53
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.core-2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.system-2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    const-string v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :cond_3
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static belongToMiuiFrameworkThemePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 60
    instance-of v0, p0, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Landroid/content/res/MiuiResources;

    .end local p0    # "res":Landroid/content/res/Resources;
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static isMiuiExtFrameworkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiuiSystemSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

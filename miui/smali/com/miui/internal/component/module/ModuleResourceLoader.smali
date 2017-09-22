.class public Lcom/miui/internal/component/module/ModuleResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 87
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 90
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 91
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 53
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v2

    .line 55
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_0

    .line 57
    invoke-interface {v2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 58
    invoke-interface {v2, v1, p1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 59
    if-eqz p2, :cond_1

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-interface {v2, v1, v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 66
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-interface {v2, v1, v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_3

    .line 71
    invoke-static {p0, v1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 73
    :cond_3
    return-void
.end method

.method public static load(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    .line 24
    return-void
.end method

.method public static load(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Initial(Ljava/util/List;Ljava/util/List;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p0, p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public static load2Initial(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    move-result-object v2

    .line 39
    invoke-interface {v0, v1}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v0, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public static load2System(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 50
    return-void
.end method

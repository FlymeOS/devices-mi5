.class public Lcom/miui/internal/component/ComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final df:Ljava/lang/String; = "plugins"

.field private static final dg:Ljava/lang/String; = "plugins"


# instance fields
.field private dh:Lmiui/core/Manifest;


# direct methods
.method public constructor <init>(Lmiui/core/Manifest;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/internal/component/ComponentManager;->dh:Lmiui/core/Manifest;

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 76
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 79
    invoke-static {v4, v5}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 80
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lmiui/core/Manifest;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v1

    invoke-virtual {p2}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private b(Landroid/content/Context;Lmiui/core/Manifest;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginContext;->setApplicationContext(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/internal/component/ComponentManager;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v1, "plugins"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/ComponentManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 56
    :cond_0
    new-instance v1, Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v1, v0}, Lcom/miui/internal/component/plugin/PluginLoader;-><init>(Ljava/io/File;)V

    .line 57
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 59
    new-instance v0, Lcom/miui/internal/component/plugin/PluginClassLoader;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/plugin/PluginClassLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 60
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V

    .line 62
    new-instance v0, Lcom/miui/internal/component/plugin/PluginResourceLoader;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/plugin/PluginResourceLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 63
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V

    .line 64
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->dh:Lmiui/core/Manifest;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/ComponentManager;->a(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 41
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->dh:Lmiui/core/Manifest;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/ComponentManager;->b(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 42
    return-void
.end method

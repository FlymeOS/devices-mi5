.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
.super Ljava/lang/Object;
.source "EgretRuntimeLoader.java"


# static fields
.field private static final GAME_ENGINE_CLASS:Ljava/lang/String; = "org.egret.egretframeworknative.engine.EgretGameEngine"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLoader"

.field private static instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;


# instance fields
.field private egretGameEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    .line 22
    return-void
.end method

.method public static get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    invoke-direct {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;-><init>()V

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    .line 28
    :cond_0
    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-object v0
.end method


# virtual methods
.method public getEgretGameEngineClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .param p1, "library"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    .line 33
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loadJar(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public loadJar(Ljava/lang/String;)V
    .locals 6
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 41
    const-string v3, "EgretRuntimeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadJar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, p1, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 46
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 47
    const-string v3, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Loader"

    const-string v4, "need dex format jar"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

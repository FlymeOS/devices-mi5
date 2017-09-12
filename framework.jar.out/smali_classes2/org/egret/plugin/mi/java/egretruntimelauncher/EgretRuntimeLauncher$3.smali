.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 397
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->getEgretGameEngineClass()Ljava/lang/Class;

    move-result-object v0

    .line 399
    .local v0, "gameEngineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 400
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    move-result-object v1

    const-string v2, "fails to new game engine"

    invoke-interface {v1, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    # getter for: Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    invoke-static {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onSuccess(Ljava/lang/Class;)V

    goto :goto_0
.end method

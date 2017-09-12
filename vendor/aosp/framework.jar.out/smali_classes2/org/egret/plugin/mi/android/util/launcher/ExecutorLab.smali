.class public Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;
.super Ljava/lang/Object;
.source "ExecutorLab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecutorLab"

.field private static final THREAD_SIZE:I = 0x3

.field private static instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;


# instance fields
.field private pool:Ljava/util/concurrent/ExecutorService;

.field private volatile running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    .line 36
    return-void
.end method

.method public static getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;-><init>()V

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    .line 23
    :cond_0
    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    return-object v0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->shutDown()V

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    .line 31
    :cond_0
    return-void
.end method

.method private shutDown()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    .line 49
    iget-object v1, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 50
    :goto_0
    iget-object v1, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    if-nez v0, :cond_0

    .line 40
    const-string v0, "ExecutorLab"

    const-string v1, "ExecutorLab is stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    return v0
.end method

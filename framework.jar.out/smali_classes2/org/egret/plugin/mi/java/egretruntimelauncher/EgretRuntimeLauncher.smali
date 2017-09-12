.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;,
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$GameEngineMethod;
    }
.end annotation


# static fields
.field public static DEBUG_RUNTIME_DOWNLOAD:I = 0x0

.field public static final EGRET_JSON:Ljava/lang/String; = "egret.json"

.field public static final EGRET_ROOT:Ljava/lang/String; = "egret"

.field private static final EGRET_RUNTIME_CACHE_ROOT:Ljava/lang/String; = "update"

.field public static final EGRET_RUNTIME_SD_ROOT:Ljava/lang/String; = "egret/runtime"

.field private static final EGRET_RUNTIME_VERSION_URL:Ljava/lang/String; = "http://runtime.egret-labs.org/runtime.php"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLauncher"


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private downLoadSum:I

.field private downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

.field private downloaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private fileSizeSum:I

.field private libraryRoot:Ljava/io/File;

.field private mainHandler:Landroid/os/Handler;

.field private mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

.field private runtimeVersionUrl:Ljava/lang/String;

.field private sdRoot:Ljava/io/File;

.field protected updatedNumber:I

.field private urlData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->DEBUG_RUNTIME_DOWNLOAD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "libraryRoot"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-direct {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mainHandler:Landroid/os/Handler;

    .line 107
    const-string v0, "http://runtime.egret-labs.org/runtime.php"

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    .line 108
    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v1, "update"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    .line 110
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getSdRoot()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    .line 111
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 112
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "libraryRoot"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "devVersion"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    .line 118
    if-lez p5, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->parseRuntimeVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updated()V

    return-void
.end method

.method static synthetic access$400(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateDownLoadSum()V

    return-void
.end method

.method static synthetic access$600(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I
    .locals 1
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    return v0
.end method

.method static synthetic access$700(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I
    .locals 1
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fileSizeSum:I

    return v0
.end method

.method static synthetic access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    .locals 1
    .param p0, "x0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    return-object v0
.end method

.method private checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .locals 6
    .param p1, "library"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-direct {p0, p1, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    :goto_0
    return v2

    .line 322
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v0, "cacheZip":Ljava/io/File;
    new-instance v1, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;

    invoke-direct {v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;-><init>()V

    .line 324
    .local v1, "zip":Lorg/egret/plugin/mi/android/util/launcher/ZipClass;
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v1, v0, v3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    const-string v3, "EgretRuntimeLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to unzip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    const-string v3, "EgretRuntimeLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .locals 3
    .param p1, "library"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .prologue
    .line 292
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->isLatest(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSd(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .locals 5
    .param p1, "library"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v0, "cacheZip":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v1

    goto :goto_0
.end method

.method private checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z
    .locals 2
    .param p1, "library"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    .param p2, "root"    # Ljava/io/File;

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->isLatest(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private fetchRemoteVersion()V
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->addTask(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 222
    .local v3, "fileSize":I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 224
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 225
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return v3

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNeedUpdateLibraryList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v2

    .line 281
    .local v2, "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 282
    .local v1, "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkSd(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    .end local v1    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    :cond_1
    return-object v3
.end method

.method private getSdRoot()Ljava/io/File;
    .locals 3

    .prologue
    .line 125
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "egret/runtime"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, "runtimeRootInExternalStorage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    .end local v0    # "runtimeRootInExternalStorage":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    const-string v6, "egret.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 369
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    invoke-interface {v4, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v4, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->fromString(Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v2

    .line 375
    .local v2, "libraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 379
    .local v3, "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    invoke-direct {p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 380
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    invoke-interface {v4, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    goto :goto_0

    .line 384
    :cond_3
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->load(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v3    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    :cond_4
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V

    goto :goto_0
.end method

.method private isLatest(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "checkSum"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 297
    sget v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->DEBUG_RUNTIME_DOWNLOAD:I

    if-lez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {p1, p2}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->checkMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    goto :goto_0
.end method

.method private loadLibrary()V
    .locals 7

    .prologue
    .line 355
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v2

    .line 357
    .local v2, "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 358
    .local v1, "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    .end local v2    # "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    :cond_0
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V

    .line 364
    return-void
.end method

.method private notifyLoadHandler()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;

    invoke-direct {v0, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    .line 407
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private parseRuntimeVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v1, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->fromString(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    const-string v2, "egret.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, "runtime":Ljava/io/File;
    invoke-static {v0, p1}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 195
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateLibrary()V

    .line 196
    return-void
.end method

.method private declared-synchronized updateDownLoadSum()V
    .locals 7

    .prologue
    .line 202
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    .line 203
    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 206
    .local v3, "value":Ljava/lang/Integer;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rt zipUrl progress key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 209
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rt zipUrl progress downLoadSum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    monitor-exit p0

    return-void
.end method

.method private updateLibrary()V
    .locals 8

    .prologue
    .line 235
    const/4 v5, 0x0

    iput v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    .line 236
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getNeedUpdateLibraryList()Ljava/util/ArrayList;

    move-result-object v4

    .line 237
    .local v4, "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 238
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updated()V

    .line 240
    :cond_0
    const-string v5, "EgretRuntimeLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt libraryList size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "fileSizeTemp":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 244
    .local v3, "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getFileSize(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 245
    goto :goto_0

    .line 246
    .end local v3    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    :cond_1
    iput v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fileSizeSum:I

    .line 247
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 248
    .restart local v3    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    iget-object v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    iget-object v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    iget-object v7, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-direct {v0, v3, v5, v6, v7}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 250
    .local v0, "downloader":Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;
    new-instance v5, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;

    invoke-direct {v5, p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)V

    invoke-virtual {v0, v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->download(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;)V

    .line 272
    iget-object v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v5, "EgretRuntimeLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->addTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 276
    .end local v0    # "downloader":Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;
    .end local v3    # "library":Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    :cond_2
    return-void
.end method

.method private updated()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->loadLibrary()V

    goto :goto_0
.end method


# virtual methods
.method public run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 149
    :cond_0
    const-string v0, "library root, url or listener may be null"

    .line 150
    .local v0, "message":Ljava/lang/String;
    const-string v1, "EgretRuntimeLauncher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    .line 159
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v1, "EgretRuntimeLauncher"

    const-string v2, "run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    .line 158
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fetchRemoteVersion()V

    goto :goto_0
.end method

.method public setRuntimeVersionUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->stop()V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    .line 415
    return-void
.end method

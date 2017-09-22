.class public Lcom/miui/internal/log/LoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LoggerFactory"

.field private static final gb:Ljava/lang/String; = "/cache"

.field private static final gc:Ljava/lang/String; = "/debug_log/"

.field private static final gd:Ljava/lang/String; = "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

.field private static final ge:Ljava/lang/Object;

.field private static volatile gf:Z

.field private static final gg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/log/LoggerFactory;->ge:Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/miui/internal/log/LoggerFactory;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lmiui/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    if-nez v0, :cond_0

    .line 47
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 48
    if-gez v0, :cond_1

    move-object v0, v1

    .line 54
    :cond_0
    :goto_0
    sput-object v0, Lcom/miui/internal/log/LoggerFactory;->PACKAGE_NAME:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/miui/internal/log/LoggerFactory;->gg:Ljava/lang/String;

    .line 56
    return-void

    .line 51
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    sget-boolean v0, Lcom/miui/internal/log/LoggerFactory;->gf:Z

    if-nez v0, :cond_1

    .line 157
    sget-object v1, Lcom/miui/internal/log/LoggerFactory;->ge:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-boolean v0, Lcom/miui/internal/log/LoggerFactory;->gf:Z

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/miui/internal/log/LoggerFactory$1;

    invoke-direct {v0, p1, p2}, Lcom/miui/internal/log/LoggerFactory$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/internal/log/LoggerFactory;->gf:Z

    .line 167
    :cond_0
    monitor-exit v1

    .line 169
    :cond_1
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_3

    array-length v0, v1

    if-lez v0, :cond_3

    .line 176
    invoke-static {p1}, Lcom/miui/internal/log/LoggerFactory;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    if-nez v2, :cond_1

    .line 178
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to getDefaultSdcardLogDir"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 185
    if-nez v3, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to make sdcardLogDir"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    new-instance v3, Lcom/miui/internal/log/LoggerFactory$2;

    invoke-direct {v3}, Lcom/miui/internal/log/LoggerFactory$2;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 201
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 202
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v5, v6}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_3
    const-string v0, "LoggerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip dumpCachedLog, logNames="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    :cond_4
    const-string v0, "LoggerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip dumpCachedLog, cacheLogDir is not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/miui/internal/log/LoggerFactory;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to getCacheDir"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileLogger()Lcom/miui/internal/log/Logger;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/miui/internal/log/LoggerFactory;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/log/LoggerFactory;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to create default logger, log dir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t create default file logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    sget-object v1, Lcom/miui/internal/log/LoggerFactory;->gg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/log/LoggerFactory;->getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/miui/internal/log/Logger;

    invoke-direct {v0, p1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/miui/internal/log/appender/FileAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/FileAppender;-><init>()V

    .line 88
    new-instance v2, Lcom/miui/internal/log/format/SimpleFormatter;

    invoke-direct {v2}, Lcom/miui/internal/log/format/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/internal/log/appender/FileAppender;->setFormatter(Lcom/miui/internal/log/format/Formatter;)V

    .line 89
    new-instance v2, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;

    invoke-direct {v2}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;-><init>()V

    .line 90
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxBackupIndex(I)V

    .line 91
    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxFileSize(I)V

    .line 92
    new-instance v3, Lcom/miui/internal/log/appender/rolling/RollingFileManager;

    invoke-direct {v3, p0, p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v2}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V

    .line 94
    invoke-virtual {v1, v3}, Lcom/miui/internal/log/appender/FileAppender;->setFileManager(Lcom/miui/internal/log/appender/FileManager;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    .line 97
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    sget-object v1, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_0
.end method

.method public static getLogcatLogger()Lcom/miui/internal/log/Logger;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/miui/internal/log/Logger;

    sget-object v1, Lcom/miui/internal/log/LoggerFactory;->gg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/miui/internal/log/appender/LogcatAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/LogcatAppender;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    .line 67
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v1, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 109
    invoke-static {p0}, Lcom/miui/internal/log/LoggerFactory;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-static {v1}, Lcom/miui/internal/log/LoggerFactory;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v1, v0, p0}, Lcom/miui/internal/log/LoggerFactory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cache/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 124
    if-nez v2, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to getSystemCacheLogDir"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .line 131
    :cond_0
    return-object v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to getExternalStorageMiuiDirectory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$Arguments;,
        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static initialized:Z

.field private static mApplicationObject:Landroid/os/IBinder;

.field private static volatile mCrashing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    return-void
.end method

.method private static Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    const/4 v0, 0x4

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->removeFileForLowMem()V

    return-void
.end method

.method private static applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->nativeSetExitWithoutCleanup(Z)V

    .line 367
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 368
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldalvik/system/VMRuntime;->setTargetSdkVersion(I)V

    .line 372
    :try_start_0
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/android/internal/os/RuntimeInit;->invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 384
    .end local v0    # "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "AndroidRuntime"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final commonInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    new-instance v2, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>(Lcom/android/internal/os/RuntimeInit$1;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 170
    new-instance v2, Lcom/android/internal/os/RuntimeInit$1;

    invoke-direct {v2}, Lcom/android/internal/os/RuntimeInit$1;-><init>()V

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V

    .line 176
    invoke-static {v3}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 185
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/LogManager;->reset()V

    .line 186
    new-instance v2, Lcom/android/internal/logging/AndroidConfig;

    invoke-direct {v2}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 193
    invoke-static {}, Lcom/android/internal/os/RuntimeInitInjector;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "userAgent":Ljava/lang/String;
    const-string v2, "http.agent"

    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->install()V

    .line 207
    const-string v2, "ro.kernel.android.tracing"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "trace":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "AndroidRuntime"

    const-string v3, "NOTE: emulator trace profiling enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Landroid/os/Debug;->enableEmulatorTraceOutput()V

    .line 213
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 214
    return-void
.end method

.method static final enableDdms()V
    .locals 0

    .prologue
    .line 434
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    .line 435
    return-void
.end method

.method public static final getApplicationObject()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 227
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 232
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 233
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 238
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 239
    const-string v4, " Build/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 227
    .end local v0    # "id":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string v3, "1.0"

    goto :goto_0
.end method

.method private static invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 278
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 279
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v1

    .line 262
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 270
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 271
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 273
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 274
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 290
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "modifiers":I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 295
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 308
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeFinishInit()V

    .line 311
    return-void
.end method

.method private static final native nativeFinishInit()V
.end method

.method private static final native nativeSetExitWithoutCleanup(Z)V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method public static redirectLogStreams()V
    .locals 3

    .prologue
    .line 390
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 391
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x4

    const-string v2, "System.out"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 392
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 393
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x5

    const-string v2, "System.err"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 394
    return-void
.end method

.method private static final removeFileForLowMem()V
    .locals 5

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "dataDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "extDir":Ljava/lang/String;
    const-string v2, "AndroidRuntime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFileForLowMem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/downloaded_rom/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ramdump/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/MIUI/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/miliao/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/MiMarket/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/baidu/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sina/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/BaiduMap/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.xiaomi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.wbadcache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.tbs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.mishop/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/UCDownloads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/netease/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/step_log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/autohomemain/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/soufun/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/VideoCache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wandoujia/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/anr/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tombstones/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/dropbox/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/usagestats/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "extDir":Ljava/lang/String;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final setApplicationObject(Landroid/os/IBinder;)V
    .locals 0
    .param p0, "app"    # Landroid/os/IBinder;

    .prologue
    .line 422
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 423
    return-void
.end method

.method public static wrapperInit(I[Ljava/lang/String;)V
    .locals 1
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 354
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "system"    # Z

    .prologue
    .line 405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-object v2, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v3, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, p0, p2, v3}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 409
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "t2":Ljava/lang/Throwable;
    const-string v1, "AndroidRuntime"

    const-string v2, "Error reporting WTF"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    const-string v1, "AndroidRuntime"

    const-string v2, "Original WTF:"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 330
    const-wide/16 v0, 0x40

    const-string v2, "RuntimeInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 333
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 334
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeZygoteInit()V

    .line 335
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 336
    return-void
.end method

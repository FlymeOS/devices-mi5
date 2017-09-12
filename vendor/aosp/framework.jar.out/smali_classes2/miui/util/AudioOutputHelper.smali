.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$CompatCollector;,
        Lmiui/util/AudioOutputHelper$LPCollector;,
        Lmiui/util/AudioOutputHelper$TrackCollector;,
        Lmiui/util/AudioOutputHelper$Result;,
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$AudioOutputClient;
    }
.end annotation


# static fields
.field private static COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector; = null

.field private static final COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final TAG:Ljava/lang/String;

.field static final UNHANDLED:Lmiui/util/AudioOutputHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    .line 339
    sput-object v2, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 340
    new-instance v0, Lmiui/util/AudioOutputHelper$LPCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$LPCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 341
    new-instance v0, Lmiui/util/AudioOutputHelper$CompatCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$CompatCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 353
    new-instance v0, Lmiui/util/AudioOutputHelper$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v4, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .line 83
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    .local v3, "sessionId":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 85
    .local v2, "pid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addMainProc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v0, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    if-eqz v2, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "actives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 253
    .local v1, "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v8, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v8, :cond_2

    .line 254
    iget v6, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 255
    .local v6, "pid":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    .local v7, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v6, :cond_3

    .line 257
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v1    # "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pid":I
    .end local v7    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-eqz p2, :cond_0

    .line 266
    invoke-static {v0, p0}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 267
    .local v5, "mainProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 280
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v3, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 283
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v7, v8

    .line 308
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-object v7

    .line 287
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, p0, v10}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 289
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v7, v8

    .line 290
    goto :goto_0

    .line 293
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 295
    .local v4, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_6

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 298
    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 308
    goto :goto_0
.end method

.method private static getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, "mainProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 325
    .local v0, "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "colonIndex":I
    if-lez v1, :cond_0

    .line 327
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "mainName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 329
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v0    # "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "colonIndex":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "mainName":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isStandBy(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 229
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    const-string v8, "/cache"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0    # "dir":Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 109
    .local v4, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 110
    .local v6, "tid":J
    const/4 v2, 0x0

    .line 111
    .local v2, "i":I
    new-instance v1, Ljava/io/File;

    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "dumpFile":Ljava/io/File;
    move v2, v3

    .line 112
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    new-instance v1, Ljava/io/File;

    .end local v1    # "dumpFile":Ljava/io/File;
    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "dumpFile":Ljava/io/File;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 116
    :cond_1
    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    return-object v5

    .line 101
    .end local v1    # "dumpFile":Ljava/io/File;
    .end local v2    # "i":I
    .end local v4    # "pid":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v6    # "tid":J
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .locals 19
    .param p0, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v7, 0x0

    .line 125
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .local v8, "os":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v16, "media.audio_flinger"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    if-eqz v8, :cond_b

    .line 138
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 144
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 146
    .local v5, "in":Ljava/io/InputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11

    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 150
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :goto_1
    if-nez v5, :cond_2

    .line 151
    const/4 v1, 0x0

    .line 224
    :goto_2
    return-object v1

    .line 139
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v16

    move-object v7, v8

    .line 140
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 127
    :catch_1
    move-exception v4

    .line 128
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    if-eqz v7, :cond_0

    .line 138
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 139
    :catch_2
    move-exception v16

    goto :goto_0

    .line 129
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 130
    .local v4, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_6
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    if-eqz v7, :cond_0

    .line 138
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 139
    :catch_4
    move-exception v16

    goto :goto_0

    .line 131
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    if-eqz v7, :cond_0

    .line 138
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 139
    :catch_6
    move-exception v16

    goto :goto_0

    .line 133
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 136
    if-eqz v7, :cond_0

    .line 138
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_0

    .line 139
    :catch_8
    move-exception v16

    goto :goto_0

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_7
    if-eqz v7, :cond_1

    .line 138
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 140
    :cond_1
    :goto_8
    throw v16

    .line 154
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_2
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    const/4 v11, 0x0

    .line 158
    .local v11, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 160
    .local v13, "standby":Z
    const/4 v3, 0x0

    .line 161
    .local v3, "content":Ljava/lang/String;
    const/4 v12, 0x0

    .line 163
    .local v12, "skipped":Ljava/lang/String;
    :cond_3
    :goto_9
    if-eqz v12, :cond_6

    .line 164
    move-object v3, v12

    .line 165
    const/4 v12, 0x0

    .line 173
    :cond_4
    sget-object v16, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 174
    if-nez v11, :cond_5

    .line 175
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 177
    .restart local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-static {v10, v11}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 178
    goto :goto_9

    .line 167
    :cond_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v3

    .line 168
    if-nez v3, :cond_4

    .line 215
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 219
    :goto_a
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    .line 220
    :catch_9
    move-exception v16

    goto/16 :goto_2

    .line 181
    :cond_7
    :try_start_10
    sget-object v16, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 182
    .local v14, "standbyMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 183
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lmiui/util/AudioOutputHelper;->isStandBy(Ljava/lang/String;)Z

    move-result v13

    .line 185
    goto :goto_9

    .line 188
    .end local v15    # "str":Ljava/lang/String;
    :cond_8
    if-nez v13, :cond_3

    .line 189
    sget-object v2, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 190
    .local v2, "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    if-eqz v2, :cond_9

    .line 191
    invoke-interface {v2, v10, v3, v1, v11}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v12, v0, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    goto :goto_9

    .line 193
    :cond_9
    sget-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v3, v1, v11}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v9

    .line 194
    .local v9, "r":Lmiui/util/AudioOutputHelper$Result;
    iget-boolean v0, v9, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 195
    iget-object v12, v9, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    .line 196
    sget-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 197
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string v17, "collector=lp"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_9

    .line 211
    .end local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v2    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .end local v3    # "content":Ljava/lang/String;
    .end local v9    # "r":Lmiui/util/AudioOutputHelper$Result;
    .end local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12    # "skipped":Ljava/lang/String;
    .end local v13    # "standby":Z
    .end local v14    # "standbyMatcher":Ljava/util/regex/Matcher;
    :catch_a
    move-exception v4

    .line 212
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_11
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 215
    :try_start_12
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 219
    :goto_b
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 224
    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 199
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .restart local v2    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v9    # "r":Lmiui/util/AudioOutputHelper$Result;
    .restart local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v12    # "skipped":Ljava/lang/String;
    .restart local v13    # "standby":Z
    .restart local v14    # "standbyMatcher":Ljava/util/regex/Matcher;
    :cond_a
    :try_start_14
    sget-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v3, v1, v11}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v9

    .line 200
    iget-boolean v0, v9, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 201
    iget-object v12, v9, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    .line 202
    sget-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v16, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 203
    sget-object v16, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string v17, "collector=compat"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_9

    .line 214
    .end local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v2    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .end local v3    # "content":Ljava/lang/String;
    .end local v9    # "r":Lmiui/util/AudioOutputHelper$Result;
    .end local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12    # "skipped":Ljava/lang/String;
    .end local v13    # "standby":Z
    .end local v14    # "standbyMatcher":Ljava/util/regex/Matcher;
    :catchall_1
    move-exception v16

    .line 215
    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 219
    :goto_d
    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 221
    :goto_e
    throw v16

    .line 139
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v17

    goto/16 :goto_8

    .line 216
    .restart local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v12    # "skipped":Ljava/lang/String;
    .restart local v13    # "standby":Z
    :catch_c
    move-exception v16

    goto/16 :goto_a

    .end local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3    # "content":Ljava/lang/String;
    .end local v11    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12    # "skipped":Ljava/lang/String;
    .end local v13    # "standby":Z
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v16

    goto :goto_b

    .line 220
    :catch_e
    move-exception v16

    goto :goto_c

    .line 216
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v17

    goto :goto_d

    .line 220
    :catch_10
    move-exception v17

    goto :goto_e

    .line 147
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_11
    move-exception v16

    goto/16 :goto_1

    .line 136
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 133
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 131
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 129
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 127
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :cond_b
    move-object v7, v8

    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.class public final Lmiui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lmiui/maml/NotifierManager$ContentChangeNotifier;,
        Lmiui/maml/NotifierManager$MobileDataNotifier;,
        Lmiui/maml/NotifierManager$BroadcastNotifier;,
        Lmiui/maml/NotifierManager$BaseNotifier;,
        Lmiui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String;

.field public static TYPE_TIME_CHANGED:Ljava/lang/String;

.field public static TYPE_WIFI_STATE:Ljava/lang/String;

.field private static sInstance:Lmiui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    .line 24
    const-string v0, "MobileData"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    .line 25
    const-string v0, "WifiState"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    .line 27
    const-string v0, "TimeChanged"

    sput-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    return v0
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;
    .locals 6
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    sget-boolean v0, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lmiui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {v0, p1}, Lmiui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    .line 52
    :goto_0
    return-object v0

    .line 41
    :cond_1
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v2, v1, v3

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v1, v4

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v1, v5

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v2, v1, v3

    const-string v2, "android.intent.action.TIME_SET"

    aput-object v2, v1, v4

    invoke-direct {v0, p1, v1}, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 56
    const-class v1, Lmiui/maml/NotifierManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lmiui/maml/NotifierManager;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;

    .line 59
    :cond_0
    sget-object v0, Lmiui/maml/NotifierManager;->sInstance:Lmiui/maml/NotifierManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    .line 67
    sget-boolean v2, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "NotifierManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireNotifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    iget-object v3, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;

    move-object v1, v0

    .line 73
    if-nez v1, :cond_2

    .line 74
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lmiui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    monitor-exit v3

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {v1}, Lmiui/maml/NotifierManager$BaseNotifier;->init()V

    .line 79
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v1, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;

    move-result-object v0

    .line 104
    .local v0, "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->pauseListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->pause()V

    goto :goto_0
.end method

.method public releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    .line 86
    sget-boolean v1, Lmiui/maml/NotifierManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseNotifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v2, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier;

    .line 91
    .local v0, "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_1

    .line 92
    monitor-exit v2

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 95
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->getRef()I

    move-result v1

    if-nez v1, :cond_2

    .line 96
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->finish()V

    .line 97
    iget-object v1, p0, Lmiui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lmiui/maml/NotifierManager$BaseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    .local v0, "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lmiui/maml/NotifierManager$BaseNotifier;->resumeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "notifier":Lmiui/maml/NotifierManager$BaseNotifier;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class public Lcom/android/server/UidStateHelper;
.super Ljava/lang/Object;
.source "UidStateHelper.java"


# static fields
.field private static DEBUG:Z = false

.field public static final DEFAULT_PROCESS_STATE:I = 0x10

.field public static final FOREGROUND_STATE_VALUE_MAX:I = 0x2

.field private static final MSG_DISPATCH_UID_STATE_CHANGE:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/UidStateHelper;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mObserverInstalled:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mStateLock:Ljava/lang/Object;

.field private final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUidStateObervers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/app/IUidStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "UidProcStateHelper"

    sput-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    .line 40
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    .line 160
    new-instance v0, Lcom/android/server/UidStateHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/UidStateHelper$1;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 204
    new-instance v0, Lcom/android/server/UidStateHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/UidStateHelper$2;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/UidStateHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/UidStateHelper;->computeUidStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/UidStateHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/UidStateHelper;->dispatchUidStateChange(II)V

    return-void
.end method

.method private computeUidStateLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 118
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 121
    .local v4, "pidState":Landroid/util/SparseIntArray;
    const/16 v7, 0x10

    .line 122
    .local v7, "uidState":I
    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 124
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 125
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 126
    .local v6, "state":I
    if-ge v6, v7, :cond_0

    .line 127
    move v7, v6

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    .end local v5    # "size":I
    .end local v6    # "state":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v11, 0x10

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 133
    .local v3, "oldUidState":I
    if-eq v3, v7, :cond_3

    .line 135
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    if-gt v3, v12, :cond_4

    move v2, v9

    .line 137
    .local v2, "oldForeground":Z
    :goto_1
    if-gt v7, v12, :cond_5

    move v1, v9

    .line 138
    .local v1, "newForeground":Z
    :goto_2
    if-eq v2, v1, :cond_3

    .line 139
    iget-object v10, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v10, v9, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 143
    .end local v1    # "newForeground":Z
    .end local v2    # "oldForeground":Z
    :cond_3
    return-void

    :cond_4
    move v2, v8

    .line 136
    goto :goto_1

    .restart local v2    # "oldForeground":Z
    :cond_5
    move v1, v8

    .line 137
    goto :goto_2
.end method

.method private dispatchUidStateChange(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 148
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IUidStateChangeCallback;

    .line 150
    .local v0, "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IUidStateChangeCallback;->onUidStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    :cond_1
    iget-object v3, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 158
    return-void

    .line 153
    .restart local v0    # "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static get()Lcom/android/server/UidStateHelper;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/server/UidStateHelper;

    invoke-direct {v0}, Lcom/android/server/UidStateHelper;-><init>()V

    sput-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    return-object v0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isUidForeground(IZ)Z
    .locals 11
    .param p1, "uid"    # I
    .param p2, "doubleCheck"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 92
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-nez v7, :cond_0

    move v2, v5

    .line 113
    :goto_0
    return v2

    .line 96
    :cond_0
    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 97
    :try_start_0
    iget-object v8, p0, Lcom/android/server/UidStateHelper;->mUidState:Landroid/util/SparseIntArray;

    const/16 v9, 0x10

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_1

    move v2, v5

    .line 98
    .local v2, "isUidFg":Z
    :goto_1
    if-eqz p2, :cond_6

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "isFgByPids":Z
    iget-object v8, p0, Lcom/android/server/UidStateHelper;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 101
    .local v4, "pidState":Landroid/util/SparseIntArray;
    if-eqz v4, :cond_2

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 103
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 104
    .local v3, "pid":I
    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v8

    or-int/2addr v1, v8

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "isFgByPids":Z
    .end local v2    # "isUidFg":Z
    .end local v3    # "pid":I
    .end local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_1
    move v2, v6

    .line 97
    goto :goto_1

    .line 107
    .restart local v1    # "isFgByPids":Z
    .restart local v2    # "isUidFg":Z
    .restart local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_2
    if-eq v2, v1, :cond_3

    .line 108
    sget-object v8, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProcessObserver may miss callback, isUidFg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isFgByPids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v2, v5

    .end local v2    # "isUidFg":Z
    :goto_3
    monitor-exit v7

    goto :goto_0

    .line 112
    .end local v1    # "isFgByPids":Z
    .end local v4    # "pidState":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "isFgByPids":Z
    .restart local v2    # "isUidFg":Z
    .restart local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_5
    move v2, v6

    .line 110
    goto :goto_3

    .line 112
    .end local v1    # "isFgByPids":Z
    .end local v4    # "pidState":Landroid/util/SparseIntArray;
    :cond_6
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

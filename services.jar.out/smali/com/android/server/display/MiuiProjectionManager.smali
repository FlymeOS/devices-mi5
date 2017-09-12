.class final Lcom/android/server/display/MiuiProjectionManager;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;,
        Lcom/android/server/display/MiuiProjectionManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUI_PROJECTION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mState:Lcom/android/server/display/MiuiProjectionManager$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 35
    sget-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/MiuiProjectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->startProjectionInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/MiuiProjectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjectionInternal()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;
    .param p1, "x1"    # Lcom/android/server/display/MiuiProjectionManager$State;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method private startProjectionInternal()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "displayControllerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v7, "mRemoteDisplayConnected"

    const-class v8, Ljava/lang/Boolean;

    invoke-static {v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 53
    .local v0, "connected":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 58
    const-string v6, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v6}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    const-string v6, "isAvailable"

    const-class v7, Ljava/lang/Boolean;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 62
    .local v3, "isAvailable":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    const-string v6, "listen"

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    aput-object v9, v8, v10

    const/4 v9, 0x1

    new-instance v10, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v10, p0, v11}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-static {v2, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v5

    .line 66
    .local v5, "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    if-eqz v5, :cond_1

    .line 67
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v7, "mExtRemoteDisplay"

    invoke-virtual {v5}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v6, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    goto :goto_0

    .line 74
    .end local v3    # "isAvailable":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    .end local v5    # "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    new-instance v7, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v7, p0, v11}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V

    iget-object v8, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8, v11}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v4

    .line 75
    .local v4, "remoteDisplay":Landroid/media/RemoteDisplay;
    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v7, "mRemoteDisplay"

    invoke-static {v6, v7, v4}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    sget-object v6, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    goto :goto_0
.end method

.method private stopProjectionInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "extRemoteDisplay":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v5, "mExtRemoteDisplay"

    const-class v6, Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 83
    .local v2, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v4}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string v4, "dispose"

    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 89
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v5, "mExtRemoteDisplay"

    invoke-static {v4, v5, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .end local v0    # "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "extRemoteDisplay":Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 97
    return-void

    .line 92
    .restart local v1    # "extRemoteDisplay":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v5, "mRemoteDisplay"

    const-class v6, Landroid/media/RemoteDisplay;

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 93
    .local v3, "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/media/RemoteDisplay;>;"
    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RemoteDisplay;

    invoke-virtual {v4}, Landroid/media/RemoteDisplay;->dispose()V

    .line 94
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v5, "mRemoteDisplay"

    invoke-static {v4, v5, v8}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tryFindClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MIUI_PROJECTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public startProjection(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-ne v0, v1, :cond_0

    .line 101
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$1;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public stopProjection()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-eq v0, v1, :cond_0

    .line 116
    const-string v0, "MIUI_PROJECTION"

    const-string v1, "stop projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$2;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    return-void
.end method

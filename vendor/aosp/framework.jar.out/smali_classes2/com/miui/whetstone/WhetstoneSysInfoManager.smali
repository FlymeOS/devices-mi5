.class public Lcom/miui/whetstone/WhetstoneSysInfoManager;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;
    }
.end annotation


# static fields
.field private static final FAIL:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;-><init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/whetstone/WhetstoneSysInfoManager$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .param p1, "x1"    # Lcom/miui/whetstone/IWhetstoneSysInfoService;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .locals 1

    .prologue
    .line 85
    # getter for: Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->INSTANCE:Lcom/miui/whetstone/WhetstoneSysInfoManager;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->access$300()Lcom/miui/whetstone/WhetstoneSysInfoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bindWhetstoneSysInfoService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-nez v2, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.whetstone"

    const-string v4, "com.miui.whetstone.sysinfo.WhetstoneSysInfoService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    iget-object v2, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 23
    .local v1, "res":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWhetstoneSysInfoService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "res":Z
    :goto_0
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v3, "bindWhetstoneSysInfoService but mService is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSysInfo(Ljava/lang/String;)J
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfo(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 49
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 44
    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "getSysInfo: Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo long RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 62
    :goto_0
    monitor-exit p0

    return-object v1

    .line 57
    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "getSysInfo: Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo String[] RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbindWhetstoneSysInfoService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    .line 33
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService but service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

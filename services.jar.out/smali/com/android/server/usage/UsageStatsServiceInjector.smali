.class public Lcom/android/server/usage/UsageStatsServiceInjector;
.super Ljava/lang/Object;
.source "UsageStatsServiceInjector.java"


# static fields
.field public static final ACTION_APP_IDLE_PAROLE_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_APP_IDLE_PAROLE_CHANGED"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/server/usage/UsageStatsServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/UsageStatsServiceInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sendParoleChangedBroadcast(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdleParoleOn"    # Z

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ACTION_APP_IDLE_PAROLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string v1, "android.os.action.ACTION_APP_IDLE_PAROLE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    sget-object v1, Lcom/android/server/usage/UsageStatsServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appIdleParoleOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 51
    return-void
.end method

.method static setAppIdleEnabled(Lcom/android/server/usage/UsageStatsService;Z)V
    .locals 3
    .param p0, "uss"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "enable"    # Z

    .prologue
    .line 28
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_0

    .line 29
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    .line 30
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    .line 31
    if-eqz p1, :cond_2

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.CHARGING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "deviceStates":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceStateReceiver:Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .end local v0    # "deviceStates":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceStateReceiver:Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceStateReceiver:Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method public static setAppIdleEnabledIfNeedLocked(Lcom/android/server/usage/UsageStatsService;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "uss"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    array-length v1, p1

    if-lez v1, :cond_1

    const-string v1, "disable"

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enable"

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    :cond_0
    const-string v1, "enable"

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsServiceInjector;->setAppIdleEnabled(Lcom/android/server/usage/UsageStatsService;Z)V

    .line 19
    sget-object v0, Lcom/android/server/usage/UsageStatsServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAppIdleEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

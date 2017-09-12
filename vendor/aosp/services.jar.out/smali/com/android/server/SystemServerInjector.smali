.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# static fields
.field private static final systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-direct {v0}, Lcom/android/server/SystemLogSwitchesConfigReceiver;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .prologue
    .line 30
    const-string v9, "security"

    new-instance v10, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v10, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    const-string v9, "MiuiInit"

    new-instance v10, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v10, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 32
    const-string v9, "MiuiBackup"

    new-instance v10, Lcom/miui/server/BackupManagerService;

    invoke-direct {v10, p0}, Lcom/miui/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 33
    const-string v9, "locationpolicy"

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    :try_start_0
    const-string v9, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 39
    .local v7, "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v7, v9}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 40
    .local v6, "whetstoneInstance":Landroid/os/IBinder;
    const-string v9, "SERVICE"

    const-class v10, Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v8

    .line 41
    .local v8, "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 42
    invoke-virtual {v8}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v6    # "whetstoneInstance":Landroid/os/IBinder;
    .end local v7    # "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    const-string v9, "com.miui.server.TidaService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 52
    .local v5, "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 53
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v9, "SERVICE_NAME"

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 54
    .local v3, "nameField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 55
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 56
    .local v4, "tidaInstance":Landroid/os/IBinder;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameField":Ljava/lang/reflect/Field;
    .end local v4    # "tidaInstance":Landroid/os/IBinder;
    .end local v5    # "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/display/PaperModeService;->startPaperModeService()V

    .line 64
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static final addExtraServicesBeforePMS(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/SystemServerInjectorOverlay;->addSecuritySpaceService(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static enableLogSwitch()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    .line 76
    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName()V

    .line 77
    return-void
.end method

.method static registerSystemLogSwitchesReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method static final systemReadyBeforePMS()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Lcom/android/server/SystemServerInjectorOverlay;->systemReadyBeforePMS()V

    .line 72
    return-void
.end method

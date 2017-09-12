.class public abstract Lcom/miui/whetstone/WhetstoneCloudControlManager;
.super Ljava/lang/Object;
.source "WhetstoneCloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    }
.end annotation


# static fields
.field public static REGISTER_ALREADY:I = 0x0

.field public static REGISTER_FAIL:I = 0x0

.field public static REGISTER_SUCCESS:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static UNREGISTER_FAIL:I

.field public static UNREGISTER_SUCCESS:I

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 15
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 20
    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_ALREADY:I

    .line 22
    sput v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_SUCCESS:I

    .line 23
    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    .line 24
    sput v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    .line 13
    sput-object p0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 57
    return-void
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    .line 41
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    .line 42
    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 44
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 45
    new-instance v0, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 46
    .local v0, "death":Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .locals 3
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "info"    # Lcom/miui/whetstone/CloudControlInfo;

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 61
    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 62
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 64
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 3
    .param p0, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 74
    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 75
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 77
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .locals 3
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 86
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 87
    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    .line 88
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

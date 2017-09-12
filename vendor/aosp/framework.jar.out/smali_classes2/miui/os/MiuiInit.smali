.class public Lmiui/os/MiuiInit;
.super Ljava/lang/Object;
.source "MiuiInit.java"


# static fields
.field public static final ACTION_MIUI_INIT_COMPLETED:Ljava/lang/String; = "miui.intent.action.MIUI_INIT_COMPLETED"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiInit"

.field private static final TAG:Ljava/lang/String; = "MiuiInit"

.field private static sService:Lmiui/os/IMiuiInit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFactoryReset(Z)V
    .locals 3
    .param p0, "keepUserApps"    # Z

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->doFactoryReset(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when removing preinstall app history file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCustVariants()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->getCustVariants()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when fetch cust variants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled channel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, ""

    goto :goto_0
.end method

.method private static getService()Lmiui/os/IMiuiInit;
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    if-nez v1, :cond_0

    .line 21
    const-string v1, "MiuiInit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 22
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmiui/os/IMiuiInit$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;

    move-result-object v1

    sput-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    .line 24
    :cond_0
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    return-object v1
.end method

.method public static initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .locals 5
    .param p0, "custVariant"    # Ljava/lang/String;
    .param p1, "obs"    # Lmiui/os/IMiuiInitObserver;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/os/IMiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MiuiInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Occur RemoteException when init cust environment for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static installPreinstallApp()Z
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->installPreinstallApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v1, 0x1

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when install preinstall app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

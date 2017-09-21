.class public Lcom/fingerprints/service/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "navigator"


# instance fields
.field private mService:Lcom/fingerprints/service/INavigator;


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v4, 0x0

    .line 37
    .local v4, "service":Lcom/fingerprints/service/IFingerprintService;
    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 39
    .local v5, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 43
    .local v2, "getService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "fingerprints_service"

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 45
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 50
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    .end local v5    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v4, :cond_0

    .line 51
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "The FPC extension service could not be loaded"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v6, "navigator"

    invoke-interface {v4, v6}, Lcom/fingerprints/service/IFingerprintService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 54
    .local v3, "navBinder":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 55
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Authenticator API could not be loaded"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_1
    invoke-static {v3}, Lcom/fingerprints/service/INavigator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/INavigator;

    move-result-object v6

    iput-object v6, p0, Lcom/fingerprints/service/Navigation;->mService:Lcom/fingerprints/service/INavigator;

    .line 59
    return-void
.end method


# virtual methods
.method public setNavigationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/Navigation;->mService:Lcom/fingerprints/service/INavigator;

    invoke-interface {v1, p1}, Lcom/fingerprints/service/INavigator;->setNavigationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

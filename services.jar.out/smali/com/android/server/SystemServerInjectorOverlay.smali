.class public Lcom/android/server/SystemServerInjectorOverlay;
.super Ljava/lang/Object;
.source "SystemServerInjectorOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static secureSpacesService:Landroid/service/securespaces/SecureSpacesService;

.field private static spaceEncryptionService:Lcom/android/server/securespaces/SpaceEncryptionService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSecuritySpaceService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Landroid/service/securespaces/SecureSpacesService;

    invoke-direct {v0, p0}, Landroid/service/securespaces/SecureSpacesService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SystemServerInjectorOverlay;->secureSpacesService:Landroid/service/securespaces/SecureSpacesService;

    .line 21
    new-instance v0, Lcom/android/server/securespaces/SpaceEncryptionService;

    invoke-direct {v0, p0}, Lcom/android/server/securespaces/SpaceEncryptionService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SystemServerInjectorOverlay;->spaceEncryptionService:Lcom/android/server/securespaces/SpaceEncryptionService;

    .line 22
    const-string v0, "securespaces"

    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->secureSpacesService:Landroid/service/securespaces/SecureSpacesService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    const-string v0, "spaceencryption"

    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->spaceEncryptionService:Lcom/android/server/securespaces/SpaceEncryptionService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 26
    :cond_0
    return-void
.end method

.method private static reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void
.end method

.method public static final systemReadyBeforePMS()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->secureSpacesService:Landroid/service/securespaces/SecureSpacesService;

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->secureSpacesService:Landroid/service/securespaces/SecureSpacesService;

    invoke-virtual {v1}, Landroid/service/securespaces/SecureSpacesService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->spaceEncryptionService:Lcom/android/server/securespaces/SpaceEncryptionService;

    if-eqz v1, :cond_1

    .line 39
    :try_start_1
    sget-object v1, Lcom/android/server/SystemServerInjectorOverlay;->spaceEncryptionService:Lcom/android/server/securespaces/SpaceEncryptionService;

    invoke-virtual {v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "making Secure Spaces Service ready"

    invoke-static {v1, v0}, Lcom/android/server/SystemServerInjectorOverlay;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    const-string v1, "making Secure Spaces Service ready"

    invoke-static {v1, v0}, Lcom/android/server/SystemServerInjectorOverlay;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

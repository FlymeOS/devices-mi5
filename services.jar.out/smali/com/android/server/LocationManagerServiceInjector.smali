.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private static mMetok:Lcom/android/server/location/MetokProxy;

.field private static final sBackupGpsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBackupReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

.field private static sLocationManagerService:Lcom/android/server/LocationManagerService;

.field private static sLock:Ljava/lang/Object;

.field private static sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

.field private static sPolicyListener:Landroid/location/ILocationPolicyListener;

.field private static sPolicyManager:Landroid/location/ILocationPolicyManager;

.field private static sRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictBackgroundAll:Z

.field private static final sUidRules:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "LocationManagerInjector"

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    .line 329
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$200(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    return p0
.end method

.method public static bindLocationPolicyService(Landroid/location/ILocationPolicyManager;)V
    .locals 4
    .param p0, "policyManager"    # Landroid/location/ILocationPolicyManager;

    .prologue
    .line 89
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    .line 90
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/MiuiFakeGpsProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static checkCurrentLocationRequest(II)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "uidRules"    # I

    .prologue
    .line 262
    if-eqz p1, :cond_3

    .line 263
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 265
    :try_start_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 266
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    if-eqz v3, :cond_2

    .line 267
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "remove gps listener from GpsStatusProvider"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 269
    .local v2, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 271
    :try_start_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v6, v4}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 276
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :cond_1
    :try_start_3
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "backup gps listener in mBackupGpsListeners"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 278
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->removeAndBackupLocationRequestIfNeeded(I)V

    .line 283
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :goto_1
    return-void

    .line 286
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :cond_3
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 288
    :try_start_4
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 289
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    if-eqz v3, :cond_6

    .line 290
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "add gps listener to GpsStatusProvider"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 292
    .restart local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_4

    .line 294
    :try_start_5
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v6, v4}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 295
    :catch_1
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_6
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "listener already dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 307
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 298
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :catch_2
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    :cond_5
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "remove gps listener in mBackupGpsListeners"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->restoreBlockedLocationRequestIfNeeded(I)V

    .line 307
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGpsStatusListener;)Z
    .locals 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " addGpsStatusListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is blocked by policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v3, 0x1

    .line 139
    :goto_0
    return v3

    .line 124
    :cond_0
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 125
    :try_start_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 126
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    if-nez v2, :cond_1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 130
    .local v1, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/IGpsStatusListener;

    invoke-interface {v3}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 136
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    :cond_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v5

    move v3, v4

    .line 139
    goto :goto_0

    .line 138
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkWhenRemoveListenerLocked(ILandroid/location/IGpsStatusListener;)Z
    .locals 6
    .param p0, "uid"    # I
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 169
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 170
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 173
    .local v1, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 174
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 182
    .restart local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 185
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGpsStatusListener;>;>;"
    :cond_4
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 191
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v4, 0x1

    .line 195
    :goto_2
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static checkWhenRemoveLocationRequestLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p0, "listener"    # Landroid/location/ILocationListener;
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 145
    if-nez p1, :cond_0

    if-nez p0, :cond_0

    .line 146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "need either listener or intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 148
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot register both listener and intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    if-eqz p1, :cond_2

    .line 150
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 151
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, p1

    .line 159
    :goto_0
    if-eqz v2, :cond_3

    .line 160
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v3, 0x1

    .line 164
    :goto_1
    return v3

    .line 153
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_2
    invoke-interface {p0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 154
    .local v0, "binder":Landroid/os/IBinder;
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 155
    .restart local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, v0

    .local v1, "key":Landroid/os/IBinder;
    goto :goto_0

    .line 164
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "key":Landroid/os/IBinder;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static createAndBindLP(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 352
    :try_start_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    invoke-static {v4, p0, p1}, Lcom/android/server/location/MetokProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;

    move-result-object v4

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v4, :cond_2

    .line 359
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 361
    .local v2, "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_0

    .line 362
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v2}, Lcom/android/server/location/MetokProxy;->setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 364
    :cond_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "network"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 365
    .local v3, "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_1

    .line 366
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v3}, Lcom/android/server/location/MetokProxy;->setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 368
    :cond_1
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "fused"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 369
    .local v1, "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_2

    .line 370
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/location/MetokProxy;->setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 373
    .end local v1    # "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v2    # "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "failed to bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    goto :goto_0
.end method

.method public static dumpLp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 457
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method static getCurrentLocationRequestUids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "currentLrUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 315
    :try_start_0
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 316
    .local v3, "k":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 319
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 321
    .local v4, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 322
    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    return-object v0
.end method

.method public static init(Lcom/android/server/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "lms"    # Lcom/android/server/LocationManagerService;
    .param p1, "lmsLock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "realProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationProviderInterface;>;"
    .local p4, "allReceivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 78
    sput-object p2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    .line 79
    sput-object p3, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    .line 80
    sput-object p4, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    .line 81
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 82
    return-void
.end method

.method static isFakeGpsOn()Z
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getFakeGpsFeatureOnState()Z

    move-result v0

    return v0
.end method

.method static isPhoneStationary()Z
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v0

    return v0
.end method

.method private static isRequestBlockedByPolicy(I)Z
    .locals 5
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 101
    .local v0, "rules":I
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x1

    monitor-exit v2

    .line 104
    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 105
    .end local v0    # "rules":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 450
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/location/MetokProxy;->locationSanitized(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    .line 453
    .end local p0    # "location":Landroid/location/Location;
    :cond_0
    return-object p0
.end method

.method private static removeAndBackupLocationRequestIfNeeded(I)V
    .locals 9
    .param p0, "uid"    # I

    .prologue
    .line 199
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 200
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 203
    .local v4, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    if-ne v5, p0, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v0    # "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 207
    .restart local v0    # "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, "o":Ljava/lang/Object;
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup receiver:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService$Receiver;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, v5}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_1

    .line 215
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    return-void
.end method

.method private static restoreBlockedLocationRequestIfNeeded(I)V
    .locals 14
    .param p0, "uid"    # I

    .prologue
    .line 219
    sget-object v13, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 220
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v12, "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 222
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 223
    .local v2, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    if-ne v0, p0, :cond_0

    .line 224
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v2    # "r":Lcom/android/server/LocationManagerService$Receiver;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 227
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 228
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 229
    .local v10, "o":Ljava/lang/Object;
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .restart local v2    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_2
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :cond_2
    :try_start_3
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_3

    .line 246
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 249
    .local v11, "p":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v1, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 250
    .local v1, "lr":Landroid/location/LocationRequest;
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v5, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    goto :goto_2

    .line 236
    .end local v1    # "lr":Landroid/location/LocationRequest;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "p":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Landroid/os/DeadObjectException;
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 240
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v6

    .line 241
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "linkToDeath failed:"

    invoke-static {v0, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 255
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 258
    .end local v2    # "r":Lcom/android/server/LocationManagerService$Receiver;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_4
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    return-void
.end method

.method static takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 473
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isFakeGpsOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 536
    .end local p0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    .local v4, "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_0
    return-object p0

    .line 479
    .end local v2    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    .end local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local p0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_0
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isPhoneStationary()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 481
    .restart local v2    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz p0, :cond_2

    .line 482
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 483
    .local v3, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 492
    .local v1, "locationRequest":Landroid/location/LocationRequest;
    iget-object v5, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    .line 494
    iput-boolean v12, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 495
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_1

    .line 501
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-virtual {v5, v2, v6}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    move-object p0, v6

    .line 502
    goto :goto_0

    .line 507
    .end local v2    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    :cond_3
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 508
    .restart local v2    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    const/4 v4, 0x0

    .line 509
    .restart local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz p0, :cond_6

    .line 510
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .restart local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 512
    .restart local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 514
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 520
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v5, Lcom/android/server/LocationPolicyManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/LocationPolicyManagerService;->takeOverGpsProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 522
    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 523
    .restart local v1    # "locationRequest":Landroid/location/LocationRequest;
    iget-object v5, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    .line 525
    iput-boolean v12, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 526
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_2

    .line 532
    .end local v1    # "locationRequest":Landroid/location/LocationRequest;
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-virtual {v5, v2, v6}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    move-object p0, v4

    .line 536
    goto/16 :goto_0
.end method

.method public static takeOverLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz p0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 383
    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 380
    .restart local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 381
    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverMetokLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method public static takeOverMetokLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    const/4 v4, 0x0

    .line 390
    .local v4, "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    .line 393
    .local v5, "worksource":Landroid/os/WorkSource;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 395
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz p1, :cond_2

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .restart local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 398
    .local v3, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/android/server/location/MetokProxy;->canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeover LP of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 408
    .local v1, "locationRequest":Landroid/location/LocationRequest;
    iget-object v6, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 411
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 412
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 413
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto/16 :goto_0

    .line 419
    .end local v1    # "locationRequest":Landroid/location/LocationRequest;
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 423
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v6, :cond_5

    .line 427
    :cond_3
    :goto_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/location/MetokProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 428
    sput-object v2, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 429
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeover LP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_4
    return-object v4

    .line 423
    :cond_5
    iget-boolean v6, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v7, v7, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-ne v6, v7, :cond_3

    iget-wide v6, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v8, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    goto :goto_1
.end method

.method public static updateGpsStatusProvider(Landroid/location/IGpsStatusProvider;)V
    .locals 0
    .param p0, "gpsStatusProvider"    # Landroid/location/IGpsStatusProvider;

    .prologue
    .line 85
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    .line 86
    return-void
.end method

.method public static updateLpStatus(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v3, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "enable":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 439
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 440
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    const/4 v0, 0x1

    .line 445
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v0}, Lcom/android/server/location/MetokProxy;->updateStatus(Z)V

    .line 447
    .end local v0    # "enable":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 438
    .restart local v0    # "enable":Z
    .restart local v1    # "i":I
    .restart local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

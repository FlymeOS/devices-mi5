.class public abstract Lcom/miui/whetstone/WhetstoneActivityManager;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "whetstone.activity"

.field private static ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .prologue
    .line 23
    sput-object p0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object p0
.end method

.method public static addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 75
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->addAppToServiceControlWhitelist(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 248
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 249
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->bindWhetstoneService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .prologue
    .line 171
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 172
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 136
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 147
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 148
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 58
    return-void
.end method

.method public static clearDeadAppFromNative()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 237
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->clearDeadAppFromNative()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 241
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .local v2, "totoalMemory":J
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 107
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;
    .locals 4

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "ret":Lcom/miui/whetstone/IComponentManager;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 325
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 327
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :cond_0
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPackageNamebyPid(I)Ljava/lang/String;
    .locals 3
    .param p0, "callingPid"    # I

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 261
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 263
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPackageNamebyPid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 4

    .prologue
    .line 42
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v2, :cond_0

    .line 43
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 45
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 46
    new-instance v0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V

    .line 47
    .local v0, "death":Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSystemPid()I
    .locals 3

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "ret":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 300
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 302
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getSystemPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static promoteApplicationLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/WhetstoneActivityManager;->promoteApplicationLevel(II)V

    .line 208
    return-void
.end method

.method public static promoteApplicationLevel(II)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "timeoutMills"    # I

    .prologue
    .line 212
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 213
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->promoteApplicationLevel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static releaseApplicationPromoteLevel()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 225
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->releaseApplicationPromoteLevel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 229
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 87
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeTaskById(IZ)Z
    .locals 4
    .param p0, "taskId"    # I
    .param p1, "killProcess"    # Z

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 345
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 347
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeTaskById(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static scheduleDestoryActivities(I)Z
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 287
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 289
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->distoryActivity(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static scheduleTrimMemory(II)Z
    .locals 3
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 274
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 276
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->scheduleTrimMemory(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z

    .prologue
    .line 183
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 184
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationByLockedState(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationByLockedState(Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 196
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 112
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 312
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateFrameworkCommonConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateUserLockedAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 124
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateUserLockedAppList(Ljava/util/List;I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 160
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "names"    # [Landroid/content/ComponentName;

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setPerformanceComponents([Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

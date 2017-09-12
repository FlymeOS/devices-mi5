.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 27
    const-string v0, "persist.sys.whetstone.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    .line 24
    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method public static cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 495
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 496
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 498
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkAppTheShotScreenPermission(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 556
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 557
    const/4 v1, 0x1

    .line 558
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 560
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkAppTheShotScreenPermission(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 565
    :cond_0
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfHaveTheCallFunctionPermission(III)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    .line 472
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 473
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfHaveTheCallFunctionPermission(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 480
    :goto_0
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfSupportWhestone()Z
    .locals 5

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "result":Z
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v3, :cond_1

    .line 430
    const-string v3, "miui.whetstone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v3

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 432
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 433
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v3}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 434
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v2, 0x1

    .line 444
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    :cond_0
    :goto_0
    return v2

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    const/4 v3, 0x0

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 61
    return-void
.end method

.method public static checkUserCommonWords(Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "data"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 571
    sget-object v4, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v4, :cond_1

    .line 573
    if-eqz p0, :cond_1

    .line 574
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 575
    .local v2, "orgData":[B
    if-eqz v2, :cond_1

    .line 577
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 578
    aget-byte v3, v2, v1

    .line 579
    .local v3, "temp":B
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    aput-byte v4, v2, v1

    .line 580
    add-int/lit8 v4, v1, 0x1

    aput-byte v3, v2, v4

    .line 577
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 582
    .end local v3    # "temp":B
    :cond_0
    sget-object v4, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v4, v2}, Lcom/miui/whetstone/IWhetstone;->checkUserCommonWords([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v1    # "i":I
    .end local v2    # "orgData":[B
    :cond_1
    :goto_1
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 3
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .prologue
    .line 402
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 406
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->clearDeadAppFromNative()V

    .line 412
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationThread(I)Landroid/os/IBinder;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 207
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getApplicationThread(I)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCapacity()I
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "capacity":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 122
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCapacity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryChargeTime()J
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 132
    const-wide/16 v0, 0x0

    .line 133
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 135
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryChargeTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 140
    :cond_0
    :goto_0
    return-wide v0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCurrentNow()I
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "cn":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 160
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCurrentNow()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryStandbyTime()J
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 148
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryStandbyTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 153
    :cond_0
    :goto_0
    return-wide v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComponentManager()Lcom/miui/whetstone/IComponentManager;
    .locals 3

    .prologue
    .line 536
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, "ret":Lcom/miui/whetstone/IComponentManager;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 540
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getComponentManager()Lcom/miui/whetstone/IComponentManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 545
    :cond_0
    :goto_0
    return-object v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationThread()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 221
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationThread()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationUid()I
    .locals 3

    .prologue
    .line 459
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "uid":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 463
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationUid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    .locals 3

    .prologue
    .line 629
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "info":Lcom/miui/whetstone/AppInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 633
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 638
    :cond_0
    :goto_0
    return-object v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMetokToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 417
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 419
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->getMetokToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 421
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    .line 44
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 47
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 48
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 49
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0
.end method

.method public static getSmartConfigLevel()I
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 380
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getSmartConfigLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstoneLeve()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    return v0
.end method

.method public static getWhetstoneLeve(I)I
    .locals 3
    .param p0, "defValue"    # I

    .prologue
    .line 105
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 106
    move v1, p0

    .line 107
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getWhetstoneLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "applicationThread"    # Landroid/os/IBinder;

    .prologue
    .line 175
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 179
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 193
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I

    .prologue
    .line 293
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 297
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 3
    .param p0, "packageURI"    # Landroid/net/Uri;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p2, "flags"    # I

    .prologue
    .line 319
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 323
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBitmapCacheNeeded()Z
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 67
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 69
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInCharging()Z
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 393
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->isInCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOPENGLDisableNeeded()Z
    .locals 4

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 81
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 83
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplication(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restartMask"    # I
    .param p2, "uid"    # I

    .prologue
    .line 523
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 524
    const/4 v1, 0x1

    .line 525
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 527
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplication(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "database"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 310
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/IProcessForegroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/whetstone/IProcessForegroundCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 597
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 599
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 607
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 608
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 610
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 484
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 485
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 487
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static screenShot(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 280
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "ret":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 284
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->screenShot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    :cond_0
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstoneLeve(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 93
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 94
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->setWhetstoneLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 618
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 619
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 621
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateProcessCurrentPss(II)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "pss"    # I

    .prologue
    .line 448
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 449
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->updateProcessCurrentPss(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 231
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 232
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v7

    .line 236
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 237
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 346
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/whetstone/WhetstoneManager;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 348
    return-void
.end method

.method public static wifiSmartConfigMacAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 244
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 245
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p5, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 250
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "result"    # Landroid/os/IBinder;

    .prologue
    .line 333
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 334
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v8

    .line 339
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigStop()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 257
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 261
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigSupport()Z
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 271
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 364
    const/4 v7, 0x0

    .line 365
    .local v7, "ret":Ljava/lang/String;
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 372
    :cond_0
    :goto_0
    return-object v7

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 352
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 353
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 355
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

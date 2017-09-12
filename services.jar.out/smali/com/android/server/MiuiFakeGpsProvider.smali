.class public Lcom/android/server/MiuiFakeGpsProvider;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;,
        Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;,
        Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static final CANCEL_FAKE_REQUEST:I = 0x1

.field public static final D:Z

.field private static final MIN_INTERVAL:I = 0x3e8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.powerkeeper"

.field private static final SET_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MiuiGpsProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

.field private mFixIntervalMs:I

.field private mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLock:Ljava/lang/Object;

.field private mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mRptLocThreadRunning:Z

.field private mSingleShot:Z

.field private mStarted:Z

.field private mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

.field private sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "MiuiGpsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "locationPolicy"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 41
    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    .line 43
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$1;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 62
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$2;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 72
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$1;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    .line 74
    iput-object p2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 75
    iput-object p3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    .line 76
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    .line 77
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->registerFakeGpsStatus()V

    .line 78
    const-string v0, "MiuiGpsProvider"

    const-string v1, "create miui gps provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MiuiFakeGpsProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->changeProviderIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MiuiFakeGpsProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->cancelFakeLocationRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/MiuiFakeGpsProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->reportLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MiuiFakeGpsProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelFakeLocationRequest()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 349
    .local v0, "manager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 350
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "MiuiGpsProvider"

    const-string v2, "cancel miui gps request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    return-void
.end method

.method private changeProviderIfNecessary(Z)V
    .locals 14
    .param p1, "isFakeGpsON"    # Z

    .prologue
    const/4 v13, 0x1

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->isProviderNeedChange(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string v10, "location"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 289
    .local v1, "manager":Landroid/location/LocationManager;
    const-wide/32 v4, 0xea60

    .line 290
    .local v4, "minTime":J
    const/high16 v2, 0x42c80000    # 100.0f

    .line 291
    .local v2, "minDistance":F
    const/4 v3, 0x1

    .line 292
    .local v3, "oneShot":Z
    const-string v7, "gps"

    const-wide/32 v10, 0xea60

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v7, v10, v11, v12, v13}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v6

    .line 299
    .local v6, "request":Landroid/location/LocationRequest;
    invoke-virtual {v6, v13}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 302
    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-virtual {v10}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v1, v6, v7, v10}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    :goto_0
    const-string v7, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeProvider send request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v7, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-virtual {v10, v13}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {v7, v10, v12, v13}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 315
    .end local v1    # "manager":Landroid/location/LocationManager;
    .end local v2    # "minDistance":F
    .end local v3    # "oneShot":Z
    .end local v4    # "minTime":J
    .end local v6    # "request":Landroid/location/LocationRequest;
    .end local v8    # "token":J
    :cond_0
    return-void

    .line 306
    .restart local v1    # "manager":Landroid/location/LocationManager;
    .restart local v2    # "minDistance":F
    .restart local v3    # "oneShot":Z
    .restart local v4    # "minTime":J
    .restart local v6    # "request":Landroid/location/LocationRequest;
    .restart local v8    # "token":J
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error in changeProviderIfNecessary: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getLocationFromFakeGpsStrategy()Landroid/location/Location;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getFakeGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 10
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x1

    .line 144
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 146
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v2, 0x0

    .line 152
    .local v2, "singleShot":Z
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 156
    const/4 v2, 0x1

    .line 158
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .line 159
    .local v1, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 160
    const/4 v2, 0x0

    goto :goto_1

    .line 164
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lr":Landroid/location/LocationRequest;
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 167
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 168
    iput-boolean v8, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 171
    :cond_4
    sget-boolean v3, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v3, :cond_5

    const-string v3, "MiuiGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v3, :cond_9

    .line 173
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v3, v4

    iput v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 176
    iget v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    int-to-long v4, v3

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 177
    const-string v3, "MiuiGpsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interval overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 182
    :cond_6
    iget v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    if-ge v3, v9, :cond_7

    .line 183
    iput v9, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 186
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v3, :cond_8

    .line 187
    const-string v3, "MiuiGpsProvider"

    const-string v4, "already started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    .line 193
    :goto_2
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v3}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    .line 194
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    iget v4, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    iget-boolean v5, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->requestLocation(IZ)V

    goto/16 :goto_0

    .line 190
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->startNavigating(Z)V

    goto :goto_2

    .line 199
    :cond_9
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    goto/16 :goto_0
.end method

.method private isProviderNeedChange(Z)Z
    .locals 12
    .param p1, "isFakeGpsOn"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 319
    if-eqz p1, :cond_1

    .line 320
    new-array v5, v9, [I

    const/16 v10, 0x2a

    aput v10, v5, v8

    .line 325
    .local v5, "ops":[I
    :goto_0
    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string v11, "appops"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 326
    .local v6, "opsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v0, :cond_2

    .line 343
    :cond_0
    :goto_1
    return v8

    .line 322
    .end local v0    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v5    # "ops":[I
    .end local v6    # "opsManager":Landroid/app/AppOpsManager;
    :cond_1
    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .restart local v5    # "ops":[I
    goto :goto_0

    .line 332
    .restart local v0    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "opsManager":Landroid/app/AppOpsManager;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 333
    .local v7, "pkgops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v1, :cond_3

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    .line 336
    .local v2, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 337
    sget-boolean v8, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v8, :cond_5

    const-string v8, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isProviderNeedChange: true, isMiuiGpsOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v8, v9

    .line 338
    goto :goto_1

    .line 342
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkgops":Landroid/app/AppOpsManager$PackageOps;
    :cond_6
    sget-boolean v9, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v9, :cond_0

    const-string v9, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isProviderNeedChange: false, isMiuiGpsOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    nop

    :array_0
    .array-data 4
        0x2
        0x2a
    .end array-data
.end method

.method private registerFakeGpsStatus()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "MiuiGpsProvider"

    const-string v1, "register provider status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationPolicyManagerService;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    .line 256
    :cond_0
    return-void
.end method

.method private reportLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 259
    if-eqz p1, :cond_2

    .line 261
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const-string v1, "gps"

    invoke-virtual {p1, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 265
    :cond_0
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_1

    const-string v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    if-eqz v1, :cond_3

    .line 272
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    .line 274
    :cond_3
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiGpsProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleReportLocation(Z)V
    .locals 5
    .param p1, "singleShot"    # Z

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-nez v1, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    .line 229
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    const-string v3, "MiuiGpsProvider"

    invoke-direct {v1, p0, v3}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    .line 230
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->getLocationFromFakeGpsStrategy()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setLocationLocked(Landroid/location/Location;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "MiuiGpsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setOnceRun(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->reschedule()V

    .line 245
    return-void

    .line 241
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private startNavigating(Z)V
    .locals 3
    .param p1, "singleShot"    # Z

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 205
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNavigating, singleShot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    .line 207
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 208
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    invoke-direct {p0, v0}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method private stopNavigating()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNavigating, mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    .line 215
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v0, :cond_0

    .line 216
    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    .line 217
    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->letStop()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "MiuiGpsProvider"

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 99
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

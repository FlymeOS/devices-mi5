.class public Lcom/android/server/LocationPolicyManagerService;
.super Landroid/location/ILocationPolicyManager$Stub;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;,
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.location.action.ALLOW_BACKGROUND"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_HIGH_POWER:Ljava/lang/String; = "high-power"

.field private static final ATTR_LOCATION_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ATTR_MIN_INTERVAL:Ljava/lang/String; = "minIntervalMs"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x2

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "LocationPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_LOCATION_POLICY:Ljava/lang/String; = "location-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1

.field static sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;


# instance fields
.field private DEVICE_IDLE_CHANGE:Ljava/lang/String;

.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private volatile mDeviceIdle:Z

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/location/ILocationPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private volatile mLocationMode:I

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

.field private mLocationPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifManager:Landroid/app/INotificationManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mUidInNavigation:Landroid/util/SparseBooleanArray;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private mUidStateHelper:Lcom/android/server/UidStateHelper;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/location/ILocationPolicyManager$Stub;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    .line 134
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    .line 137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    .line 139
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 141
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 146
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 253
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$1;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    .line 262
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$2;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$3;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$4;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$5;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$6;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$7;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$8;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1009
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$9;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 170
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 172
    iput-object p2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/server/location/LocationOpHandler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationOpHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    .line 179
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "locationpolicy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 183
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationModeChangeLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/LocationPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/LocationPolicyManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    return p1
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 428
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x110700a2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 431
    .local v12, "title":Ljava/lang/CharSequence;
    const v0, 0x110700a3

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 434
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 435
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 436
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 437
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 438
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 440
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 449
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 451
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefaultService()Lcom/android/server/LocationPolicyManagerService;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LocationPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOpMinIntervalMsLocked(I)I
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "interval":I
    packed-switch p1, :pswitch_data_0

    .line 889
    :cond_0
    :goto_0
    return v0

    .line 877
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    goto :goto_0

    .line 883
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isDeviceIdle()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 393
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    const-string v2, "isDeviceIdleMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 395
    :goto_0
    return v0

    .line 394
    :catch_0
    move-exception v0

    move v0, v1

    .line 395
    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 4

    .prologue
    .line 380
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 381
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "isScreenOn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 383
    :cond_0
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "isInteractive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 388
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUidForegroundLocked(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 969
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    :cond_0
    const/4 v0, 0x1

    .line 973
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDefaultService(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/LocationPolicyManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 156
    new-instance v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationPolicyManagerService;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    sput-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    .line 157
    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v0

    return-object v0
.end method

.method private readPolicyLocked()V
    .locals 15

    .prologue
    .line 536
    const-string v12, "LocationPolicy"

    const-string v13, "readPolicyLocked()"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v12, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 540
    iget-object v12, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    .line 542
    const/4 v2, 0x0

    .line 544
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 545
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 546
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 549
    const/4 v11, 0x1

    .line 550
    .local v11, "version":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v12, 0x1

    if-eq v9, v12, :cond_6

    .line 551
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, "tag":Ljava/lang/String;
    const/4 v12, 0x2

    if-ne v9, v12, :cond_0

    .line 553
    const-string v12, "policy-list"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 554
    const-string v12, "version"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 555
    const-string v12, "restrictBackground"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v11    # "version":I
    :catch_0
    move-exception v12

    .line 592
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 594
    :goto_1
    return-void

    .line 556
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    .restart local v11    # "version":I
    :cond_1
    :try_start_1
    const-string v12, "location-policy"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 557
    const/4 v12, 0x0

    const-string v13, "provider"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "provider":Ljava/lang/String;
    const-string v12, "high-power"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 559
    .local v3, "highPower":Z
    const-string v12, "minIntervalMs"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 560
    .local v5, "minIntervalMs":I
    iget-object v12, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-static {v7, v5}, Landroid/location/LocationPolicy;->getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 585
    .end local v3    # "highPower":Z
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "minIntervalMs":I
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v11    # "version":I
    :catch_1
    move-exception v1

    .line 586
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v12, "LocationPolicy"

    const-string v13, "problem reading location policy"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 561
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    .restart local v11    # "version":I
    :cond_2
    :try_start_3
    const-string v12, "uid-policy"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 562
    const-string v12, "uid"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 563
    .local v10, "uid":I
    const-string v12, "policy"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 565
    .local v6, "policy":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 566
    const/4 v12, 0x0

    invoke-direct {p0, v10, v6, v12}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 587
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":I
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "uid":I
    .end local v11    # "version":I
    :catch_2
    move-exception v1

    .line 588
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v12, "LocationPolicy"

    const-string v13, "problem reading location policy"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 592
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 568
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":I
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    .restart local v10    # "uid":I
    .restart local v11    # "version":I
    :cond_3
    :try_start_5
    const-string v12, "LocationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unable to apply policy to UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 589
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":I
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "uid":I
    .end local v11    # "version":I
    :catch_3
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v12, "LocationPolicy"

    const-string v13, "problem reading location policy"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 592
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 570
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    .restart local v11    # "version":I
    :cond_4
    :try_start_7
    const-string v12, "app-policy"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 571
    const-string v12, "appId"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, "appId":I
    const-string v12, "policy"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 574
    .restart local v6    # "policy":I
    const/4 v12, 0x0

    invoke-static {v12, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 575
    .restart local v10    # "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 576
    const/4 v12, 0x0

    invoke-direct {p0, v10, v6, v12}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 592
    .end local v0    # "appId":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":I
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "uid":I
    .end local v11    # "version":I
    :catchall_0
    move-exception v12

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12

    .line 578
    .restart local v0    # "appId":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":I
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    .restart local v10    # "uid":I
    .restart local v11    # "version":I
    :cond_5
    :try_start_8
    const-string v12, "LocationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unable to apply policy to UID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 592
    .end local v0    # "appId":I
    .end local v6    # "policy":I
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "uid":I
    :cond_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1
.end method

.method private removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 601
    const-string v6, "LocationPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 604
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 605
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 606
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 607
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 604
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 612
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 613
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 614
    invoke-direct {p0, v4}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    .end local v4    # "uid":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 618
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 683
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 684
    .local v0, "oldPolicy":I
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 688
    if-eqz p3, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 691
    :cond_0
    monitor-exit v2

    .line 692
    return-void

    .line 691
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLocationModeChangeLocked()V
    .locals 2

    .prologue
    .line 468
    const-string v0, "LocationPolicy"

    const-string v1, "updateLocationModeChangeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method private updateLocationRulesLocked()V
    .locals 10

    .prologue
    .line 505
    const-string v8, "LocationPolicy"

    const-string v9, "updateLocationRulesLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v8}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 517
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 518
    .local v6, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationPolicy;

    .line 521
    .local v4, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 523
    .local v5, "provider":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/location/LocationPolicy;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 524
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    .end local v0    # "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policy":Landroid/location/LocationPolicy;
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 533
    :cond_2
    return-void

    .line 528
    .restart local v0    # "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "policy":Landroid/location/LocationPolicy;
    .restart local v6    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 529
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 530
    .local v7, "providers":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateNotificationsLocked()V
    .locals 5

    .prologue
    .line 402
    const-string v3, "LocationPolicy"

    const-string v4, "updateNotificationsLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 406
    .local v0, "beforeNotifs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 410
    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_0

    .line 411
    const-string v3, "LocationPolicy:allowBackground"

    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRulesForDeviceIdleLocked()V
    .locals 6

    .prologue
    .line 490
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getCurrentLocationRequestUids()Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    .local v0, "currentLrUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 492
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 493
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 494
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 496
    .local v3, "uid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 493
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 11

    .prologue
    .line 951
    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 952
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 955
    .local v6, "um":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 956
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 959
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 960
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 961
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 962
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 965
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 477
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 478
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 479
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 481
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 478
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 977
    invoke-static {p1}, Lcom/android/server/LocationPolicyManagerService;->isUidValidForRules(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 980
    .local v1, "uidPolicy":I
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    .line 983
    .local v0, "uidForeground":Z
    const/4 v2, 0x0

    .line 984
    .local v2, "uidRules":I
    if-nez v0, :cond_1

    and-int/lit16 v3, v1, 0xff

    if-eqz v3, :cond_1

    .line 986
    const/16 v2, 0xff

    .line 988
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_2

    .line 990
    const/16 v2, 0xff

    .line 992
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 994
    const/4 v2, 0x0

    .line 999
    :cond_3
    if-nez v2, :cond_4

    .line 1000
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1006
    :goto_1
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1002
    :cond_4
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1
.end method

.method private writePolicyLocked()V
    .locals 10

    .prologue
    .line 621
    const-string v7, "LocationPolicy"

    const-string v8, "writePolicyLocked()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x0

    .line 625
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 627
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 628
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v4, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 629
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 631
    const/4 v7, 0x0

    const-string v8, "policy-list"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const-string v7, "version"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 633
    const-string v7, "restrictBackground"

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 636
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationPolicy;

    .line 637
    .local v5, "policy":Landroid/location/LocationPolicy;
    const/4 v7, 0x0

    const-string v8, "location-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    const/4 v7, 0x0

    const-string v8, "provider"

    iget-object v9, v5, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const-string v7, "high-power"

    iget-boolean v8, v5, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 640
    const-string v7, "minIntervalMs"

    iget v8, v5, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 641
    const/4 v7, 0x0

    const-string v8, "location-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":Landroid/location/LocationPolicy;
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 664
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 667
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 645
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 646
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 647
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 650
    .local v5, "policy":I
    if-nez v5, :cond_2

    .line 645
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 652
    :cond_2
    const/4 v7, 0x0

    const-string v8, "uid-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const-string v7, "uid"

    invoke-static {v4, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 654
    const-string v7, "policy"

    invoke-static {v4, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 655
    const/4 v7, 0x0

    const-string v8, "uid-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 658
    .end local v5    # "policy":I
    .end local v6    # "uid":I
    :cond_3
    const/4 v7, 0x0

    const-string v8, "policy-list"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 661
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public checkUidLocationOp(II)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "granted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 833
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 835
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    const/4 v0, 0x1

    .line 863
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 864
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/android/server/location/LocationOpHandler;->updateLastLocationOp(IIJ)V

    .line 868
    :goto_1
    monitor-exit v8

    .line 870
    return v0

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    const/4 v0, 0x1

    .line 841
    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService;->getOpMinIntervalMsLocked(I)I

    move-result v6

    .line 842
    .local v6, "minInterval":I
    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->isFrequenctlyOp(IIJI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->setFollowupAction(IIJI)V

    goto :goto_0

    .line 868
    .end local v6    # "minInterval":I
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 849
    :cond_2
    if-eqz p2, :cond_4

    .line 851
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 852
    .local v7, "rule":I
    const/4 v1, 0x1

    if-eq v7, v1, :cond_3

    if-nez v7, :cond_0

    .line 853
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 857
    .end local v7    # "rule":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 858
    .restart local v7    # "rule":I
    if-nez v7, :cond_0

    .line 859
    const/4 v0, 0x1

    goto :goto_0

    .line 866
    .end local v7    # "rule":I
    :cond_5
    const-string v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", op = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is blocked by location policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public checkUidNavigationScreenLock(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 744
    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 909
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "LocationPolicy"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 912
    .local v1, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 913
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 912
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 916
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 917
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationMode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mScreenOn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPolicyFile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRestrictBackground="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationPolicies size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationRules size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidPolicies size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {p2, v6}, Landroid/location/LocationPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 927
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 924
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 929
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidRules size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {p2, v6}, Landroid/location/LocationPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    .line 933
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 930
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 935
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidInNavigation size ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    const/4 v3, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", inNavigation="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 939
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v6, :cond_4

    .line 942
    const-string v6, "LocationPolicy"

    const-string v7, "miui gps strategy dump"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 945
    :cond_4
    return-void

    .line 939
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method getFakeGpsFeatureOnState()Z
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getOnState()Z

    move-result v0

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFakeGpsLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 1093
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/LocationPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationPolicy;

    monitor-exit v1

    return-object v0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPhoneStationary()Z
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getPhoneStationary()Z

    move-result v0

    .line 1085
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 705
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v6, "LocationPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 708
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 710
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 711
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 712
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 713
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 709
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 717
    return-object v3

    .line 716
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isUidForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 894
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    .line 1110
    :cond_0
    return-void
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 755
    return-void
.end method

.method public setFakeGpsFeatureOnState(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setOnState(Z)V

    .line 1055
    return-void
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .prologue
    .line 767
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v6, "LocationPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object v0, p1

    .local v0, "arr$":[Landroid/location/LocationPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 772
    .local v3, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 779
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 771
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 784
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 785
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 786
    .restart local v3    # "policy":Landroid/location/LocationPolicy;
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 789
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 792
    monitor-exit v5

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPhoneStationary(ZLandroid/location/Location;)V
    .locals 3
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setPhoneStationay(ZLandroid/location/Location;)V

    .line 1061
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 4
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v3, "LocationPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 810
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 813
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void

    .line 813
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 815
    goto :goto_0
.end method

.method public setUidNavigationStart(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 722
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " navigation start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 725
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 728
    :cond_0
    monitor-exit v1

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUidNavigationStop(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 733
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " navigation stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 736
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 739
    :cond_0
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 678
    return-void
.end method

.method public systemRunning()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 191
    const-string v7, "LocationPolicy"

    const-string v8, "systemRunning()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 195
    :try_start_0
    invoke-static {}, Lcom/android/server/UidStateHelper;->get()Lcom/android/server/UidStateHelper;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    .line 196
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    invoke-virtual {v7, v9}, Lcom/android/server/UidStateHelper;->registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V

    .line 197
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 200
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->readPolicyLocked()V

    .line 202
    iget-boolean v7, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    .line 208
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    .line 210
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isDeviceIdle()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    .line 211
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v4, "packageFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v7, "package"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v4, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 225
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.UID_REMOVED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v9, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v6, "userFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "allowFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.MANAGE_LOCATION_POLICY"

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 239
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.location.MODE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v3, "locationStateFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    :try_start_1
    const-class v7, Landroid/os/PowerManager;

    const-string v8, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "deviceIdleFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v1, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    .end local v1    # "deviceIdleFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 211
    .end local v0    # "allowFilter":Landroid/content/IntentFilter;
    .end local v3    # "locationStateFilter":Landroid/content/IntentFilter;
    .end local v4    # "packageFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 248
    .restart local v0    # "allowFilter":Landroid/content/IntentFilter;
    .restart local v3    # "locationStateFilter":Landroid/content/IntentFilter;
    .restart local v4    # "packageFilter":Landroid/content/IntentFilter;
    .restart local v5    # "screenFilter":Landroid/content/IntentFilter;
    .restart local v6    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method takeOverGpsProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->takeOverGpsProvider(Ljava/lang/String;)Z

    move-result v0

    .line 1101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 763
    return-void
.end method

.method public updateGpsBlackPackages(Ljava/util/List;)V
    .locals 3
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
    .line 1065
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->updateGpsBlackPackages(Ljava/util/List;)V

    .line 1069
    :cond_0
    return-void
.end method

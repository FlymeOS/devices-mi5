.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    }
.end annotation


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final D:Z

.field private static final FROZEN_APP:I = 0x1

.field private static final MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final PER_USER_RANGE:I = 0x186a0

.field public static final PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"

.field private static mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private PowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

.field private mAM:Landroid/os/IBinder;

.field private mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mRemoveTask:Ljava/lang/reflect/Method;

.field private mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mUidFrozenState:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    .line 81
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance v5, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    invoke-direct {v5, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 224
    new-instance v5, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;

    invoke-direct {v5, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 138
    :try_start_0
    const-string v5, "android.os.ServiceManager"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .line 141
    .local v3, "getService":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "activity"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_2
    const-string v5, "com.android.server.am.ActivityManagerService"

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mPidsSelfLocked"

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_0

    .line 151
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 156
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-gt v5, v6, :cond_1

    .line 157
    const-class v5, Landroid/app/ActivityManager;

    const-string v6, "removeTask"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 158
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    .line 171
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    .line 187
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_3
    const-string v5, "com.android.server.am.ExtraActivityManagerService"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 189
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    invoke-static {v5}, Lcom/miui/whetstone/component/ComponentHelper;->init(Ljava/lang/Class;)V

    .line 190
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "scheduleDestroyActivities"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 193
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 194
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 204
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    .line 205
    new-instance v5, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    .line 208
    :try_start_4
    const-class v5, Landroid/os/PowerManager;

    const-string v6, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 209
    .local v4, "idleModeChange":Ljava/lang/String;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "deviceIdleFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 215
    .end local v0    # "deviceIdleFilter":Landroid/content/IntentFilter;
    .end local v4    # "idleModeChange":Ljava/lang/String;
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8

    .line 220
    :goto_4
    new-instance v5, Lcom/miui/whetstone/component/ComponentManagerNative;

    invoke-direct {v5}, Lcom/miui/whetstone/component/ComponentManagerNative;-><init>()V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    .line 221
    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 222
    return-void

    .line 142
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error: can not found AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 153
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_7
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 177
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 160
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_8
    const-class v5, Landroid/app/ActivityManager;

    const-string v6, "removeTask"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 161
    const-string v5, "com.android.server.am.ActivityManagerService"

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "removeTaskByIdLocked"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    .line 164
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 179
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 167
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_9
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "removeTaskByIdLocked not found in AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    .line 181
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 173
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_a
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "removeTask not found in AcivityManager"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    .line 183
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_6
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 197
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    :try_start_b
    const-string v5, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    .line 198
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const-string v6, "getPartialWakeLockHoldByUid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 211
    :catch_7
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "whetstone.activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerProcessObserver exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->releasePromoteLevelWithUserId(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method private checkCallInterfacePermission()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 126
    .local v0, "callingUid":I
    const v1, 0x186a0

    rem-int/2addr v0, v1

    .line 128
    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 293
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 295
    .local v6, "n":I
    :try_start_0
    const-string v12, "com.android.server.am.ProcessRecord"

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v12, v13, v14}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 297
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 298
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 299
    .local v9, "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 300
    const-string v12, "processName"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 302
    .local v7, "name":Ljava/lang/String;
    const-string v12, "userId"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 304
    .local v10, "uId":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_1

    .line 305
    const-string v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 307
    .local v8, "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 335
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pid":Ljava/lang/Integer;
    .end local v9    # "processRecord":Ljava/lang/Object;
    .end local v10    # "uId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    return v11

    .line 297
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "i":I
    .restart local v9    # "processRecord":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 312
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v11, -0x1

    .line 313
    .local v11, "value":I
    add-int/lit8 v4, v6, -0x1

    :goto_2
    if-ltz v4, :cond_4

    .line 314
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 315
    .restart local v9    # "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_3

    .line 316
    const-string v12, "info"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 318
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_3

    .line 319
    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 320
    add-int/lit8 v2, v2, 0x1

    .line 321
    const-string v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 323
    .restart local v8    # "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 313
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 328
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_4
    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    .line 335
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v11    # "value":I
    :goto_3
    const/4 v11, -0x1

    goto :goto_1

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private handleClearDeadAppFromNative()V
    .locals 5

    .prologue
    .line 248
    :try_start_0
    const-string v2, "com.android.server.am.ActivityManagerService"

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clearDeadAppFromNative"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    .local v0, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 251
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "clearMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    const-string v3, "handleClearDeadAppFromNative"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releasePromoteLevelWithUserId(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 384
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 388
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 389
    .local v3, "pid":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    :try_start_1
    monitor-exit v7

    goto :goto_0

    .line 402
    .end local v3    # "pid":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 390
    .restart local v3    # "pid":I
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 391
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 392
    const-string v6, "com.android.server.am.ProcessRecord"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.am.ProcessList"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 396
    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "UNKNOWN_ADJ"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6, v8}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 397
    .local v5, "value3":Ljava/lang/Integer;
    const-string v6, "maxAdj"

    invoke-static {v0, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value3":Ljava/lang/Integer;
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v7

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private updateCurrentProcessPss(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .prologue
    .line 732
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 734
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 735
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 0
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
    .line 695
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 696
    return-void
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 676
    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .prologue
    .line 740
    invoke-static {p1, p2, p3, p4}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 741
    const-wide/16 v0, 0x400

    div-long v0, p3, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateCurrentProcessPss(IJ)V

    .line 742
    return-void
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 722
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 728
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "additionalArgs"    # [Ljava/lang/Object;

    .prologue
    .line 804
    const/4 v14, 0x1

    .line 805
    .local v14, "res":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v1

    .line 806
    .local v1, "componentManager":Lcom/miui/whetstone/IComponentManager;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v10, "additional":Landroid/os/Bundle;
    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_0

    .line 809
    const/4 v2, 0x0

    :try_start_0
    aget-object v13, p7, v2

    check-cast v13, Landroid/content/Intent;

    .line 810
    .local v13, "intent":Landroid/content/Intent;
    const-string v2, "intent"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 818
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v10}, Lcom/miui/whetstone/IComponentManager;->handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 831
    :cond_1
    :goto_1
    return v14

    .line 811
    :catch_0
    move-exception v11

    .line 812
    .local v11, "e":Ljava/lang/ClassCastException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v11

    .line 821
    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/miui/whetstone/IComponentManager;->handleComponentStart(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    goto :goto_1

    .line 826
    :catch_2
    move-exception v12

    .line 827
    .local v12, "e1":Landroid/os/RemoteException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearDeadAppFromNative()V
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    return-void
.end method

.method public distoryActivity(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "whetstone"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 618
    const/4 v1, 0x1

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 621
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 623
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 745
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 754
    .local v0, "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 2

    .prologue
    .line 690
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    return-object v0
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 270
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "com.android.server.am.ProcessRecord"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 274
    const-string v5, "info"

    invoke-static {v0, v5}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 275
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 276
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 289
    return-object v3

    .line 278
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "processRecord":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 280
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "processRecord":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string/jumbo v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .locals 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "ret":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 763
    const-string/jumbo v3, "whetstone.activity"

    const-string/jumbo v4, "whetstone.activity getPartialWakeLockHoldByUid == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v3, -0x1

    .line 777
    :goto_0
    return v3

    .line 767
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 768
    .local v2, "wakeLockCnt":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 769
    :cond_1
    const-string/jumbo v3, "whetstone.activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "whetstone.activity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "wakeLockCnt":Ljava/lang/Integer;
    :goto_1
    move v3, v1

    .line 777
    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 772
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 774
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public getProcessReceiverState(I)Z
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 565
    const/4 v0, -0x1

    .line 566
    .local v0, "ProcStat":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 568
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "getProcStateByPid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 569
    .local v2, "getProcStateByPid":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 570
    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 582
    .end local v2    # "getProcStateByPid":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    move v3, v4

    :goto_1
    return v3

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move v3, v5

    .line 582
    goto :goto_1
.end method

.method public getSystemPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getUidFrozenState(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    :goto_0
    return v0

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    .line 646
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 647
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 651
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    const/4 v0, 0x0

    .line 656
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 660
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 661
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 665
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    const/4 v0, 0x0

    .line 670
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProcessExecutingServices(I)Z
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, "executingServicesN":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "getExecutingServicesSize"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 591
    .local v2, "getExecutingServicesSize":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 592
    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 604
    .end local v2    # "getExecutingServicesSize":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    move v3, v4

    :goto_1
    return v3

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move v3, v5

    .line 604
    goto :goto_1
.end method

.method public noteDisableSensor(IIILandroid/os/IBinder;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/whetstone/PowerKeeperPolicy;->noteDisableSensor(IIILandroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public noteEnableSensor(IIILandroid/os/IBinder;JJI)I
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "connection"    # Landroid/os/IBinder;
    .param p5, "samplingPeriodNs"    # J
    .param p7, "maxBatchReportLatencyNs"    # J
    .param p9, "reserve"    # I

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/miui/whetstone/PowerKeeperPolicy;->noteEnableSensor(IIILandroid/os/IBinder;JJI)I

    move-result v0

    return v0
.end method

.method public promoteApplicationLevel(II)V
    .locals 18
    .param p1, "level"    # I
    .param p2, "timeoutMills"    # I

    .prologue
    .line 407
    const/4 v11, 0x0

    .line 408
    .local v11, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 409
    .local v2, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 410
    .local v3, "callUid":I
    const/16 v14, 0x10

    invoke-static {v14, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v14

    if-nez v14, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v15

    .line 415
    if-gtz v2, :cond_2

    :try_start_0
    monitor-exit v15

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 416
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 417
    .local v12, "processRecord":Ljava/lang/Object;
    if-eqz v12, :cond_6

    .line 418
    const-string v14, "com.android.server.am.ProcessRecord"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 420
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "com.android.server.am.ProcessList"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 422
    .local v5, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 423
    .local v13, "value":Ljava/lang/Integer;
    const-string v14, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 425
    .local v10, "normal_adj":Ljava/lang/Integer;
    const-string v14, "PERCEPTIBLE_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 427
    .local v8, "middle_adj":Ljava/lang/Integer;
    const-string v14, "VISIBLE_APP_ADJ"

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v5, v14, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 429
    .local v7, "high_adj":Ljava/lang/Integer;
    if-nez p1, :cond_3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_3

    .line 430
    const-string v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v12, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v12    # "processRecord":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Integer;
    :goto_1
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    if-lez p2, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 447
    .local v9, "msg":Landroid/os/Message;
    iput-object v11, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iput v2, v9, Landroid/os/Message;->arg1:I

    .line 449
    iput v3, v9, Landroid/os/Message;->arg2:I

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 431
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v12    # "processRecord":Ljava/lang/Object;
    .restart local v13    # "value":Ljava/lang/Integer;
    :cond_3
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_4

    .line 432
    const-string v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v12, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 441
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v12    # "processRecord":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 442
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v14, "whetstone.activity"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 433
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v12    # "processRecord":Ljava/lang/Object;
    .restart local v13    # "value":Ljava/lang/Integer;
    :cond_4
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-le v14, v0, :cond_5

    .line 434
    const-string v14, "maxAdj"

    invoke-static {v4, v14}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v12, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 436
    :cond_5
    :try_start_6
    monitor-exit v15

    goto/16 :goto_0

    .line 439
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v13    # "value":Ljava/lang/Integer;
    :cond_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public putUidFrozenState(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 631
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    if-ne v1, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 634
    monitor-exit v2

    move v0, v1

    .line 635
    goto :goto_0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseApplicationPromoteLevel()V
    .locals 14

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 457
    .local v0, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 458
    .local v1, "callUid":I
    const/16 v10, 0x10

    invoke-static {v10, v0, v1}, Lcom/miui/whetstone/WhetstoneManager;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v10

    if-nez v10, :cond_0

    .line 487
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    .line 463
    if-gtz v0, :cond_1

    :try_start_0
    monitor-exit v11

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 464
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 465
    .local v6, "processRecord":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 466
    const-string v10, "com.android.server.am.ProcessRecord"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v10, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 468
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "com.android.server.am.ProcessList"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v10, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 470
    .local v3, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "processName"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 471
    .local v5, "processName":Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 473
    :cond_2
    :try_start_3
    const-string v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 474
    .local v7, "value":Ljava/lang/Integer;
    const-string v10, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 476
    .local v8, "value2":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v10, v12, :cond_3

    .line 477
    const-string v10, "UNKNOWN_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 479
    .local v9, "value3":Ljava/lang/Integer;
    const-string v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    .end local v9    # "value3":Ljava/lang/Integer;
    :cond_3
    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "processRecord":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Integer;
    .end local v8    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v11

    goto :goto_0

    .line 483
    :catch_0
    move-exception v4

    .line 484
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public removeTaskById(IZ)Z
    .locals 13
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 841
    const/4 v3, 0x0

    .line 842
    .local v3, "res":Z
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-gt v8, v9, :cond_2

    .line 843
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 844
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v8, :cond_0

    move v6, v7

    .line 896
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return v6

    .line 847
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v6, v3

    .line 852
    goto :goto_0

    :cond_1
    move v6, v7

    .line 847
    goto :goto_1

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 850
    goto :goto_0

    .line 854
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_4

    .line 855
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 856
    .restart local v0    # "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_0

    .line 858
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_2
    move v6, v3

    .line 896
    goto :goto_0

    .line 859
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :catch_1
    move-exception v1

    .line 860
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 861
    goto :goto_0

    .line 865
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v6, Landroid/app/IActivityManager;

    const-string v8, "android.permission.REMOVE_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v6, v8, v9, v10}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_5

    .line 869
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " requires "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "android.permission.REMOVE_TASKS"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v7

    .line 875
    goto/16 :goto_0

    .line 877
    .end local v2    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 878
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 879
    goto/16 :goto_0

    .line 882
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-nez v6, :cond_6

    move v6, v7

    goto/16 :goto_0

    .line 884
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 886
    .local v4, "orig":J
    :try_start_3
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 887
    :try_start_4
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 888
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 893
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 888
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 889
    :catch_3
    move-exception v1

    .line 890
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 893
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .locals 9
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 542
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 544
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v5, "scheduleTrimMemory"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 546
    .local v1, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 547
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 560
    .end local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v2, v3

    .line 560
    goto :goto_0

    .line 552
    :catch_1
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 556
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # [Landroid/content/ComponentName;

    .prologue
    .line 685
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 341
    return-void
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v8

    if-nez v8, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    if-eqz p1, :cond_0

    .line 349
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 350
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 355
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 356
    .local v3, "pid":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    :try_start_1
    monitor-exit v9

    goto :goto_0

    .line 380
    .end local v3    # "pid":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 357
    .restart local v3    # "pid":I
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 358
    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 359
    const-string v8, "com.android.server.am.ProcessRecord"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 361
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "com.android.server.am.ProcessList"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 363
    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 364
    .local v5, "value":Ljava/lang/Integer;
    const-string v8, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 366
    .local v6, "value2":Ljava/lang/Integer;
    if-eqz p2, :cond_5

    .line 367
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v8, v10, :cond_4

    .line 368
    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    :goto_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 371
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pid":I
    .restart local v4    # "processRecord":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Integer;
    .restart local v6    # "value2":Ljava/lang/Integer;
    :cond_5
    :try_start_4
    const-string v8, "UNKNOWN_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 373
    .local v7, "value3":Ljava/lang/Integer;
    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 377
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    .end local v7    # "value3":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v8, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 0
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
    .line 704
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 705
    return-void
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 782
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
    .locals 1
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
    .line 709
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .locals 0
    .param p2, "userId"    # I
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
    .line 717
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 718
    return-void
.end method

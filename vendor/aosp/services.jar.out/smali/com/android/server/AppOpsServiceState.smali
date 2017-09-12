.class public Lcom/android/server/AppOpsServiceState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsServiceState$UserState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final POWER_SAVE_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final TAG:Ljava/lang/String; = "AppOpsServiceState"

.field private static sCtsIgnore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mPowerSaving:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsServiceState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    .line 58
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.app.usage.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.usepermission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.netlegacy22.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsServiceState;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method

.method private declared-synchronized getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsServiceState$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v0, "userState":Lcom/android/server/AppOpsServiceState$UserState;
    if-nez v0, :cond_1

    .line 74
    if-nez p2, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v1

    .line 77
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/AppOpsServiceState$UserState;

    .end local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsServiceState$UserState;-><init>(Lcom/android/server/AppOpsServiceState$1;)V

    .line 78
    .restart local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v1, v0

    .line 80
    goto :goto_0

    .line 72
    .end local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private inMiuiAllowedBlackList(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "inList":Z
    sparse-switch p1, :sswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 136
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private isSystemApp(IILjava/lang/String;)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_0

    .line 157
    :goto_0
    return v4

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 148
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v6, p3, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 149
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 155
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move v4, v5

    .line 157
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private updatePowerState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 105
    return-void

    :cond_0
    move v0, v1

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public allowedToMode(IILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 116
    .local v0, "checkAutoStart":Z
    if-nez v0, :cond_0

    .line 117
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 118
    .local v1, "userId":I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 122
    .end local v1    # "userId":I
    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x2718

    if-ne p1, v2, :cond_1

    .line 123
    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v2, 0x1

    .line 127
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public askOperationLocked(IILjava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 173
    .local v0, "result":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 174
    .local v2, "userId":I
    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_0

    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 178
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v1

    .line 179
    .local v1, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v3, :cond_1

    .line 181
    :try_start_0
    iget-object v3, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v3, p2, p3, p1}, Lcom/android/internal/app/IOpsCallback;->askOperation(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    :cond_1
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSuggestMode(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 69
    :cond_0
    return-void
.end method

.method public isAppPermissionControlOpen(II)Z
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I

    .prologue
    .line 161
    sget-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2718

    if-ne p1, v1, :cond_2

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 168
    :cond_1
    :goto_0
    return v0

    .line 164
    :cond_2
    const/4 v0, 0x1

    .line 165
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAppPermissionControlOpen(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isCtsIgnore(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMiuiAllowed(IILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->inMiuiAllowedBlackList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isSystemApp(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "isStartOperation"    # Z

    .prologue
    .line 193
    if-nez p4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v6

    .line 197
    .local v6, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v0, v6, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 7
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .prologue
    const/4 v1, -0x1

    .line 206
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v0

    .line 214
    .local v0, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v0, :cond_0

    .line 217
    iput-object p1, v0, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 89
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 90
    const-string v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/AppOpsServiceState$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/AppOpsServiceState$1;-><init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    .line 98
    return-void
.end method

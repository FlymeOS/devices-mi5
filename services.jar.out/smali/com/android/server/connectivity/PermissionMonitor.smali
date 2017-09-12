.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final NETWORK:Ljava/lang/Boolean;

.field private static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mUserApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 72
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 73
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    .line 74
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PermissionMonitor;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(IZI)V

    return-void
.end method

.method private getAppsNetworkPermissionForUser(I)Ljava/util/Map;
    .locals 11
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v10, 0x1000

    invoke-interface {v9, v10, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 181
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_3

    .line 182
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 183
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 184
    .local v8, "uid":I
    :goto_1
    if-ltz v8, :cond_0

    .line 188
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 189
    .local v3, "isNetwork":Z
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 191
    .local v4, "isSystem":Z
    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    .line 192
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 195
    .local v6, "permission":Ljava/lang/Boolean;
    if-eqz v6, :cond_2

    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v6, v9, :cond_0

    .line 196
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isNetwork":Z
    .end local v4    # "isSystem":Z
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "permission":Ljava/lang/Boolean;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v8    # "uid":I
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package manager has died"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return-object v0

    .line 183
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4
    const/4 v8, -0x1

    goto :goto_1
.end method

.method private hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 136
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 126
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 127
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const/4 v4, 0x1

    .line 132
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return v4

    .line 126
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "p":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasSystemPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 140
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 141
    .local v0, "flags":I
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 142
    :cond_0
    const/4 v1, 0x1

    .line 144
    :goto_1
    return v1

    .line 140
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    .restart local v0    # "flags":I
    :cond_2
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method private highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 7
    .param p1, "currentPermission"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # I

    .prologue
    .line 227
    sget-object v5, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v5, :cond_0

    move-object v1, p1

    .line 245
    .end local p1    # "currentPermission":Ljava/lang/Boolean;
    .local v1, "currentPermission":Ljava/lang/Boolean;
    :goto_0
    return-object v1

    .line 231
    .end local v1    # "currentPermission":Ljava/lang/Boolean;
    .restart local p1    # "currentPermission":Ljava/lang/Boolean;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v6, 0x1000

    invoke-interface {v5, p2, v6, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 232
    .local v0, "app":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3

    .line 233
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 234
    .local v3, "isNetwork":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 235
    .local v4, "isSystem":Z
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 236
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v3    # "isNetwork":Z
    .end local v4    # "isSystem":Z
    :cond_2
    :goto_1
    move-object v1, p1

    .line 245
    .end local p1    # "currentPermission":Ljava/lang/Boolean;
    .restart local v1    # "currentPermission":Ljava/lang/Boolean;
    goto :goto_0

    .line 239
    .end local v1    # "currentPermission":Ljava/lang/Boolean;
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    .restart local p1    # "currentPermission":Ljava/lang/Boolean;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package manager has died"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method private declared-synchronized onAppAdded(Ljava/lang/String;II)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "user"    # I

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 250
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid app in onAppAdded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 257
    .local v2, "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    .line 258
    .local v1, "permission":Ljava/lang/Boolean;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local v2    # "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized onAppRemoved(IZI)V
    .locals 4
    .param p1, "appUid"    # I
    .param p2, "removedAllUsers"    # Z
    .param p3, "user"    # I

    .prologue
    .line 303
    monitor-enter p0

    if-ltz p1, :cond_0

    if-gez p3, :cond_2

    .line 304
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app in onAppRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_2
    if-eqz p2, :cond_3

    .line 309
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    .local v1, "userId":I
    invoke-static {v1, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/PermissionMonitor;->removeNetworkPermissionForUid(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 303
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 313
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeNetworkPermissionForUid(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized onUserAdded(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    .line 209
    monitor-enter p0

    if-gez p1, :cond_0

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getAppsNetworkPermissionForUser(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onUserRemoved(I)V
    .locals 2
    .param p1, "user"    # I

    .prologue
    .line 218
    monitor-enter p0

    if-gez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    .line 223
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeNetworkPermissionForUid(II)V
    .locals 11
    .param p1, "appUid"    # I
    .param p2, "user"    # I

    .prologue
    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 271
    .local v7, "permission":Ljava/lang/Boolean;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v9, v6

    if-lez v9, :cond_2

    .line 273
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 274
    .local v5, "name":Ljava/lang/String;
    invoke-direct {p0, v7, v5, p2}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v7

    .line 275
    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v9, :cond_1

    .line 300
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 273
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package manager has died"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 287
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 288
    .local v8, "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v7, v9, :cond_0

    .line 291
    if-eqz v7, :cond_3

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v9, 0x1

    invoke-direct {p0, v0, v9}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    goto :goto_1

    .line 296
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v9, 0x0

    invoke-direct {p0, v0, v9}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    goto :goto_1
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 149
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Map;Z)V
    .locals 9
    .param p2, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v5, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    .local v0, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 160
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    move-object v3, v4

    .line 159
    goto :goto_1

    .line 163
    .end local v0    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v7, "NETWORK"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 165
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v7, "SYSTEM"

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 173
    :goto_2
    return-void

    .line 167
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    .line 168
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->clearPermission([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when updating permissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized startMonitoring()V
    .locals 9

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 103
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 115
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v8, :cond_0

    .line 116
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 117
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->getAppsNetworkPermissionForUser(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

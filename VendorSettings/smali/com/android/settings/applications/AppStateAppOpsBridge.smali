.class public abstract Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;
.super Lcom/android/vendorsettings/applications/AppStateBaseBridge;
.source "AppStateAppOpsBridge.java"


# instance fields
.field private final Gj:Landroid/content/pm/IPackageManager;

.field private final Gk:Ljava/util/List;

.field private final Gl:[I

.field private final Gm:[Ljava/lang/String;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final sR:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;-><init>(Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    .line 62
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gj:Landroid/content/pm/IPackageManager;

    .line 64
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->sR:Landroid/os/UserManager;

    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gk:Ljava/util/List;

    .line 66
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gl:[I

    .line 68
    iput-object p5, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private aE(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 73
    :goto_0
    if-ge v2, v3, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_1
    return v0

    .line 73
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 78
    goto :goto_1
.end method

.method private am(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 260
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/util/SparseArray;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 194
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 195
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 196
    if-eqz v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gj:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 202
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    :goto_0
    move v5, v4

    .line 203
    :goto_1
    if-ge v5, v3, :cond_0

    .line 204
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 205
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 206
    if-eqz v2, :cond_1

    .line 207
    iput-object v1, v2, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Go:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 202
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "AppStateAppOpsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager is dead. Can\'t get list of packages granted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_3
    return-void
.end method

.method private c(Landroid/util/SparseArray;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gl:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 227
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_0
    move v4, v3

    .line 228
    :goto_1
    if-ge v4, v2, :cond_5

    .line 229
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 230
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 231
    invoke-direct {p0, v6}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->aE(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v2, v3

    .line 227
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 237
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 241
    if-nez v1, :cond_3

    .line 242
    const-string v1, "AppStateAppOpsBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppOp permission exists for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " of user "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " but package doesn\'t exist or did not request "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " access"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_4

    .line 249
    const-string v1, "AppStateAppOpsBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No AppOps permission exists for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    iput v0, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I

    goto/16 :goto_2

    .line 254
    :cond_5
    return-void
.end method

.method private jN()Landroid/util/SparseArray;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 148
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 149
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    array-length v4, v2

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v7, v2, v1

    .line 150
    iget-object v8, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gj:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v7}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 151
    if-eqz v7, :cond_0

    .line 152
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    .line 182
    :goto_1
    return-object v1

    .line 163
    :cond_2
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/UserHandle;

    move-object v2, v0

    .line 165
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 167
    invoke-virtual {v4, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    iget-object v11, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gj:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v1, v9}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v11

    .line 171
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->am(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v11, :cond_4

    .line 172
    new-instance v11, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v11, v1, v2}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 173
    invoke-virtual {v8, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    const-string v2, "AppStateAppOpsBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageManager is dead. Can\'t get list of packages requesting "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 182
    goto :goto_1

    :cond_5
    move-object v1, v4

    .line 178
    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Lcom/android/b/a/o;Ljava/lang/String;I)V
.end method

.method public g(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 93
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gj:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x1000

    iget-object v4, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    .line 99
    iget-object v2, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 100
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gn:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 101
    if-eqz v2, :cond_0

    .line 102
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 103
    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gm:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gp:Z

    .line 105
    aget v4, v3, v0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Go:Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gl:[I

    invoke-virtual {v0, p2, p1, v2}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    iput v0, v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->Gq:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_1
    return-object v1

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v2, "AppStateAppOpsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager is dead. Can\'t get package info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected jM()V
    .locals 7

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->jN()Landroid/util/SparseArray;

    move-result-object v3

    .line 128
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->b(Landroid/util/SparseArray;)V

    .line 129
    invoke-direct {p0, v3}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->c(Landroid/util/SparseArray;)V

    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 134
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 135
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 136
    iget-object v1, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 137
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 138
    if-eqz v1, :cond_0

    iget-object v6, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    :goto_1
    iput-object v1, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 138
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    :cond_1
    return-void
.end method

.method public jO()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->jN()Landroid/util/SparseArray;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->sR:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 270
    if-nez v0, :cond_1

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public jP()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->jN()Landroid/util/SparseArray;

    move-result-object v0

    .line 278
    if-nez v0, :cond_1

    .line 295
    :cond_0
    return v1

    .line 281
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->b(Landroid/util/SparseArray;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->c(Landroid/util/SparseArray;)V

    .line 283
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->sR:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 285
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 291
    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;->jQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 294
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

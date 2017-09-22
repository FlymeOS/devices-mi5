.class public final Lcom/android/vendorsettings/accounts/AuthenticatorHelper;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# instance fields
.field private final BW:Landroid/os/UserHandle;

.field private Ep:Ljava/util/Map;

.field private Eq:[Landroid/accounts/AuthenticatorDescription;

.field private Er:Ljava/util/ArrayList;

.field private Es:Ljava/util/Map;

.field private Et:Ljava/util/HashMap;

.field private final Eu:Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

.field private Ev:Z

.field private final aN:Landroid/os/UserManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Et:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->aN:Landroid/os/UserManager;

    .line 75
    iput-object p2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    .line 76
    iput-object p4, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eu:Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 80
    return-void
.end method

.method private jk()V
    .locals 8

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Et:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 264
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 265
    aget-object v4, v2, v1

    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Et:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 267
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v5, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Et:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    const-string v5, "AuthenticatorHelper"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    const-string v5, "AuthenticatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 277
    :cond_2
    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Et:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ae(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 159
    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public af(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 173
    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public ag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ah(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public ai(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ah(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public al(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 183
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eq:[Landroid/accounts/AuthenticatorDescription;

    .line 185
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eq:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    new-instance v1, Lcom/android/vendorsettings/accounts/AuthenticatorHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v2

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 112
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 116
    :try_start_2
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    :try_start_3
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 123
    :goto_1
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 118
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 119
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public jd()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ev:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ev:Z

    .line 247
    :cond_0
    return-void
.end method

.method public je()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ev:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ev:Z

    .line 254
    :cond_0
    return-void
.end method

.method public jj()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ep:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 139
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v0, "AuthenticatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    const-string v0, "AuthenticatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label icon for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->al(Landroid/content/Context;)V

    .line 212
    if-nez p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Es:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 218
    aget-object v1, p1, v0

    .line 219
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Er:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->jk()V

    .line 224
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Ev:Z

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->Eu:Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;->a(Landroid/os/UserHandle;)V

    .line 227
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 235
    return-void
.end method

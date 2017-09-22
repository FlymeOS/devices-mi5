.class public Lcom/android/vendorsettings/accounts/AccountSyncSettings;
.super Lcom/android/vendorsettings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private Ef:Landroid/widget/TextView;

.field private Eg:Landroid/widget/TextView;

.field private Eh:Landroid/widget/ImageView;

.field private Ei:Landroid/widget/TextView;

.field private Ej:Ljava/util/ArrayList;

.field private Ek:Ljava/util/ArrayList;

.field private mAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    .line 81
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ek:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    new-instance v0, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v4}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p2, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 246
    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider needs a label for authority \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    const v2, 0x7f0c086b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 387
    if-eqz p3, :cond_0

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/AccountSyncSettings;I)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private a(Landroid/accounts/Account;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 499
    if-nez p1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 503
    array-length v3, v2

    move v1, v0

    .line 504
    :goto_1
    if-ge v1, v3, :cond_0

    .line 505
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 399
    iget-object v2, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab(Z)V
    .locals 4

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 369
    instance-of v3, v0, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    if-nez v3, :cond_1

    .line 367
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_1
    check-cast v0, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    .line 373
    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, p1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ek:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncAdapterType;

    .line 381
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v0, p1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 384
    :cond_3
    return-void
.end method

.method private eH()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 214
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 217
    if-eqz v0, :cond_1

    const v0, 0x7f0c03c1

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v2, v0}, Lcom/android/vendorsettings/iC;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0

    .line 217
    :cond_1
    const v0, 0x7f0c03c2

    goto :goto_1
.end method

.method private jf()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ab(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->invalidateOptionsMenu()V

    .line 352
    :cond_0
    return-void
.end method

.method private jg()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ab(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->invalidateOptionsMenu()V

    .line 362
    :cond_0
    return-void
.end method

.method private jh()V
    .locals 24

    .prologue
    .line 418
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 420
    invoke-static {v12}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    .line 421
    const/4 v4, 0x0

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ji()V

    .line 426
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    move v10, v2

    :goto_0
    if-ge v10, v14, :cond_f

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 428
    instance-of v3, v2, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    if-nez v3, :cond_0

    .line 426
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 431
    :cond_0
    check-cast v2, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    .line 433
    invoke-virtual {v2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v15

    .line 434
    invoke-virtual {v2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v16

    .line 436
    move-object/from16 v0, v16

    invoke-static {v0, v15, v12}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 437
    move-object/from16 v0, v16

    invoke-static {v0, v15, v12}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v17

    .line 439
    if-nez v6, :cond_4

    const/4 v3, 0x0

    move v9, v3

    .line 440
    :goto_2
    if-nez v6, :cond_5

    const/4 v3, 0x0

    .line 442
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1, v15}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    .line 443
    if-eqz v6, :cond_6

    iget-wide v0, v6, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v5, v20, v22

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    const/4 v5, 0x1

    .line 447
    :goto_4
    if-nez v17, :cond_11

    const/4 v5, 0x0

    move v8, v5

    .line 448
    :goto_5
    if-eqz v8, :cond_1

    if-nez v18, :cond_1

    if-nez v9, :cond_1

    .line 449
    const/4 v4, 0x1

    .line 451
    :cond_1
    const-string v5, "AccountSettings"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    const-string v5, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Update sync status: "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " active = "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " pend ="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    if-nez v6, :cond_7

    const-wide/16 v6, 0x0

    .line 457
    :goto_6
    if-nez v17, :cond_8

    .line 458
    const v5, 0x7f0c0853

    invoke-virtual {v2, v5}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 468
    :goto_7
    move-object/from16 v0, v16

    invoke-static {v0, v15, v12}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v6

    .line 470
    if-eqz v18, :cond_b

    if-ltz v6, :cond_b

    if-nez v3, :cond_b

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v2, v5}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 472
    if-eqz v9, :cond_c

    if-ltz v6, :cond_c

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->ah(Z)V

    .line 475
    invoke-virtual {v2, v8}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->ai(Z)V

    .line 476
    invoke-static {v12}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    .line 478
    :goto_a
    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 479
    if-nez v3, :cond_3

    if-eqz v17, :cond_e

    :cond_3
    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 439
    :cond_4
    iget-boolean v3, v6, Landroid/content/SyncStatusInfo;->pending:Z

    move v9, v3

    goto/16 :goto_2

    .line 440
    :cond_5
    iget-boolean v3, v6, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 443
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 456
    :cond_7
    iget-wide v6, v6, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto :goto_6

    .line 459
    :cond_8
    if-eqz v18, :cond_9

    .line 460
    const v5, 0x7f0c0856

    invoke-virtual {v2, v5}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_7

    .line 461
    :cond_9
    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_a

    .line 462
    invoke-virtual {v11, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0855

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 466
    :cond_a
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 470
    :cond_b
    const/4 v5, 0x0

    goto :goto_8

    .line 472
    :cond_c
    const/4 v3, 0x0

    goto :goto_9

    .line 476
    :cond_d
    const/4 v3, 0x0

    goto :goto_a

    .line 479
    :cond_e
    const/4 v3, 0x0

    goto :goto_b

    .line 481
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ei:Landroid/widget/TextView;

    if-eqz v4, :cond_10

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->invalidateOptionsMenu()V

    .line 484
    return-void

    .line 481
    :cond_10
    const/16 v2, 0x8

    goto :goto_c

    :cond_11
    move v8, v5

    goto/16 :goto_5
.end method

.method private ji()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ek:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 517
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 518
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_3

    .line 519
    aget-object v5, v2, v0

    .line 521
    iget-object v6, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 518
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 523
    const-string v6, "AccountSettings"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    const-string v6, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAccountSwitches: added authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to accountType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    iget-object v5, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_2
    iget-object v6, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ek:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 535
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    const-string v0, "AccountSettings"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 541
    const-string v0, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looking for sync adapters that match account "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_8

    .line 544
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    iget-object v5, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v5, v0, v6}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v5

    .line 548
    const-string v6, "AccountSettings"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 549
    const-string v6, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  found authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_6
    if-lez v5, :cond_7

    .line 552
    iget-object v5, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v5, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 543
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 556
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 557
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_9

    .line 558
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 557
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 560
    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->a(Landroid/os/UserHandle;)V

    .line 489
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->finish()V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ji()V

    .line 495
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ja()V

    goto :goto_0
.end method

.method public bridge synthetic aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 577
    const v0, 0x7f0c09b7

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f130004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ei:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ei:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    const v0, 0x7f1302df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ef:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f1302e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Eg:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f1302de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Eh:Landroid/widget/ImageView;

    .line 187
    return-void
.end method

.method protected iZ()V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->iZ()V

    .line 568
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 569
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Eh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Eg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->ac(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_0
    return-void
.end method

.method protected ja()V
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->jh()V

    .line 410
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public bridge synthetic jb()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->jb()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    const-string v0, "AccountSettings"

    const-string v1, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->finish()V

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account provided does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Ef:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->Eg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 159
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 160
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->eH()V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 163
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const v4, 0x7f0c0867

    const v3, 0x104000a

    const/4 v0, 0x0

    .line 90
    .line 91
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 92
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0868

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0864

    new-instance v2, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/vendorsettings/accounts/AccountSyncSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0869

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c086c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c086d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 263
    const/4 v0, 0x1

    const v1, 0x7f0c0859

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020136

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 266
    const/4 v0, 0x2

    const v2, 0x7f0c085a

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080038

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 271
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 272
    const-string v3, "no_modify_accounts"

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x3

    const v3, 0x7f0c0864

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020131

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 276
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 279
    :cond_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 281
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 285
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const v0, 0x7f040001

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 172
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 173
    invoke-static {p2, v1, v0, v2}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->h(Landroid/view/View;)V

    .line 177
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->jf()V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->jg()V

    goto :goto_0

    .line 307
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->je()V

    .line 238
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 315
    instance-of v1, p2, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    if-eqz v1, :cond_3

    .line 316
    check-cast p2, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;

    .line 317
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 320
    invoke-static {v2, v1, v3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 322
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    invoke-direct {p0, v2, v1, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v5

    .line 327
    if-eq v5, v4, :cond_0

    .line 329
    invoke-static {v2, v1, v5, v3}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 333
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v5, :cond_0

    .line 334
    :cond_2
    invoke-direct {p0, v2, v1, v5}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 340
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 293
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    return-void

    :cond_0
    move v0, v2

    .line 291
    goto :goto_0

    :cond_1
    move v1, v2

    .line 293
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->U(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->jd()V

    .line 228
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->jb()V

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSyncSettings;->a(Landroid/os/UserHandle;)V

    .line 231
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onResume()V

    .line 232
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x9

    return v0
.end method

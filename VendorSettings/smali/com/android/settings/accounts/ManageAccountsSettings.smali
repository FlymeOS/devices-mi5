.class public Lcom/android/vendorsettings/accounts/ManageAccountsSettings;
.super Lcom/android/vendorsettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private DQ:[Ljava/lang/String;

.field private EC:Landroid/accounts/Account;

.field private Ei:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;-><init>()V

    .line 450
    return-void
.end method

.method private a(Lcom/android/vendorsettings/i;)V
    .locals 7

    .prologue
    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/vendorsettings/i;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0848

    invoke-virtual {p1}, Lcom/android/vendorsettings/i;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 200
    return-void
.end method

.method private a(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 377
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ah(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 567
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 568
    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 571
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 572
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 574
    :try_start_0
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 575
    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_2

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    const-string v2, "AccountSettings"

    const-string v3, "Intent considered unsafe due to exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 367
    :goto_0
    if-ge v2, v3, :cond_1

    .line 368
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 369
    iget-object v4, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 373
    :goto_1
    return v0

    .line 367
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_1
.end method

.method private ac(Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 235
    invoke-static {v3}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 236
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 237
    const-string v0, "force"

    const/4 v2, 0x1

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v2, v1

    .line 240
    :goto_0
    if-ge v2, v6, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 242
    instance-of v7, v0, Lcom/android/vendorsettings/i;

    if-eqz v7, :cond_2

    .line 243
    check-cast v0, Lcom/android/vendorsettings/i;

    invoke-virtual {v0}, Lcom/android/vendorsettings/i;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    move v0, v1

    .line 245
    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_2

    .line 246
    aget-object v8, v4, v0

    .line 247
    aget-object v9, v4, v0

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9, v3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8, v3, v5}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 245
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_1
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8, v3}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 240
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 260
    :cond_3
    return-void
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 6

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 492
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 493
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 495
    if-eqz v3, :cond_0

    .line 510
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    new-instance v3, Lcom/android/vendorsettings/accounts/ManageAccountsSettings$FragmentStarter;

    const-class v4, Lcom/android/vendorsettings/location/MiuiLocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c01e5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/vendorsettings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 555
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 556
    goto :goto_0

    .line 522
    :cond_1
    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 524
    if-nez v4, :cond_2

    .line 525
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 528
    :cond_2
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->EC:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 529
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    new-instance v3, Lcom/android/vendorsettings/accounts/ManageAccountsSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/vendorsettings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 557
    :cond_3
    return-void
.end method

.method private jm()V
    .locals 28

    .prologue
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 283
    invoke-static {v12}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    .line 285
    const/4 v8, 0x0

    .line 286
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 289
    invoke-static {v12}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 290
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 291
    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    .line 292
    aget-object v5, v3, v2

    .line 293
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    iget-object v5, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v16

    move v11, v2

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_11

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 299
    instance-of v3, v2, Lcom/android/vendorsettings/i;

    if-nez v3, :cond_5

    .line 297
    :cond_4
    :goto_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    .line 303
    :cond_5
    check-cast v2, Lcom/android/vendorsettings/i;

    .line 304
    invoke-virtual {v2}, Lcom/android/vendorsettings/i;->getAccount()Landroid/accounts/Account;

    move-result-object v17

    .line 305
    const/4 v5, 0x0

    .line 306
    const-wide/16 v6, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    invoke-virtual {v2}, Lcom/android/vendorsettings/i;->i()Ljava/util/ArrayList;

    move-result-object v9

    .line 309
    const/4 v3, 0x0

    .line 310
    if-eqz v9, :cond_c

    .line 311
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v9, v8

    move v8, v5

    move v5, v4

    move v4, v3

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    move-object/from16 v0, v17

    invoke-static {v0, v3, v12}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1, v3}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    .line 315
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1, v3}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    .line 317
    if-eqz v19, :cond_8

    if-eqz v20, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v10, v24, v26

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v10

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v10, v0, :cond_8

    const/4 v10, 0x1

    .line 322
    :goto_5
    if-eqz v10, :cond_6

    if-nez v22, :cond_6

    if-nez v21, :cond_6

    .line 323
    const/4 v5, 0x1

    .line 324
    const/4 v9, 0x1

    .line 326
    :cond_6
    or-int v4, v4, v22

    .line 327
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v22, v0

    cmp-long v10, v6, v22

    if-gez v10, :cond_7

    .line 328
    move-object/from16 v0, v19

    iget-wide v6, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 330
    :cond_7
    if-eqz v20, :cond_9

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_6
    add-int/2addr v3, v8

    move v8, v3

    .line 331
    goto :goto_4

    .line 317
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 330
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    move v3, v4

    move v4, v5

    move v5, v8

    move v8, v9

    .line 337
    :cond_b
    :goto_7
    if-eqz v4, :cond_d

    .line 338
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    goto/16 :goto_3

    .line 333
    :cond_c
    const-string v9, "AccountSettings"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 334
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "no syncadapters found for "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 339
    :cond_d
    if-nez v5, :cond_e

    .line 340
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    goto/16 :goto_3

    .line 341
    :cond_e
    if-lez v5, :cond_10

    .line 342
    if-eqz v3, :cond_f

    .line 343
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    goto/16 :goto_3

    .line 345
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    .line 346
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_4

    .line 347
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    .line 348
    invoke-virtual {v14, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0855

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/i;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 355
    :cond_10
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/i;->a(IZ)V

    goto/16 :goto_3

    .line 359
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->Ei:Landroid/widget/TextView;

    if-eqz v8, :cond_12

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 359
    :cond_12
    const/16 v2, 0x8

    goto :goto_8
.end method

.method private jn()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 392
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->EC:Landroid/accounts/Account;

    .line 394
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 395
    array-length v9, v8

    move v7, v5

    :goto_1
    if-ge v7, v9, :cond_6

    .line 396
    aget-object v2, v8, v7

    .line 398
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    :cond_1
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 399
    :cond_2
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 402
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->DQ:[Ljava/lang/String;

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 404
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->DQ:[Ljava/lang/String;

    array-length v3, v1

    move v0, v5

    :goto_3
    if-ge v0, v3, :cond_8

    aget-object v10, v1, v0

    .line 405
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v0, v6

    .line 412
    :goto_4
    if-eqz v0, :cond_1

    .line 413
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 418
    const-string v0, "com.xiaomi"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.xiaomi.unactivated"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    :cond_3
    new-instance v0, Lcom/android/vendorsettings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vendorsettings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 426
    :goto_5
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->EC:Landroid/accounts/Account;

    if-nez v0, :cond_1

    .line 428
    iput-object v2, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->EC:Landroid/accounts/Account;

    .line 430
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->invalidateOptionsMenu()V

    goto :goto_2

    .line 404
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 422
    :cond_5
    new-instance v0, Lcom/android/vendorsettings/i;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/i;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    goto :goto_5

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->EC:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    .line 435
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jo()V

    goto/16 :goto_0

    .line 438
    :cond_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->finish()V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    goto :goto_4

    :cond_9
    move v0, v6

    goto :goto_4
.end method

.method private jo()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->b(Landroid/preference/PreferenceScreen;)V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jn()V

    .line 385
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->ja()V

    .line 386
    return-void
.end method

.method public bridge synthetic aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected iZ()V
    .locals 3

    .prologue
    .line 588
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 590
    instance-of v2, v0, Lcom/android/vendorsettings/i;

    if-eqz v2, :cond_0

    .line 591
    check-cast v0, Lcom/android/vendorsettings/i;

    .line 592
    invoke-virtual {v0}, Lcom/android/vendorsettings/i;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->ac(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/i;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 595
    :cond_1
    return-void
.end method

.method protected ja()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jm()V

    .line 266
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 270
    :cond_0
    return-void
.end method

.method public bridge synthetic jb()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->jb()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 143
    const v2, 0x7f130004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->Ei:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->Ei:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->DQ:[Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    const-string v1, "account_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "account_label"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 112
    :cond_0
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v0, 0x1

    const v1, 0x7f0c0859

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020136

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    const/4 v0, 0x2

    const v1, 0x7f0c085a

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 209
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    const v0, 0x7f0400a0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 132
    invoke-static {p2, v1, v0, v2}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 133
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 224
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->ac(Z)V

    goto :goto_0

    .line 227
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->ac(Z)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->je()V

    .line 158
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    instance-of v1, p2, Lcom/android/vendorsettings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    instance-of v1, p2, Lcom/android/vendorsettings/i;

    if-eqz v1, :cond_0

    .line 180
    check-cast p2, Lcom/android/vendorsettings/i;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->a(Lcom/android/vendorsettings/i;)V

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 216
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    return-void

    :cond_0
    move v0, v2

    .line 214
    goto :goto_0

    :cond_1
    move v1, v2

    .line 216
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->jd()V

    .line 120
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jb()V

    .line 121
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jn()V

    .line 122
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;->jm()V

    .line 123
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0xb

    return v0
.end method

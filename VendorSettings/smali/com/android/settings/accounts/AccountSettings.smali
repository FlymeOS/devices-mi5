.class public Lcom/android/vendorsettings/accounts/AccountSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private DN:Landroid/util/SparseArray;

.field private DO:Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private DP:Landroid/preference/Preference;

.field private DQ:[Ljava/lang/String;

.field private DR:I

.field private aN:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Lcom/android/vendorsettings/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DO:Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DR:I

    .line 592
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    return-object v0
.end method

.method private a(Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 13

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->jj()[Ljava/lang/String;

    move-result-object v10

    .line 392
    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v10

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    array-length v0, v10

    if-ge v9, v0, :cond_4

    .line 396
    aget-object v12, v10, v9

    .line 398
    invoke-direct {p0, p1, v12}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 402
    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {p1, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {p1, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->af(Ljava/lang/String;)I

    move-result v5

    .line 408
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v12, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 410
    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 413
    :goto_2
    if-eqz v0, :cond_3

    .line 414
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 415
    const-string v0, "account"

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    new-instance v0, Lcom/android/vendorsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/vendorsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/vendorsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 424
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 425
    const-string v0, "account_type"

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "account_label"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 430
    new-instance v0, Lcom/android/vendorsettings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/vendorsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v12}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/vendorsettings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 438
    :cond_4
    new-instance v0, Lcom/android/vendorsettings/accounts/AccountSettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/accounts/AccountSettings$2;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 444
    return-object v11
.end method

.method private a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 7

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings$1;)V

    .line 277
    iput-object p1, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    .line 278
    if-eqz p2, :cond_2

    .line 279
    new-instance v0, Lcom/android/vendorsettings/h;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/h;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    .line 280
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0401b2

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 282
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0c03be

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 283
    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/accounts/AccountSettings;->c(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 284
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/vendorsettings/h;

    const v4, 0x7f0c03bf

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/vendorsettings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/h;->c(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings;->ak(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ec:Landroid/preference/Preference;

    .line 293
    :goto_0
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ed:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings;->aj(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Eb:Landroid/preference/Preference;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    return-void

    .line 289
    :cond_1
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0c03bd

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 290
    iget-object v0, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/vendorsettings/h;

    const v3, 0x7f0c03c0

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/h;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    iput-object p3, v2, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    goto :goto_1
.end method

.method private a(Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 364
    iget-object v1, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 365
    iget-object v1, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ed:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    iget-object v2, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 369
    :goto_0
    if-ge v1, v3, :cond_0

    .line 370
    iget-object v4, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Eb:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Eb:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ec:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ec:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_2
    return-void

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 379
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    const v1, 0x7f0c084b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 382
    iget-object v0, p1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private a(Lcom/android/vendorsettings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    iget v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DR:I

    if-nez v0, :cond_1

    move v1, v2

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 455
    if-nez v3, :cond_2

    .line 456
    const-string v0, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No sync authorities for account type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 459
    :goto_1
    iget v4, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DR:I

    if-ge v0, v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DQ:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 461
    goto :goto_0

    .line 459
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private aj(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 309
    const v1, 0x7f0c084a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 310
    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 311
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 313
    return-object v0
.end method

.method private ak(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 318
    const v1, 0x7f0c084c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 319
    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 320
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 322
    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->je()V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 327
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v1}, Lcom/android/vendorsettings/iC;->h(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 328
    if-nez v1, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    .line 331
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 332
    const v1, 0x7f0c0ac5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->jc()V

    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->jd()V

    return-void
.end method

.method private jc()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 341
    return-void
.end method

.method private jd()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 345
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ed:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->jd()V

    .line 345
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method

.method private je()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 355
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ed:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->je()V

    .line 355
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Settings screen for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method aB()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 237
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 239
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->c(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "AccountSettings"

    const-string v1, "We should not be showing settings for a managed profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->finish()V

    .line 271
    :cond_0
    return-void

    .line 246
    :cond_1
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 247
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 250
    invoke-direct {p0, v1, v3, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 264
    :goto_0
    if-ge v3, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    .line 266
    iget-object v4, v1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 267
    iget-object v4, v1, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ea:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;)V

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 253
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 254
    if-le v6, v1, :cond_5

    move v2, v1

    :goto_1
    move v4, v3

    .line 255
    :goto_2
    if-ge v4, v6, :cond_2

    .line 256
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->a(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 255
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    move v2, v3

    .line 254
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/android/vendorsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->aN:Landroid/os/UserManager;

    .line 135
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DP:Landroid/preference/Preference;

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DQ:[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DQ:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DR:I

    .line 140
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 191
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->je()V

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DO:Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 193
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->jc()V

    .line 194
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    .line 210
    :goto_0
    if-ge v3, v4, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    .line 212
    iget-object v5, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Eb:Landroid/preference/Preference;

    if-ne p1, v5, :cond_0

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v3, "android.intent.extra.USER"

    iget-object v0, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const-string v0, "authorities"

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DQ:[Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 232
    :goto_1
    return v0

    .line 219
    :cond_0
    iget-object v5, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ec:Landroid/preference/Preference;

    if-ne p1, v5, :cond_1

    .line 220
    iget-object v0, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 221
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/vendorsettings/accounts/AccountSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings$1;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;I)V

    invoke-static {v2, v0, v3}, Lcom/android/vendorsettings/users/UserDialogs;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v1

    .line 229
    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 232
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .prologue
    const v7, 0x7f1303d5

    const v3, 0x7f1303d4

    const v6, 0x7f1303d3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 153
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 158
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DN:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;

    iget-object v0, v0, Lcom/android/vendorsettings/accounts/AccountSettings$ProfileData;->Ee:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 164
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 169
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/vendorsettings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/vendorsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 174
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "AccountSettings"

    const-string v1, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->aB()V

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings;->DO:Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountSettings;->jd()V

    .line 186
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x8

    return v0
.end method

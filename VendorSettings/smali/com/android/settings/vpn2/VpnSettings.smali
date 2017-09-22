.class public Lcom/android/vendorsettings/vpn2/VpnSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final avP:Landroid/net/NetworkRequest;


# instance fields
.field private aR:Z

.field private avN:Landroid/net/ConnectivityManager;

.field protected avQ:Landroid/os/Handler;

.field private avR:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected final awc:Landroid/net/IConnectivityManager;

.field awd:Ljava/util/HashMap;

.field awe:Ljava/util/HashMap;

.field protected awf:Lcom/android/internal/net/LegacyVpnInfo;

.field awg:Landroid/preference/PreferenceCategory;

.field protected awh:Landroid/view/View$OnClickListener;

.field final dt:Landroid/security/KeyStore;

.field private sR:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avP:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awc:Landroid/net/IConnectivityManager;

    .line 98
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->dt:Landroid/security/KeyStore;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awd:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awe:Ljava/util/HashMap;

    .line 366
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/vpn2/VpnSettings$2;-><init>(Lcom/android/vendorsettings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awh:Landroid/view/View$OnClickListener;

    .line 392
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/vpn2/VpnSettings$3;-><init>(Lcom/android/vendorsettings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method protected static varargs a(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 7

    .prologue
    .line 449
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    :cond_0
    return-object v0

    .line 458
    :cond_1
    const-string v1, "VPN_"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 460
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static j(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vT()Ljava/util/List;
    .locals 11

    .prologue
    const/16 v10, 0x2f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 417
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 418
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 419
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 424
    new-array v1, v4, [I

    aput v10, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_3

    .line 426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 427
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 428
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 435
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v9, v10, :cond_4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_3
    move v2, v1

    .line 439
    goto :goto_2

    .line 440
    :cond_2
    if-eqz v2, :cond_1

    .line 441
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    :cond_3
    return-object v5

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 410
    const v0, 0x7f0c09b4

    return v0
.end method

.method protected d(Lcom/android/internal/net/VpnProfile;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/android/vendorsettings/vpn2/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awg:Landroid/preference/PreferenceCategory;

    .line 241
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->dt:Landroid/security/KeyStore;

    new-array v2, v8, [I

    invoke-static {v0, v2}, Lcom/android/vendorsettings/vpn2/VpnSettings;->a(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 248
    new-instance v3, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awh:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 250
    invoke-virtual {v3, p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    new-instance v4, Lcom/android/vendorsettings/vpn2/VpnSettings$1;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/vpn2/VpnSettings$1;-><init>(Lcom/android/vendorsettings/vpn2/VpnSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->c(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awd:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->vT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 268
    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/vendorsettings/vpn2/VpnSettings;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    new-instance v4, Lcom/android/vendorsettings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/android/vendorsettings/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 271
    invoke-virtual {v4, p0}, Lcom/android/vendorsettings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 276
    :cond_1
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awd:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 289
    if-eqz v0, :cond_3

    .line 290
    iget v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setState(I)V

    .line 291
    iput-object v1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 297
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awc:Landroid/net/IConnectivityManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_4

    .line 299
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/vpn2/VpnSettings;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awe:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 301
    if-eqz v0, :cond_4

    .line 302
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 308
    :catch_0
    move-exception v0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->sR:Landroid/os/UserManager;

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->sR:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iput-boolean v2, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->aR:Z

    .line 136
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avN:Landroid/net/ConnectivityManager;

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 144
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 150
    const v0, 0x7f140009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 170
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    :goto_1
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awd:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_1

    .line 174
    :cond_0
    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    invoke-static {p0, v3, v2, v0}, Lcom/android/vendorsettings/vpn2/ConfigDialogFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    move v0, v2

    .line 176
    goto :goto_0

    .line 179
    :pswitch_1
    invoke-static {p0}, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;)V

    move v0, v2

    .line 180
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f1303ee
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->aR:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avN:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 226
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    :cond_1
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 318
    instance-of v2, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v2, :cond_1

    .line 319
    check-cast p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->vH()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 320
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v3, v5, :cond_0

    .line 323
    :try_start_0
    iget-object v3, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->awf:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v3

    .line 329
    :cond_0
    invoke-static {p0, v2, v1, v0}, Lcom/android/vendorsettings/vpn2/ConfigDialogFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_0

    .line 331
    :cond_1
    instance-of v2, p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v2, :cond_4

    .line 332
    check-cast p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 333
    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getState()I

    move-result v2

    if-ne v2, v5, :cond_3

    move v2, v0

    .line 335
    :goto_1
    if-nez v2, :cond_2

    .line 337
    :try_start_1
    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 340
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 341
    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 342
    if-eqz v5, :cond_2

    .line 343
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 346
    :catch_1
    move-exception v3

    .line 352
    :cond_2
    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->vD()Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 353
    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v1, v2}, Lcom/android/vendorsettings/vpn2/AppDialogFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 333
    goto :goto_1

    :cond_4
    move v0, v1

    .line 356
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 190
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 194
    if-eqz v0, :cond_0

    .line 195
    const v1, 0x7f0c0651

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-static {p0}, Lcom/android/vendorsettings/vpn2/LockdownConfigFragment;->a(Lcom/android/vendorsettings/vpn2/VpnSettings;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avN:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/vendorsettings/vpn2/VpnSettings;->avP:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/VpnSettings;->avQ:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x64

    return v0
.end method

.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private jc:Landroid/app/backup/IBackupManager;

.field private mEnabled:Z

.field private vQ:Landroid/preference/PreferenceScreen;

.field private vR:Landroid/preference/CheckBoxPreference;

.field private vS:Landroid/preference/PreferenceScreen;

.field private vT:Lmiui/preference/ValuePreference;

.field private vU:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/settings/gi;

    invoke-direct {v0}, Lcom/android/settings/gi;-><init>()V

    sput-object v0, Lcom/android/settings/PrivacySettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/android/settings/gh;

    invoke-direct {v0, p0}, Lcom/android/settings/gh;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->vU:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 227
    return-void
.end method

.method private N(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vS:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vS:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0805

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/PrivacySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vR:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 268
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 273
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.settings"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 276
    :cond_0
    if-eqz v1, :cond_1

    .line 277
    const-string v2, "backup_category"

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 281
    :cond_2
    const-string v2, "backup_inactive"

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 284
    :cond_4
    const-string v0, "backup_data"

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v0, "auto_restore"

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v0, "configure_account"

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    const-string v0, "factory_reset"

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_6
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    const-string v0, "network_reset"

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_7
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v0, "PrivacySettings"

    const-string v2, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->a(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private gy()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 175
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v3}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 177
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v3}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->vQ:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    const v3, 0x7f0c06b8

    :goto_0
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :goto_1
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->vR:Landroid/preference/CheckBoxPreference;

    const-string v3, "backup_auto_restore"

    invoke-static {v6, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->vR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    move v2, v4

    .line 192
    :goto_3
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->vS:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->vS:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->N(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "local_auto_backup"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 200
    :goto_4
    if-eqz v4, :cond_4

    .line 201
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vT:Lmiui/preference/ValuePreference;

    const v1, 0x7f0c1011

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 206
    :goto_5
    return-void

    .line 179
    :cond_0
    const v3, 0x7f0c06b9

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    move-object v1, v0

    move v2, v5

    .line 184
    :goto_6
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->vQ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    move v3, v5

    .line 187
    goto :goto_2

    :cond_2
    move v2, v5

    .line 191
    goto :goto_3

    :cond_3
    move v4, v5

    .line 197
    goto :goto_4

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vT:Lmiui/preference/ValuePreference;

    const v1, 0x7f0c1012

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto :goto_5

    .line 182
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_6
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f0c09b9

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 101
    :cond_0
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 103
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->jc:Landroid/app/backup/IBackupManager;

    .line 106
    const-string v0, "backup_data"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->vQ:Landroid/preference/PreferenceScreen;

    .line 110
    const-string v0, "auto_restore"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->vR:Landroid/preference/CheckBoxPreference;

    .line 111
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vR:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->vU:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v0, "configure_account"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->vS:Landroid/preference/PreferenceScreen;

    .line 115
    const-string v0, "local_auto_backup"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->vT:Lmiui/preference/ValuePreference;

    .line 116
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->vT:Lmiui/preference/ValuePreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 118
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/PrivacySettings;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 120
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 122
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->gy()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->gy()V

    .line 139
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x51

    return v0
.end method

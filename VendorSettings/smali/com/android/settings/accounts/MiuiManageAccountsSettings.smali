.class public Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/vendorsettings/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/cs;


# instance fields
.field private DQ:[Ljava/lang/String;

.field private EI:Landroid/preference/CheckBoxPreference;

.field private EJ:Landroid/preference/CheckBoxPreference;

.field private EK:Lcom/android/vendorsettings/dV;

.field private EL:Z

.field private Ei:Landroid/widget/TextView;

.field private cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;-><init>()V

    .line 331
    return-void
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EK:Lcom/android/vendorsettings/dV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dV;->eL()V

    .line 277
    return-void
.end method

.method private ad(Z)V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.SYNC_ON_WIFI_ONLY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v1, "extra_sync_on_wifi_only"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private ae(Z)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v2, "sms"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.cloudservice.mms.UPLOAD_PHONE_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v3, "extra_upload_opt"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v0, "com.miui.cloudservice"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private af(Z)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 174
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 175
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 177
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 178
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 179
    array-length v7, v3

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v8, v3, v2

    .line 180
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 181
    array-length v9, v4

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_1

    aget-object v10, v4, v0

    .line 182
    iget-object v11, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v12, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 184
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncAdapterType;

    .line 188
    if-eqz p1, :cond_2

    .line 189
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v0, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 192
    :cond_2
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 196
    :cond_4
    return-void
.end method

.method private ag(Z)V
    .locals 1

    .prologue
    .line 319
    if-eqz p1, :cond_0

    const-string v0, "account_settings_wifi_only_enabled"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    .line 321
    return-void

    .line 319
    :cond_0
    const-string v0, "account_settings_wifi_only_disabled"

    goto :goto_0
.end method

.method private b(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EK:Lcom/android/vendorsettings/dV;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dV;->stopAnimation()V

    .line 281
    return-void
.end method

.method private js()Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 253
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 255
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 256
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 258
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 259
    array-length v6, v3

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v3, v2

    .line 260
    array-length v8, v4

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v9, v4, v0

    .line 261
    iget-object v10, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 265
    if-eqz v5, :cond_0

    iget-object v9, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x1

    .line 272
    :goto_2
    return v0

    .line 260
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 272
    goto :goto_2
.end method

.method private jt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {v1, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method private ju()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    :cond_0
    invoke-static {v3, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    :cond_1
    return-void
.end method

.method private jv()V
    .locals 1

    .prologue
    .line 315
    const-string v0, "account_settings_opened"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private trackEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v2, "eventId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f0400a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->a(Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ja()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 217
    :goto_1
    iget-boolean v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    if-eq v1, v0, :cond_1

    .line 218
    iput-boolean v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->invalidateOptionsMenu()V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic jb()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->jb()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 108
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 110
    const v4, 0x7f130004

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->Ei:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->Ei:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EI:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EJ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "sync_on_wifi_only"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    :cond_0
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->DQ:[Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->jb()V

    .line 121
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings$SyncDrawable;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings$SyncDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EK:Lcom/android/vendorsettings/dV;

    .line 83
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 86
    const-string v0, "sync_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EI:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EJ:Landroid/preference/CheckBoxPreference;

    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EJ:Landroid/preference/CheckBoxPreference;

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->jv()V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x1

    const v1, 0x7f0c0859

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EK:Lcom/android/vendorsettings/dV;

    invoke-virtual {v1}, Lcom/android/vendorsettings/dV;->eJ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 227
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 229
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 286
    if-ne v1, v0, :cond_1

    .line 287
    iget-boolean v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    if-eqz v1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->jt()V

    .line 294
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->ju()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    const-string v0, "sync_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 127
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 128
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->af(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->ja()V

    .line 130
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->ae(Z)V

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    const-string v0, "wifi_only"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 134
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sync_on_wifi_only"

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->ad(Z)V

    .line 137
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->ag(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const v3, 0x7f0c0859

    const/4 v2, 0x1

    .line 233
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->js()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    iget-boolean v1, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->EL:Z

    if-eqz v1, :cond_1

    .line 238
    const v1, 0x7f0c0856

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 239
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->a(Landroid/view/MenuItem;)V

    .line 249
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 250
    return-void

    .line 241
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 242
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->b(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 245
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 246
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public showDialog(I)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/vendorsettings/cs;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 205
    return-void
.end method

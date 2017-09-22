.class public Lcom/android/settings/accounts/MiuiAccountListSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAccountListSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private EF:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

.field private ct:Ljava/util/List;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private te:Lcom/android/settings/accounts/AuthenticatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/MiuiAccountListSettings;)Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->EF:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    return-object v0
.end method

.method public static ak(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 209
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 210
    aget-object v4, v2, v1

    .line 211
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    const/4 v0, 0x1

    .line 215
    :cond_0
    return v0

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/accounts/MiuiAccountListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->ct:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f0400a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public c(Landroid/preference/PreferenceActivity$Header;)V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->startActivity(Landroid/content/Intent;)V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accounts/MiuiAccountListSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/settings/accounts/MiuiAccountListSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    :cond_0
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->invalidateHeaders()V

    .line 249
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->ct:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->ct:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->EF:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 87
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->EF:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v1, Lcom/android/settings/accounts/MiuiAccountListSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$1;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$2;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 73
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    .line 74
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p1, v2, v0, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 75
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->al(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v4, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 77
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 13

    .prologue
    const v12, 0x7f0c0848

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->jj()[Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    .line 143
    const-string v0, "com.xiaomi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.unactivated"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v8, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_0

    .line 154
    invoke-static {v7}, Lcom/android/settings/accounts/MiuiAccountListSettings;->ak(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 159
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->te:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 161
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 162
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 163
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_2

    .line 164
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 167
    :cond_2
    if-eqz v0, :cond_4

    .line 168
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 169
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 170
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 172
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v2

    .line 159
    goto :goto_2

    .line 180
    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 181
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 182
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 184
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_5
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$3;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 201
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 204
    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    const v0, 0x7f0c0d52

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 234
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 239
    const-class v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f0c0d52

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accounts/MiuiAccountListSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->ct:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->ct:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->onBuildHeaders(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->EF:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

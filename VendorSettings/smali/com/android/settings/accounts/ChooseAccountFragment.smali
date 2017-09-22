.class public Lcom/android/vendorsettings/accounts/ChooseAccountFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ChooseAccountFragment.java"


# instance fields
.field private DQ:[Ljava/lang/String;

.field private Ep:Ljava/util/Map;

.field private Eq:[Landroid/accounts/AuthenticatorDescription;

.field private Et:Ljava/util/HashMap;

.field private Ex:Landroid/preference/PreferenceGroup;

.field private final Ey:Ljava/util/ArrayList;

.field public Ez:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/ChooseAccountFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->c(ILjava/lang/String;)V

    return-void
.end method

.method private aj(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->c(ILjava/lang/String;)V

    .line 306
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 309
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/accounts/MiuiChooseAccountActivity;

    if-nez v0, :cond_1

    .line 310
    if-ne p1, v1, :cond_0

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x0

    .line 317
    if-ne p1, v1, :cond_2

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_0
.end method

.method private iZ()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 145
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 146
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->ac(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 153
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    if-eqz v6, :cond_f

    move v2, v1

    .line 155
    :goto_1
    iget-object v7, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_e

    .line 156
    iget-object v7, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 162
    :goto_2
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ez:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ez:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 167
    :cond_0
    const-string v6, "com.xiaomi.unactivated"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    .line 185
    :cond_1
    :goto_3
    if-eqz v2, :cond_7

    .line 186
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;

    invoke-direct {v6, v5, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    :cond_4
    const-string v6, "com.xiaomi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 173
    const-string v6, "com.xiaomi"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 175
    const-string v7, "com.xiaomi.unactivated"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 178
    array-length v6, v6

    if-nez v6, :cond_5

    array-length v2, v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_3

    .line 180
    :cond_6
    invoke-static {v4}, Lcom/android/vendorsettings/accounts/MiuiAccountListSettings;->ak(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .line 181
    goto :goto_3

    .line 188
    :cond_7
    const-string v2, "ChooseAccountFragment"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "ChooseAccountFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped pref "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no authority we need"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->aj(Ljava/lang/String;)V

    .line 217
    :cond_9
    :goto_5
    return-void

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ex:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;

    .line 201
    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 202
    new-instance v3, Lcom/android/vendorsettings/accounts/ProviderPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;->c(Lcom/android/vendorsettings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/android/vendorsettings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ex:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 207
    :cond_b
    const-string v0, "ChooseAccountFragment"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    iget-object v3, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_c

    aget-object v5, v3, v0

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 213
    :cond_c
    const-string v0, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No providers found for authorities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->c(ILjava/lang/String;)V

    goto :goto_5

    :cond_e
    move v2, v1

    goto/16 :goto_2

    :cond_f
    move v2, v3

    goto/16 :goto_2
.end method

.method private jb()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    .line 137
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->iZ()V

    .line 141
    return-void
.end method

.method private jl()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    const-string v2, "account_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const v0, 0x7f040031

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->jl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const v0, 0x7f13000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    new-instance v2, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment$1;-><init>(Lcom/android/vendorsettings/accounts/ChooseAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    return-object v1
.end method

.method public aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 221
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    .line 222
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 224
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 225
    aget-object v4, v2, v1

    .line 226
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 227
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v5, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

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

    .line 235
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Et:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 251
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    :try_start_1
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 261
    :goto_1
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 264
    :goto_2
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :catch_2
    move-exception v1

    goto :goto_2

    .line 259
    :catch_3
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected ac(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 280
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v0, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 287
    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    .line 286
    const-string v0, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->DQ:[Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ez:Ljava/util/HashSet;

    .line 123
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 124
    iget-object v4, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ez:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->Ex:Landroid/preference/PreferenceGroup;

    .line 128
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->jb()V

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/accounts/MiuiChooseAccountActivity;

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->setThemeRes(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 294
    instance-of v0, p2, Lcom/android/vendorsettings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 295
    check-cast p2, Lcom/android/vendorsettings/accounts/ProviderPreference;

    .line 296
    const-string v0, "ChooseAccountFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "ChooseAccountFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to add account of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountFragment;->aj(Ljava/lang/String;)V

    .line 301
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

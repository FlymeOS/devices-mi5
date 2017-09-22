.class public Lcom/android/vendorsettings/accounts/ChooseAccountActivity;
.super Lcom/android/vendorsettings/dA;
.source "ChooseAccountActivity.java"


# instance fields
.field private BW:Landroid/os/UserHandle;

.field private DQ:[Ljava/lang/String;

.field private Ep:Ljava/util/Map;

.field private Eq:[Landroid/accounts/AuthenticatorDescription;

.field private Et:Ljava/util/HashMap;

.field private Ex:Landroid/preference/PreferenceGroup;

.field private final Ey:Ljava/util/ArrayList;

.field public Ez:Ljava/util/HashSet;

.field private aN:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/vendorsettings/dA;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    .line 74
    return-void
.end method

.method private aj(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->finish()V

    .line 280
    return-void
.end method

.method private iZ()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 136
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->ac(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 144
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    if-eqz v6, :cond_b

    move v2, v1

    .line 146
    :goto_1
    iget-object v7, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_a

    .line 147
    iget-object v7, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v3

    .line 153
    :goto_2
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ez:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ez:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 157
    :cond_0
    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-direct {v6, v5, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_3
    const-string v2, "ChooseAccountActivity"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "ChooseAccountActivity"

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

    goto :goto_3

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->aj(Ljava/lang/String;)V

    .line 190
    :cond_5
    :goto_4
    return-void

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ex:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 173
    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    new-instance v3, Lcom/android/vendorsettings/accounts/ProviderPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;->c(Lcom/android/vendorsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/vendorsettings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ex:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 179
    :cond_7
    const-string v0, "ChooseAccountActivity"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_6
    if-ge v0, v4, :cond_8

    aget-object v5, v3, v0

    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 185
    :cond_8
    const-string v0, "ChooseAccountActivity"

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

    .line 187
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4

    :cond_a
    move v2, v1

    goto/16 :goto_2

    :cond_b
    move v2, v3

    goto/16 :goto_2
.end method

.method private jb()V
    .locals 4

    .prologue
    .line 126
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Eq:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->iZ()V

    .line 132
    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 197
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 198
    aget-object v4, v2, v1

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v5, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const-string v5, "ChooseAccountActivity"

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

    .line 208
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Et:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 225
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 226
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 234
    :goto_0
    if-eqz v0, :cond_1

    .line 237
    :goto_1
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 232
    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon resource for account type "

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

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method protected ac(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ep:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 251
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v0, "ChooseAccountActivity"

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

    .line 257
    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    const-string v0, "ChooseAccountActivity"

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/vendorsettings/dA;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 103
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->DQ:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ez:Ljava/util/HashSet;

    .line 110
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 111
    iget-object v4, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ez:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->Ex:Landroid/preference/PreferenceGroup;

    .line 115
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->aN:Landroid/os/UserManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->aN:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/vendorsettings/iC;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->BW:Landroid/os/UserHandle;

    .line 118
    invoke-direct {p0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->jb()V

    .line 119
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 264
    instance-of v0, p2, Lcom/android/vendorsettings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 265
    check-cast p2, Lcom/android/vendorsettings/accounts/ProviderPreference;

    .line 266
    const-string v0, "ChooseAccountActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "ChooseAccountActivity"

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

    .line 269
    :cond_0
    invoke-virtual {p2}, Lcom/android/vendorsettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accounts/ChooseAccountActivity;->aj(Ljava/lang/String;)V

    .line 271
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0xa

    return v0
.end method
